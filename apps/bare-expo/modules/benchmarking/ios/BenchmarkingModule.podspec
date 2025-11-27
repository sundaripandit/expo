require 'json'

package = JSON.parse(File.read(File.join(__dir__, '..', 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'BenchmarkingModule'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platforms      = {
    :ios => '15.1',
  }
  s.swift_version  = '6.0'
  s.source         = { git: 'https://github.com/expo/expo.git' }
  s.static_framework = true

  s.source_files = '**/*.{h,cpp,m,mm,swift}'
  
  s.dependency 'ExpoModulesCore'

  s.pod_target_xcconfig = {
    # 'DEFINES_MODULE' => 'YES',
    # 'CLANG_CXX_LANGUAGE_STANDARD' => 'c++20',
    # 'SWIFT_COMPILATION_MODE' => 'wholemodule',
    # 'OTHER_SWIFT_FLAGS' => '-Xfrontend -clang-header-expose-decls=has-expose-attr',
    # 'SWIFT_OBJC_INTEROP_MODE' => 'objcxx',
    'HEADER_SEARCH_PATHS' => [
      '"${PODS_CONFIGURATION_BUILD_DIR}/ExpoModulesCore/Swift Compatibility Header"'
    ]
  }
end
