Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Base"
  s.version               = "3.9.10"
  s.summary               = "Monetize your mobile applications easy with CAS.AI iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions LTD" => "support@cas.ai" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsBase.tar.gz"  }
  s.platform              = :ios, '13.0'
  s.swift_version         = '5.0'
  s.swift_versions        = '5.0'
  s.cocoapods_version     = '>= 1.13.0'

  s.frameworks = 'UIKit', 'Network', 'WebKit', 'AVFoundation', 'Foundation'
  s.weak_frameworks = 'AdSupport', 'AppTrackingTransparency'
  s.vendored_frameworks = 'libs/CleverAdsSolutions.xcframework'
  s.resources = 'libs/CASBaseResources.bundle'
end
