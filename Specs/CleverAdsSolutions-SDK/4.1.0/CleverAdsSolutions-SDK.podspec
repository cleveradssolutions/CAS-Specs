Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-SDK"
  s.version               = "4.1.0"
  s.summary               = "Monetize your mobile applications easy with CAS.AI iOS mediation"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions LTD" => "support@cas.ai" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/LICENSE.zip" }
  s.platform              = :ios, '13.0'
  s.swift_version         = '5.0'
  s.swift_versions        = '5.0'
  s.default_subspec       = 'Optimal'


  s.subspec 'IronSource' do |b|
    b.dependency 'CASMediationIronSource', '8.9.1.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'UnityAds' do |b|
    b.dependency 'CASMediationUnityAds', '4.15.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'GoogleAds' do |b|
    b.dependency 'CASMediationGoogleAds', '12.6.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'LiftoffMonetize' do |b|
    b.dependency 'CASMediationLiftoffMonetize', '7.5.1.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'InMobi' do |b|
    b.dependency 'CASMediationInMobi', '10.8.3.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Chartboost' do |b|
    b.dependency 'CASMediationChartboost', '9.9.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'DTExchange' do |b|
    b.dependency 'CASMediationDTExchange', '8.3.7.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Kidoz' do |b|
    b.dependency 'CASMediationKidoz', '10.0.2.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'SuperAwesome' do |b|
    b.dependency 'CASMediationSuperAwesome', '9.4.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Mintegral' do |b|
    b.dependency 'CASMediationMintegral', '7.7.8.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'AppLovin' do |b|
    b.dependency 'CASMediationAppLovin', '13.3.0.1'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Pangle' do |b|
    b.dependency 'CASMediationPangle', '7.2.0.4.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Bigo' do |b|
    b.dependency 'CASMediationBigo', '4.8.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'YandexAds' do |b|
    b.dependency 'CASMediationYandexAds', '7.13.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'AudienceNetwork' do |b|
    b.dependency 'CASMediationAudienceNetwork', '6.20.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'YsoNetwork' do |b|
    b.dependency 'CASMediationYsoNetwork', '1.1.31.1'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'CASExchange' do |b|
    b.dependency 'CASMediationCASExchange', '4.1.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'CrossPromo' do |b|
    b.dependency 'CASMediationCrossPromo', '4.1.0.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'StartIO' do |b|
    b.dependency 'CASMediationStartIO', '4.10.5.1'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'HyprMX' do |b|
    b.dependency 'CASMediationHyprMX', '6.4.2.1'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Ogury' do |b|
    b.dependency 'CASMediationOgury', '5.0.2.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Madex' do |b|
    b.dependency 'CASMediationMadex', '1.7.2.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Prado' do |b|
    b.dependency 'CASMediationPrado', '10.0.2.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Smaato' do |b|
    b.dependency 'CASMediationSmaato', '22.9.3.0'
    b.dependency 'CleverAdsSolutions-Base', '4.1.0.1'
  end

  s.subspec 'Optimal' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/InMobi', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Bigo', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Pangle', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/CASExchange', '4.1.0'
  end

  s.subspec 'Families' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/InMobi', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/SuperAwesome', '4.1.0'
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', '4.1.0'
  end
end
