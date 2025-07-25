Pod::Spec.new do |s|
  s.name                = "CASMediationDTExchange"
  s.version             = "8.3.7.0"
  s.summary             = "The DTExchange mediation adapter is a library that handles communication between the CAS.AI SDK and the DTExchange SDK. It enables you to load ads from DTExchange using the mediation feature in the CAS.AI SDK."
  s.homepage            = "https://github.com/cleveradssolutions/CAS-iOS"
  s.license             = { :type => "Commercial License", :file => "LICENSE.md" }
  s.author              = { "CleverAdsSolutions LTD" => "support@cas.ai" }
  s.source              = { :http => "https://github.com/cleveradssolutions/CAS-iOS/releases/download/4.1.0/CASMediationDTExchange-8.3.7.0.zip" }
  s.platform            = :ios, '13.0'
  s.swift_version       = '5.0'
  s.static_framework    = true
  s.vendored_frameworks = 'CASMediationDTExchange.xcframework'
  s.dependency 'Fyber_Marketplace_SDK', '8.3.7'
  s.dependency 'CASMediationIronSource'
end
