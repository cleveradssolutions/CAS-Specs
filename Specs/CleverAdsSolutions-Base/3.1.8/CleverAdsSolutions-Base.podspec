Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Base"
  s.version               = "3.1.8"
  s.summary               = "Monetize your mobile applications easy with Clever Ads Solutions iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsBase.tar.gz"  }
  s.platform              = :ios, '11.0'
  s.swift_versions        = ['5.0']
  s.cocoapods_version     = '>= 1.10.0'

  s.frameworks = 'UIKit', 'CoreTelephony'
  s.weak_frameworks = 'AppTrackingTransparency'
  s.vendored_frameworks = 'libs/CleverAdsSolutions.xcframework'
  s.resources = 'libs/CASBaseResources.bundle'
end
