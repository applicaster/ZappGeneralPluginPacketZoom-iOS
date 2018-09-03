Pod::Spec.new do |s|
  s.name             = "ZappGeneralPluginPacketZoom"
  s.version          = '5.0.0'
  s.summary          = "ZappGeneralPluginPacketZoom"
  s.description      = <<-DESC
                        ZappGeneralPluginPacketZoom container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappGeneralPluginPacketZoom-iOS"
  s.license          = 'CMPS'
	s.author           = "Applicaster LTD."
  s.source           = { :git => "git@github.com:applicaster/ZappGeneralPluginPacketZoom-iOS.git", :tag => s.version.to_s }
  s.platform         = :ios, '9.0'
  s.requires_arc = true
  s.static_framework = true

  s.public_header_files = 'ZappGeneralPluginPacketZoom/**/*.h'
  s.source_files = 'ZappGeneralPluginPacketZoom/**/*.{h,m,swift}'

  s.resources = [
                "ZappGeneralPluginPacketZoom/**/*.plist",
                "ZappGeneralPluginPacketZoom/**/*.png"]

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'OTHER_LDFLAGS' => '$(inherited) -ObjC -framework "PZSpeed"',
                'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'LIBRARY_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.frameworks = 'UIKit', 'CFNetwork', 'CoreLocation', 'SystemConfiguration', 'Security', 'Foundation', 'CoreTelephony'
  s.libraries = 'c++', 'z'

  s.dependency 'ZappGeneralPluginsSDK'
  s.dependency 'PZSpeed'
end
