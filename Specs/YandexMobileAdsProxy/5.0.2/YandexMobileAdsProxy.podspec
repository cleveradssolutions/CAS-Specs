Pod::Spec.new do |s|
  s.name                  = "YandexMobileAdsProxy"
  s.version               = "5.0.2"
  s.summary               = "CAS Proxy of https://cocoapods.org/pods/YandexMobileAds"
  s.homepage              = "https://tech.yandex.ru/mobile-ads/"
  s.license               = "PROPRIETARY"
  s.author                = { "Yandex LLC" => "mobads@yandex-team.ru" }
  s.source                = { :http => "https://psdata.psvgamestudio.com/Proxy/YandexAdsProxy_#{s.version}.tar.gz"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.libraries = 'c++',
                'z',
                'sqlite3',
                'xml2'
  
  s.frameworks = 'UIKit',
                  'Foundation',
                  'CoreTelephony',
                  'CoreLocation',
                  'CoreGraphics',
                  'AdSupport',
                  'StoreKit',
                  'SystemConfiguration',
                  'QuartzCore',
                  'AVFoundation',
                  'CoreImage',
                  'CoreMedia'
  s.weak_frameworks = 'WebKit'
  s.preserve_paths      = 'YandexMobileAds.xcframework',
                          'YandexMobileMetrica.xcframework'
  s.source_files        = 'YandexMobileAds.xcframework/**/*.h',
                          'YandexMobileMetrica.xcframework/**/YandexMobileMetrica.framework/Versions/A/Headers/*.h'
  s.public_header_files = 'YandexMobileAds.xcframework/**/*.h',
                          'YandexMobileMetrica.xcframework/**/YandexMobileMetrica.framework/Versions/A/Headers/*.h'
  s.vendored_frameworks = 'YandexMobileAds.xcframework',
                          'YandexMobileMetrica.xcframework'
  s.resources           = 'YandexMobileAds.xcframework/YandexMobileAdsBundle.bundle'
end
