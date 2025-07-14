Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-SDK"
  s.version               = "4.2.1"
  s.summary               = "Monetize your mobile applications easy with CAS.AI iOS mediation"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license               = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions LTD" => "support@cas.ai" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.0.2/LICENSE.zip" }
  s.platform              = :ios, '13.0'
  s.swift_version         = '5.0'
  s.swift_versions        = '5.0'
  s.default_subspec       = 'Optimal'


  s.subspec 'AppLovin' do |b|
    b.dependency 'CASMediationAppLovin', '13.3.1.2'
    b.dependency 'CleverAdsSolutions-Base', '4.2.1'
  end

  s.subspec 'Optimal' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/InMobi', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/AudienceNetwork', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/AppLovin', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Bigo', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Pangle', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/CASExchange', '4.2.1'
  end

  s.subspec 'Families' do |b|
    b.dependency 'CleverAdsSolutions-SDK/GoogleAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/LiftoffMonetize', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Kidoz', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Chartboost', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/UnityAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/InMobi', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/Mintegral', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/IronSource', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/YandexAds', '4.2.1'
    b.dependency 'CleverAdsSolutions-SDK/DTExchange', '4.2.1'
  end
end
