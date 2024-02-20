Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-SDK"
  s.version               = "3.5.4"
  s.summary               = "Monetize your mobile applications easy with CAS.AI iOS mediation"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutions.tar.gz" }
  s.platform              = :ios, '12.0'
  s.swift_version         = '5.0'
  s.swift_versions        = '5.0'
  s.default_subspec       = 'Optimal'

  s.subspec 'CrossPromo' do |b|
    b.vendored_frameworks = 'libs/CASPromo.xcframework'
    b.resources = 'libs/CASPromoResources.bundle'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'GoogleAds' do |b|
    b.vendored_frameworks = 'libs/CASGoogleAds.xcframework'
    b.dependency 'Google-Mobile-Ads-SDK', '10.14.0'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
  end

  s.subspec 'UnityAds' do |b|
    b.vendored_frameworks = 'libs/CASUnityAds.xcframework'
    b.dependency 'UnityAds', '4.9.2'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
  end

  s.subspec 'AppLovin' do |b|
    b.vendored_frameworks = 'libs/CASAppLovin.xcframework'
    b.dependency 'AppLovinSDK', '12.2.0'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'InMobi' do |b|
    b.vendored_frameworks = 'libs/CASInMobi.xcframework'
    b.dependency 'InMobiSDK', '10.6.4'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'SuperAwesome' do |b|
    #b.vendored_frameworks = 'libs/CASSuperAwesome.xcframework'
    b.source_files = 'Adapters/SuperAwesome/SuperAwesome/*.swift'
    b.dependency 'SuperAwesome', '9.3.1'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'AudienceNetwork' do |b|
    b.vendored_frameworks = 'libs/CASAudienceNetwork.xcframework'
    b.dependency 'FBAudienceNetwork', '6.14.0'
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
  end

  s.subspec 'FBAudienceNetwork' do |b|
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', "#{s.version}"
    b.deprecated_in_favor_of = 'CleverAdsSolutions-SDK/AudienceNetwork'
  end

  s.subspec 'YandexAds' do |b|
    b.vendored_frameworks = 'libs/CASYandexAds.xcframework'
    b.dependency 'YandexMobileAds', '6.2.0'
    #b.dependency 'DivKit', '28.11.0'
    b.dependency 'VGSLCommonCore', '2.4.1'
    b.dependency 'VGSLNetworking', '2.4.1'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'MyTarget' do |b|
    b.vendored_frameworks = 'libs/CASMyTarget.xcframework'
    b.dependency 'myTargetSDK', '5.21.0'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'LiftoffMonetize' do |b|
    b.vendored_frameworks = 'libs/CASVungle.xcframework'
    b.dependency 'VungleAds', '7.2.2'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Vungle' do |b|
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', "#{s.version}"
    b.deprecated_in_favor_of = 'CleverAdsSolutions-SDK/LiftoffMonetize'
  end

  s.subspec 'Pangle' do |b|
    b.vendored_frameworks = 'libs/CASPangle.xcframework'
    b.dependency 'Ads-Global/BUAdSDK_Compatible', '5.7.0.8'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Mintegral' do |b|
    b.vendored_frameworks = 'libs/CASMintegral.xcframework'
    b.dependency 'MintegralAdSDK', '7.5.6'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Chartboost' do |b|
    b.vendored_frameworks = 'libs/CASChartboost.xcframework'
    b.dependency 'ChartboostSDK', '9.6.0'
    b.dependency 'CleverAdsSolutions-Base'
  end
  
  s.subspec 'DTExchange' do |b|
    b.vendored_frameworks = 'libs/CASDigitalTurbine.xcframework'
    b.dependency 'Fyber_Marketplace_SDK', '8.2.6'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'DigitalTurbine' do |b|
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', "#{s.version}"
    b.deprecated_in_favor_of = 'CleverAdsSolutions-SDK/DTExchange'
  end

  s.subspec 'IronSource' do |b|
    b.vendored_frameworks = 'libs/CASIronSource.xcframework'
    b.dependency 'IronSourceSDK', '7.8.0.0'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Kidoz' do |b|
    b.vendored_frameworks = 'libs/CASKidoz.xcframework'
    b.dependency 'KidozSDK', '9.0.1'
    b.dependency 'CleverAdsSolutions-Base'
  end

  s.subspec 'Bigo' do |b|
    b.vendored_frameworks = 'libs/CASBigo.xcframework'
    b.dependency 'BigoADS', '4.2.1'
    b.dependency 'CleverAdsSolutions-Base'
  end
  
  s.subspec 'HyprMX' do |b|
    b.vendored_frameworks = 'libs/CASHyprMX.xcframework'
    b.dependency 'HyprMX', '6.2.0'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
  end

  s.subspec 'Smaato' do |b|
    b.vendored_frameworks = 'libs/CASSmaato.xcframework'
    b.dependency 'smaato-ios-sdk/Banner', '22.0.2'
    b.dependency 'smaato-ios-sdk/InApp', '22.0.2'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
  end

  s.subspec 'Optimal' do |b|
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Pangle', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Bigo', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', "#{s.version}"
  end

  s.subspec 'Families' do |b|
    b.dependency 'CleverAdsSolutions-Base', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/IronSource', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/InMobi', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', "#{s.version}"
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', "#{s.version}"
  end
end
