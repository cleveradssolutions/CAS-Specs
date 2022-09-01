import os
import sys
import shutil
import json

rootDir = os.path.dirname(os.path.abspath(__file__))

if "--help" in sys.argv:
    print("Script to release podspecs from Source directory.")
    print("Use arguments for:")
    print("\t-version <version string> to set version for podspecs")
    print("\t-filter <part of spec name> to filter specs by name")
    exit()

setVersion = ""
if "-version" in sys.argv:
    argIndex = sys.argv.index("-version")
    if argIndex > 0 and argIndex + 1 < len(sys.argv):
        setVersion = sys.argv[argIndex + 1]

filter = ""
if "-filter" in sys.argv:
    argIndex = sys.argv.index("-filter")
    if argIndex > 0 and argIndex + 1 < len(sys.argv):
        filter = sys.argv[argIndex + 1]

for spec in os.listdir(rootDir + "/Source"):
    if spec.startswith("."):
        continue
    specSourcePath = rootDir + "/Source/" + spec

    if filter and filter not in spec:
        continue

    specVersion = ""
    specFileContent = ""
    specName = os.path.splitext(spec)[0]
    with open(specSourcePath, 'r') as specFile:
        for line in specFile:
            if not specVersion and 's.version' in line:
                specVersion = line[line.find('= "')+len('= "'):line.rfind('"')]
                if not setVersion:
                    break
                if specVersion != setVersion:
                    line = line.replace(specVersion, setVersion)
                    print("Version " + specName + "changed " + specVersion + " => " + setVersion)
                    specVersion = setVersion
            specFileContent += line

    if not specVersion:
        print("Update failed " + specName + " version line not found.")
        continue

    if setVersion:
        with open(specSourcePath, 'w') as specFile:
            specFile.write(specFileContent)

    specDestination = rootDir + "/Specs/" + specName + "/" + specVersion
    if not os.path.exists(specDestination):
        os.makedirs(specDestination)
    specDestination += "/" + spec
    print("Update " + specName + " version " + specVersion + "\n\tTo: " + specDestination)
    shutil.copyfile(specSourcePath, specDestination)

    if 'CleverAdsSolutions-Base' == specName and not '-rc' in specVersion: 
        shiledInfo = {
            "schemaVersion": 1,
            "label": "Cocoapods",
            "message": specVersion,
            "color": "blue"
        }

        with open(rootDir + "/CAS.json", "w") as shiledFile:
            json.dump(shiledInfo, shiledFile)