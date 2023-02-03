Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-SDK"
  s.version               = "3.0.0"
  s.summary               = "Monetize your mobile applications easy with Clever Ads Solutions iOS framework"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutions.tar.gz" }
  s.platform              = :ios
  s.ios.deployment_target = '11.0'
  s.swift_versions        = ['5.0']
  s.requires_arc          = true
  s.static_framework      = true
  s.xcconfig              = { 'OTHER_LDFLAGS' => '-ObjC' }
  s.default_subspec       = 'Optimal'
  s.cocoapods_version     = '>= 1.10.0'

  s.subspec 'CrossPromo' do |b|
    b.vendored_frameworks = 'libs/CASPromo.xcframework'
    b.resources = 'libs/CASPromoResources.bundle'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'GoogleAds' do |b|
    b.vendored_frameworks = 'libs/CASGoogleAds.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'Google-Mobile-Ads-SDK', '~> 10.0.0'
  end

  s.subspec 'UnityAds' do |b|
    b.vendored_frameworks = 'libs/CASUnityAds.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'UnityAds', '~> 4.5.0'
  end

  s.subspec 'AppLovin' do |b|
    b.vendored_frameworks = 'libs/CASAppLovin.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'AppLovinSDK', '~> 11.7.0'
  end

  s.subspec 'InMobi' do |b|
    b.vendored_frameworks = 'libs/CASInMobi.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'InMobiSDK/Core', '~> 10.1.2'
  end

  s.subspec 'AdColony' do |b|
    b.vendored_frameworks = 'libs/CASAdColony.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'AdColony', '4.9.0'
  end

  s.subspec 'SuperAwesome' do |b|
    b.vendored_frameworks = 'libs/CASSuperAwesome.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'SuperAwesome', '8.5.1'
    b.dependency 'Alamofire', '5.4.4'
  end

  s.subspec 'AudienceNetwork' do |b|
    b.vendored_frameworks = 'libs/CASAudienceNetwork.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'FBAudienceNetwork', '~> 6.12.0'
  end

  s.subspec 'FBAudienceNetwork' do |b|
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', "#{s.version}"
  end

  s.subspec 'YandexAds' do |b|
    b.vendored_frameworks = 'libs/CASYandexAds.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'YandexMobileAds', '5.4.0'
    #b.dependency 'YandexMobileMetrica', '~> 4.1.1'
  end

  s.subspec 'MyTarget' do |b|
    b.vendored_frameworks = 'libs/CASMyTarget.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'myTargetSDK', '5.17.0'
  end

  s.subspec 'Vungle' do |b|
    b.vendored_frameworks = 'libs/CASVungle.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'VungleSDK-iOS', '~> 6.12.1'
  end

  s.subspec 'Pangle' do |b|
    b.vendored_frameworks = 'libs/CASPangle.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'Ads-Global/BUAdSDK_Compatible', '4.8.1.0'
  end

  s.subspec 'Tapjoy' do |b|
    b.vendored_frameworks = 'libs/CASTapjoy.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'TapjoySDK', '12.11.1'
  end

  s.subspec 'Mintegral' do |b|
    b.vendored_frameworks = 'libs/CASMintegral.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'MintegralAdSDK', '~> 7.2.9'
    b.dependency 'MintegralAdSDK/BidSplashAd', '~> 7.2.9'
  end

  s.subspec 'Chartboost' do |b|
    b.vendored_frameworks = 'libs/CASChartboost.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'ChartboostSDK', '9.0.0'
  end

  s.subspec 'DigitalTurbine' do |b|
    b.vendored_frameworks = 'libs/CASDigitalTurbine.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    #b.dependency 'Fyber_Marketplace_SDK', '~> 8.1.5'
    b.dependency 'FairBidSDK', '~> 3.34.0'
  end

  s.subspec 'Fyber' do |b|
    b.dependency 'CleverAdsSolutions-SDK/DigitalTurbine', "#{s.version}"
  end

  s.subspec 'IronSource' do |b|
    b.vendored_frameworks = 'libs/CASIronSource.xcframework'
    b.dependency 'CleverAdsSolutions-Base'
    b.dependency 'IronSourceSDK', '7.2.7'
  end

  s.subspec 'Kidoz' do |b|
    b.vendored_frameworks = 'libs/CASKidoz.xcframework' # Kidoz version 8.9.3
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Optimal' do |b|
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Pangle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Tapjoy', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/MyTarget', "#{s.version}"
  end

  s.subspec 'Families' do |b|
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AdColony', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Vungle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Pangle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Tapjoy', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/MyTarget', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', "#{s.version}"

    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}" # required to build
  end
end
