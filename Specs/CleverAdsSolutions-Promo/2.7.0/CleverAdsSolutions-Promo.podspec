Pod::Spec.new do |s|
  s.name                  = "CleverAdsSolutions-Promo"
  s.version               = "2.7.0"
  s.summary               = "Clever Ads Solutions iOS internal cross promo module"
  s.homepage              = "https://github.com/cleveradssolutions/CAS-iOS#step-2-add-cross-promotion-framework"
  s.license               = { :type => "Commercial", :file => "LICENSE.md" }
  s.author                = { "CleverAdsSolutions" => "support@cleveradssolutions.com" }
  s.source                = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/#{s.version}/CleverAdsSolutionsPromo.tar.gz"  }
  s.platform              = :ios
  s.ios.deployment_target = '10.0'
  s.swift_versions        = ['5.0']
  s.cocoapods_version     = '>= 1.10.0'

  s.vendored_frameworks = 'CASPromo/CASPromo.xcframework'
  s.dependency 'CleverAdsSolutions-Base', "#{s.version}"

end
