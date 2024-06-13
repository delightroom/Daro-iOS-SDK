Pod::Spec.new do |spec|
  spec.name         = 'DaroAds'
  spec.version      = '0.9.5'
  spec.summary      = 'Ad network mediation sdk for iOS.'
  spec.description  = <<-DESC
                      Daro is is a SDK that helps you to easily integrate multiple ad networks into your app.
                      It supports AdMob and other ad networks.
                      DESC
  spec.homepage     = 'https://delightroom.com'
  spec.license      = { :type => 'Custom' }
  spec.author       = { 'Won Jo' => 'lion@delightroom.com' }
  spec.source       = { :http => "https://github.com/delightroom/Daro-iOS-SDK/releases/download/#{spec.version}/Daro.xcframework.zip" }
  spec.swift_version = '5.7'
  spec.ios.deployment_target = '14.1'

  spec.resource_bundles = {
    'DaroAdsResources' => ['Daro.xcframework/ios-arm64/Daro.framework/PrivacyInfo.xcprivacy']
  }

  spec.static_framework = true
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.vendored_frameworks = 'Daro.xcframework'

  spec.dependency 'Google-Mobile-Ads-SDK', '11.2.0'

  # Google Admob partner networks
  spec.dependency 'GoogleMobileAdsMediationFacebook', '6.15.0.0'     # Meta
  spec.dependency 'GoogleMobileAdsMediationPangle', '5.9.0.8.0'      # Pangle
  spec.dependency 'GoogleMobileAdsMediationInMobi', '10.7.1.0'       # Inmobi
  spec.dependency 'GoogleMobileAdsMediationFyber', '8.2.7.0'         # DT Exchange
  spec.dependency 'GoogleMobileAdsMediationChartboost', '9.7.0.0'    # Chatboost
  spec.dependency 'GoogleMobileAdsMediationAppLovin', '12.4.0.0'     # AppLovin
  spec.dependency 'GoogleMobileAdsMediationIronSource', '7.9.1.0.0'  # IronSource
  spec.dependency 'GoogleMobileAdsMediationVungle', '7.3.0.0'        # Vungle
  spec.dependency 'GoogleMobileAdsMediationMintegral', '7.6.0.0'     # Mintegral

  # Other networks
  spec.dependency 'GoogleMobileAds-HyBid-Adapters', '3.0.0.1'     # Verve(HyBid)
  spec.dependency 'OpenWrapSDK', '3.5.1'                          # PubMatic
  spec.dependency 'AdMobPubMaticAdapter', '3.0.0'                 # PubMatic

  # APS
  spec.dependency 'AmazonPublisherServicesSDK', '4.9.4'
  spec.dependency 'AmazonPublisherServicesAdMobAdapter', '3.0.5'  # Amazon


end
