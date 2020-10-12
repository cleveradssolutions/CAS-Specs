Pod::Spec.new do |s|
  s.name                = "CleverAdsSolutions-SDK"
  s.version             = "1.6.2"
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
  s.xcconfig            = { 
    'OTHER_LDFLAGS' => '-ObjC',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/**'
  }
  s.default_subspec  = 'Full'

  s.subspec 'Base' do |b|
    b.vendored_frameworks = 'CASBase/CleverAdsSolutions.framework'
  end

  s.subspec 'General' do |b|
    b.vendored_frameworks  = 'CASBase/CleverAdsSolutions.framework'
    b.source_files         = 'CASMediation/**/*.{h,m,swift}'
    b.private_header_files = 'CASMediation/**/*.h'
    b.preserve_paths       = 'CASMediation/**/module.modulemap'
  end

  s.subspec 'Full' do |b|
    b.dependency 'CleverAdsSolutions-SDK/General', "#{s.version}"
    b.vendored_libraries   = 'libs/libKidozSDK.a' # Kidoz version 1.3.5
    b.dependency 'Google-Mobile-Ads-SDK', '7.66.0'
    b.dependency 'VungleSDK-iOS', '6.8.0'
    b.dependency 'IronSourceSDK', '7.0.2.0'
    b.dependency 'AdColony', '4.4.0'
    b.dependency 'AppLovinSDK', '~> 6.14.4'
    b.dependency 'FBAudienceNetwork', '6.0.0'
    b.dependency 'InMobiSDK/Core', '9.1.0'
    b.dependency 'YandexMobileAds', '2.20.0'
    b.dependency 'StartAppSDK', '4.5.0'
    b.dependency 'SuperAwesome', '~> 7.2.14'
    b.dependency 'UnityAds', '3.5.0'
    b.dependency 'ChartboostSDK', '8.3.1'
  end
end
