Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Base"
  s.version               = "2.8.1.1"
  s.summary               = "Monetize your mobile applications easy with Clever Ads Solutions iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/2.8.1/CleverAdsSolutionsBase.tar.gz"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions        = ['5.0']
  s.cocoapods_version     = '>= 1.10.0'

  s.vendored_frameworks = 'CASBase/CleverAdsSolutions.xcframework'

end
