Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Exchange"
  s.version               = "4.0.1-rc5"
  s.summary               = "Monetize your mobile applications easy with CAS.AI iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions LTD" => "support@cas.ai" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsExchange.tar.gz"  }
  s.platform              = :ios, '13.0'
  s.swift_version         = '5.0'
  s.swift_versions        = '5.0'
  s.requires_arc          = true

  s.frameworks = [ 'UIKit', 
                   'Foundation', 
                   'MapKit', 
                   'SafariServices', 
                   'SystemConfiguration',
                   'AVFoundation',
                   'CoreGraphics',
                   'CoreLocation',
                   'CoreTelephony',
                   'CoreMedia',
                   'QuartzCore'
                 ]
  s.weak_frameworks = [ 'AdSupport', 'StoreKit', 'WebKit' ]
  s.vendored_frameworks = 'libs/CASExchange.xcframework'
  s.dependency 'CleverAdsSolutions-Base'
end
