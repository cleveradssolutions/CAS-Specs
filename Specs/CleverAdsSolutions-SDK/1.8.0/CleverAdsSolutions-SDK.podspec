Pod::Spec.new do |s|
  s.name                = "CleverAdsSolutions-SDK"
  s.version             = "1.8.0"
  s.summary             = "Clever Ads Solutions iOS framework"
  s.homepage            = "https://cleveradssolutions.com"
  s.license             = { :type => "Commercial", :file => "LICENSE.md" }
  s.author              = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source              = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutions.zip" }
  s.platform            = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions      = ['4.2', '5.0']
  s.requires_arc        = true
  s.static_framework    = true
  s.xcconfig            = { 'OTHER_LDFLAGS' => '-ObjC', 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/**'}
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64'}
  s.default_subspec  = 'Main'

  s.subspec 'Base' do |b|
    b.vendored_frameworks = 'CASBase/CleverAdsSolutions.framework'
  end

  s.subspec 'General' do |b|
    b.source_files = 'CASMediation/CASAdColonyProvider.swift',
                     'CASMediation/CASAdmobProvider.swift',
                     'CASMediation/CASAppLovinProvider.swift',
                     'CASMediation/CASUnityAdsProvider.swift',
                     'CASMediation/CASInMobiProvider.swift',
                     'CASMediation/IronSource/CASIronSourceBridge.h',
                     'CASMediation/IronSource/CASIronSourceProvider.swift',
                     'CASMediation/Vungle/CASVungleBridge.h',
                     'CASMediation/Vungle/CASVungleProvider.swift'

    b.private_header_files = 'CASMediation/IronSource/CASIronSourceBridge.h',
                             'CASMediation/Vungle/CASVungleBridge.h'

    b.preserve_paths = 'CASMediation/IronSource/module.modulemap',
                       'CASMediation/Vungle/module.modulemap'

    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'Google-Mobile-Ads-SDK', '7.67.0'
    b.dependency 'VungleSDK-iOS', '~> 6.8.1'
    b.dependency 'IronSourceSDK', '~> 7.0.4.0'
    b.dependency 'AdColony', '~> 4.4.1.1'
    b.dependency 'AppLovinSDK', '~> 6.14.9'
    b.dependency 'InMobiSDK/Core', '~> 9.1.1'
    b.dependency 'UnityAds', '~> 3.5.1'
  end

  s.subspec 'Kidoz' do |b|
    b.source_files = 'CASMediation/Kidoz/CASKidozBridge.h',
                     'CASMediation/Kidoz/CASKidozBridge.m',
                     'CASMediation/Kidoz/CASKidozProvider.swift',
                     'CASMediation/Kidoz/KidozSDK.h'
    b.private_header_files = 'CASMediation/Kidoz/CASKidozBridge.h',
                             'CASMediation/Kidoz/KidozSDK.h'
    b.preserve_paths = 'CASMediation/Kidoz/module.modulemap'
    b.vendored_libraries = 'libs/libKidozSDK.a' # Kidoz version 1.3.6
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
  end

  s.subspec 'SuperAwesome' do |b|
    b.source_files = 'CASMediation/CASSuperAwesomeProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'SuperAwesome', '~> 7.2.18'
  end

  s.subspec 'FBAudienceNetwork' do |b|
    b.source_files = 'CASMediation/CASFacebookProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'FBAudienceNetwork', '>= 6.2.0'
  end

  s.subspec 'YandexAds' do |b|
    b.source_files = 'CASMediation/CASYandexProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'YandexMobileAds', '>= 3.1.1'
  end

  s.subspec 'Verizon' do |b|
    b.source_files = 'CASMediation/CASVerizonProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'Verizon-Ads-StandardEdition', '~> 1.8.1'
  end

  s.subspec 'MyTarget' do |b|
    b.source_files = 'CASMediation/CASMyTargetProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'myTargetSDK', '~> 5.9.6'
  end

  s.subspec 'MobFox' do |b|
    b.source_files = 'CASMediation/CASMobFoxProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'MFXSDK_Native', '~> 4.2.2'
  end

  s.subspec 'AmazonAd' do |b|
    b.source_files = 'CASMediation/Amazon/CASAmazonProvider.swift',
                     'CASMediation/Amazon/CASAmazonBridge.h'
    b.private_header_files = 'CASMediation/Amazon/CASAmazonBridge.h'
    b.preserve_paths = 'CASMediation/Amazon/module.modulemap'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'AmazonAd', '>= 3.1.0'
  end

  s.subspec 'Chartboost' do |b|
    b.source_files = 'CASMediation/Chartboost/CASChartboostProvider.swift',
                     'CASMediation/Chartboost/CASChartboostBridge.h'
    b.private_header_files = 'CASMediation/Chartboost/CASChartboostBridge.h'
    b.preserve_paths = 'CASMediation/Chartboost/module.modulemap'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'ChartboostSDK', '>= 8.4.0'
  end

  s.subspec 'StartApp' do |b|
    b.source_files = 'CASMediation/StartApp/CASStartAppProvider.swift',
                     'CASMediation/StartApp/CASStartAppBridge.h'
    b.private_header_files = 'CASMediation/StartApp/CASStartAppBridge.h'
    b.preserve_paths = 'CASMediation/StartApp/module.modulemap'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'StartAppSDK', '>= 4.5.0'
  end

  s.subspec 'Main' do |b|
    b.dependency 'CleverAdsSolutions-SDK/General', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/FBAudienceNetwork', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/StartApp', "#{s.version}"
  end
end
