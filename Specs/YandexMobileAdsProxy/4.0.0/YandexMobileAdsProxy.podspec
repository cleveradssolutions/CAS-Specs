Pod::Spec.new do |s|
  s.name                  = "YandexMobileAdsProxy"
  s.version               = "4.0.0"
  s.summary               = "CAS Proxy of https://cocoapods.org/pods/YandexMobileAds"
  s.homepage              = "https://tech.yandex.ru/mobile-ads/"
  s.license               = "PROPRIETARY"
  s.author                = { "Yandex LLC" => "mobads@yandex-team.ru" }
  s.source                = { :http => "https://dl.bintray.com/cleveradssolutions/CAS-Proxy/YandexAdsProxy_4.0.0.tar.gz"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.libraries = 'xml2'

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
  s.preserve_paths      = 'YandexMobileAds.framework',
                          'YandexMobileMetrica.framework',
                          'YandexMobileMetricaCrashes.framework'
  s.source_files        = 'YandexMobileAds.framework/Versions/A/Headers/*.h',
                          'YandexMobileMetrica.framework/Versions/A/Headers/*.h',
                          'YandexMobileMetricaCrashes.framework/Versions/A/Headers/*.h'
  s.public_header_files = 'YandexMobileAds.framework/Versions/A/Headers/*.h',
                          'YandexMobileMetrica.framework/Versions/A/Headers/*.h',
                          'YandexMobileMetricaCrashes.framework/Versions/A/Headers/*.h'
  s.source_files        = 'YandexMobileMetrica.framework/Versions/A/Headers/*.h',
                          'YandexMobileMetricaCrashes.framework/Versions/A/Headers/*.h'
  s.resources           = 'YandexMobileMetrica.framework/YandexMobileAdsBundle.bundle'
  s.vendored_frameworks = 'YandexMobileAds.framework',
                          'YandexMobileMetrica.framework',
                          'YandexMobileMetricaCrashes.framework'
end
