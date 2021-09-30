Pod::Spec.new do |s|
  s.name                = "CleverAdsSolutions-SDK"
  s.version             = "2.4.3"
  s.summary             = "Monetize your mobile applications with Clever Ads Solutions iOS framework"
  s.homepage            = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license             = { :type => "Commercial", :file => "LICENSE.md" }
  s.author              = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source              = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutions.tar.gz" }
  s.platform            = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions      = ['4.2', '5.0']
  s.requires_arc        = true
  s.static_framework    = true
  s.xcconfig            = { 'OTHER_LDFLAGS' => '-ObjC', 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/**'}
  s.default_subspec  = 'Main'
  s.cocoapods_version = '>= 1.10.0'

  s.subspec 'Base' do |b|
    b.vendored_frameworks = 'CASBase/CleverAdsSolutions.xcframework'
  end

  s.subspec 'GoogleAds' do |b|
    b.source_files = 'CASMediation/CASAdMobProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'Google-Mobile-Ads-SDK', '~> 8.10'
  end

  s.subspec 'UnityAds' do |b|
    b.source_files = 'CASMediation/CASUnityAdsProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'UnityAds', '~> 3.7.5'
  end

  s.subspec 'AppLovin' do |b|
    b.source_files = 'CASMediation/CASAppLovinProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'AppLovinSDK', '~> 10.3.5'
  end

  s.subspec 'InMobi' do |b|
    b.source_files = 'CASMediation/CASInMobiProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'InMobiSDK/Core', '~> 9.2.1'
  end

  s.subspec 'AdColony' do |b|
    b.source_files = 'CASMediation/CASAdColonyProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'AdColony', '~> 4.7.0'
  end

  s.subspec 'SuperAwesome' do |b|
    b.source_files = 'CASMediation/CASSuperAwesomeProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'SuperAwesome', '8.1.1'
  end

  s.subspec 'FBAudienceNetwork' do |b|
    b.source_files = 'CASMediation/CASFacebookProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'FBAudienceNetwork', '~> 6.6.0'
  end

  s.subspec 'YandexAds' do |b|
    b.source_files = 'CASMediation/CASYandexProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'YandexMobileAds', '~> 4.3.1'
    b.dependency 'YandexMobileMetrica', '~> 3.15.1'
  end

  s.subspec 'YandexAdsProxy' do |b|
    b.source_files = 'CASMediation/CASYandexProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'YandexMobileAdsProxy', '~> 4.1.2'
  end

  s.subspec 'MoPub' do |b|
    b.source_files = 'CASMediation/CASMoPubProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'mopub-ios-sdk/Core', '~> 5.18.0'
  end

  s.subspec 'MyTarget' do |b|
    b.source_files = 'CASMediation/CASMyTargetProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'myTargetSDK', '~> 5.13.1'
  end

  s.subspec 'FairBid' do |b|
    b.source_files = 'CASMediation/CASFairBidProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'FairBidSDK', '~> 3.18.0'
  end

  s.subspec 'Vungle' do |b|
    b.source_files = 'CASMediation/CASVungleProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'VungleSDK-iOS', '~> 6.10.1'
  end

  s.subspec 'Mintegral' do |b|
    b.source_files = 'CASMediation/CASMintegralProvider.swift'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'MintegralAdSDK/BidBannerAd', '~> 7.0.1'
    b.dependency 'MintegralAdSDK/BidInterstitialVideoAd', '~> 7.0.1'
    b.dependency 'MintegralAdSDK/BidRewardVideoAd', '~> 7.0.1'
  end

  s.subspec 'IronSource' do |b|
    b.source_files = 'CASMediation/IronSource/CASIronSourceBridge.h',
                     'CASMediation/IronSource/CASIronSourceProvider.swift'
    b.private_header_files = 'CASMediation/IronSource/CASIronSourceBridge.h'
    b.preserve_paths = 'CASMediation/IronSource/module.modulemap'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'IronSourceSDK', '~> 7.1.10'
  end

  s.subspec 'Kidoz' do |b|
    b.source_files = 'CASMediation/Kidoz/CASKidozProvider.swift',
                     'CASMediation/Kidoz/KidozSDK.h'
    b.private_header_files = 'CASMediation/Kidoz/KidozSDK.h'
    b.preserve_paths = 'CASMediation/Kidoz/module.modulemap'
    b.vendored_libraries = 'libs/libKidozSDK.a' # Kidoz version 8.9.1 beta
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
  end

  s.subspec 'StartApp' do |b|
    b.source_files = 'CASMediation/StartApp/CASStartAppProvider.swift',
                     'CASMediation/StartApp/CASStartAppBridge.h'
    b.private_header_files = 'CASMediation/StartApp/CASStartAppBridge.h'
    b.preserve_paths = 'CASMediation/StartApp/module.modulemap'
    b.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
    b.dependency 'StartAppSDK', '~> 4.6.0'
  end

  s.subspec 'General' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
  end

  s.subspec 'Main' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/FBAudienceNetwork', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/FairBid', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
  end
end
