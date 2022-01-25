Pod::Spec.new do |s|
  s.name             = 'Geo4CastSDK'
  s.module_name      = 'Geo4CastSDK'
  s.version          = '3.3.2'
  s.summary          = 'Geo4Cast SDK with latest Swift 5. '
  s.description      = 'Geo4Cast SDK is a battery power friendly data gatherer. It is controlled by a configuration set to the client. 
  Visit us on https://www.geo4cast.ai for more infomration.'    
  s.homepage         = 'https://github.com/ALEIAGTH/Geo4CastSDK-iOS/tree/latest-confirmit'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Mohamad Nabaa' => 'mohamad.nabaa@aleia.com' }
  s.source           = { :git => 'https://github.com/ALEIAGTH/Geo4CastSDK-iOS.git', :tag => s.version.to_s }
  s.vendored_frameworks = "Geo4CastSDK.framework"
  s.platform = :ios
  s.swift_version = "5.0"
  public_header_files       = 'Geo4CastSDK.framework/Headers/Geo4CastSDK.h',
                              'Geo4CastSDK.framework/Headers/Geo4CastSDK-Swift.h',
  s.public_header_files = public_header_files
  s.module_map = 'Geo4CastSDK.framework/Modules/module.modulemap'
  s.ios.deployment_target  = '11.0'
  s.platform     = :ios, "11.0"
  s.pod_target_xcconfig = {
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end

