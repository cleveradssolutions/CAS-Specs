Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-SDK"
  s.version               = "2.6.0-rc"
  s.summary               = "Monetize your mobile applications easy with Clever Ads Solutions iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutions.tar.gz" }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions        = ['5.0']
  s.requires_arc          = true
  s.static_framework      = true
  s.xcconfig              = { 'OTHER_LDFLAGS' => '-ObjC', 'LIBRARY_SEARCH_PATHS' => '${PODS_ROOT}/CleverAdsSolutions-SDK/libs/CASAdmobAdapter.xcframework/**' }
  s.pod_target_xcconfig   = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/**' }
  s.default_subspec       = 'Optimal'
  s.cocoapods_version     = '>= 1.10.0'

  s.subspec 'GoogleAds' do |b|
    b.vendored_frameworks = 'libs/CASAdmobAdapter.xcframework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'Google-Mobile-Ads-SDK', '~> 8.13'
  end

  s.subspec 'UnityAds' do |b|
    b.source_files = 'CASMediation/CASUnityProvider.swift'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'UnityAds', '~> 4.0.0'
  end

  s.subspec 'AppLovin' do |b|
    b.source_files = 'CASMediation/CASAppLovinProvider.swift'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'AppLovinSDK', '~> 10.3.7'
  end

  s.subspec 'InMobi' do |b|
    b.source_files = 'CASMediation/CASInMobiProvider.swift'
    b.vendored_frameworks = 'libs/CASmInMobiAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'InMobiSDK/Core', '~> 10.0.1'
  end

  s.subspec 'AdColony' do |b|
    b.source_files = 'CASMediation/CASAdColonyProvider.swift'
    b.vendored_frameworks = 'libs/CASmAdColonyAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'AdColony', '~> 4.7.2'
  end

  s.subspec 'SuperAwesome' do |b|
    b.source_files = 'CASMediation/CASSuperAwesomeProvider.swift'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'SuperAwesome', '8.1.3'
  end

  s.subspec 'FBAudienceNetwork' do |b|
    b.source_files = 'CASMediation/CASFacebookProvider.swift'
    b.vendored_frameworks = 'libs/CASmFacebookAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'FBAudienceNetwork', '~> 6.9.0'
  end

  s.subspec 'YandexAds' do |b|
    b.source_files = 'CASMediation/CASYandexProvider.swift'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'YandexMobileAds', '~> 4.4.2'
    #b.dependency 'YandexMobileMetrica', '~> 3.15.1'
  end

  s.subspec 'YandexAdsProxy' do |b|
    b.source_files = 'CASMediation/CASYandexProvider.swift'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'YandexMobileAdsProxy', '~> 4.1.2'
  end

  s.subspec 'MyTarget' do |b|
    b.source_files = 'CASMediation/CASmyTargetProvider.swift'
    b.vendored_frameworks = 'libs/CASmMyTargetAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'myTargetSDK', '~> 5.14.4'
  end

  s.subspec 'Vungle' do |b|
    b.source_files = 'CASMediation/CASVungleProvider.swift'
    b.vendored_frameworks = 'libs/CASmVungleAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'VungleSDK-iOS', '~> 6.10.5'
  end

  s.subspec 'Pangle' do |b|
    b.source_files = 'CASMediation/CASPangleProvider.swift'
    b.vendored_frameworks = 'libs/CASmByteDanceAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'Ads-Global/BUAdSDK', '~> 4.1.0.2'
    b.dependency 'Ads-Global/Domestic', '~> 4.1.0.2'
  end

  s.subspec 'Tapjoy' do |b|
    b.source_files = 'CASMediation/CASTapjoyProvider.swift'
    b.vendored_frameworks = 'libs/CASmTapjoyAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'TapjoySDK', '~> 12.8.1'
  end

  s.subspec 'Mintegral' do |b|
    b.source_files = 'CASMediation/CASMintegralProvider.swift'
    b.vendored_frameworks = 'libs/CASmMintegralAdapter.framework'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'MintegralAdSDK/BidBannerAd', '~> 7.0.4'
    b.dependency 'MintegralAdSDK/BidInterstitialVideoAd', '~> 7.0.4'
    b.dependency 'MintegralAdSDK/BidRewardVideoAd', '~> 7.0.4'
  end

  s.subspec 'IronSource' do |b|
    b.source_files = 'CASMediation/IronSource/CASIronSourceBridge.h',
                     'CASMediation/IronSource/CASIronSourceProvider.swift'
    b.private_header_files = 'CASMediation/IronSource/CASIronSourceBridge.h'
    b.preserve_paths = 'CASMediation/IronSource/module.modulemap'
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'IronSourceSDK', '~> 7.1.13'
  end

  s.subspec 'Kidoz' do |b|
    b.source_files = 'CASMediation/Kidoz/CASKidozProvider.swift',
                     'CASMediation/Kidoz/KidozSDK.h'
    b.private_header_files = 'CASMediation/Kidoz/KidozSDK.h'
    b.preserve_paths = 'CASMediation/Kidoz/module.modulemap'
    b.vendored_libraries = 'libs/libKidozSDK.a' # Kidoz version 8.9.1 beta
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
  end

  s.subspec 'Optimal' do |b|
    #Renamed from Main to Optimal
    #Removed SuperAwesome, Kidoz, FairBid
    #Added Pangle, Tapjoy, MyTarget
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/FBAudienceNetwork', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Pangle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Tapjoy', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/MyTarget', "#{s.version}"
  end

  s.subspec 'Families' do |b|
    #Created new group Families
    #Added Pangle, Tapjoy, MyTarget
    #Removed Facebook
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Pangle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Tapjoy', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/MyTarget', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', "#{s.version}"
  end
end
