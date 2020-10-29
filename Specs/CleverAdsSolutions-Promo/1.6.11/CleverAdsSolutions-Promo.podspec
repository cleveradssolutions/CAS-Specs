Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Promo"
  s.version               = "1.6.11"
  s.summary               = "Clever Ads Solutions iOS internal cross promo module"
  s.homepage              = "https://cleveradssolutions.com"
  s.license               = "Apache License, Version 2.0"
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsPromo.zip"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions        = ['4.2', '5.0']
  s.vendored_frameworks   = 'CASPromo/CASPromo.framework'
  s.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
  
end
