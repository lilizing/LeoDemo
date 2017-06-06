Pod::Spec.new do |s|
  s.name = 'SnapKit'
  s.version = '3.2.0'
  s.license = 'MIT'
  s.summary = 'Harness the power of auto layout with a simplified, chainable, and compile time safe syntax.'
  s.homepage = 'https://github.com/SnapKit/SnapKit'
  s.authors = { 'Robert Payne' => 'robertpayne@me.com' }
  s.social_media_url = 'http://twitter.com/robertjpayne'
  s.source = { :git => 'https://github.com/SnapKit/SnapKit.git', :tag => '3.2.0' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'

  #s.source_files = 'Source/*.swift'

  s.requires_arc = true

  # 使用Carthage打包Framework
  s.osx.vendored_frameworks = 'Carthage/Build/macOS/SnapKit.framework'
  s.tvos.vendored_frameworks = 'Carthage/Build/tvOS/SnapKit.framework'
  s.watchos.vendored_frameworks = 'Carthage/Build/watchOS/SnapKit.framework'
  s.ios.vendored_frameworks = 'Carthage/Build/iOS/SnapKit.framework'

  s.prepare_command = <<-CMD
                        mkdir -p Carthage/Build/iOS
                        ln -s "${TMP_PROJECT_DIR}/Carthage/Build/iOS/SnapKit.framework" "Carthage/Build/iOS/SnapKit.framework"
                      CMD
end
