Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Promo"
  s.version               = "2.1.3"
  s.summary               = "Clever Ads Solutions iOS internal cross promo module"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS#step-2-add-cross-promotion-framework"
  s.license               = "Apache License, Version 2.0"
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsPromo.tar.gz"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions        = ['4.2', '5.0']
  s.vendored_frameworks   = 'CASPromo/CASPromo.xcframework'
  s.dependency 'CleverAdsSolutions-SDK/Base', "#{s.version}"
  
end
