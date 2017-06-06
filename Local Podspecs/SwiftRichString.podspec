Pod::Spec.new do |spec|
  spec.name = 'SwiftRichString'
  spec.version = '0.9.8'
  spec.summary = 'Elegant and painless Attributed String (NSAttributedString) in Swift'
  spec.homepage = 'https://github.com/malcommac/SwiftRichString'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Daniele Margutti' => 'me@danielemargutti.com' }
  spec.social_media_url = 'http://twitter.com/danielemargutti'
  spec.source = { :git => 'https://github.com/malcommac/SwiftRichString.git', :tag => "#{spec.version}" }
  #spec.source_files = 'Sources/**/*.swift'
  spec.ios.deployment_target = '8.0'
  spec.tvos.deployment_target = '9.0'
  spec.requires_arc = true
  spec.module_name = 'SwiftRichString'

  # 使用Carthage打包Framework
  spec.osx.vendored_frameworks = 'Carthage/Build/macOS/SwiftRichString.framework'
  spec.tvos.vendored_frameworks = 'Carthage/Build/tvOS/SwiftRichString.framework'
  spec.watchos.vendored_frameworks = 'Carthage/Build/watchOS/SwiftRichString.framework'
  spec.ios.vendored_frameworks = 'Carthage/Build/iOS/SwiftRichString.framework'
  # spec.prepare_command = 'carthage build --no-skip-current --platform ios'
  spec.prepare_command = <<-CMD
                        mkdir -p Carthage/Build/iOS
                        ln -s "${TMP_PROJECT_DIR}/Carthage/Build/iOS/SwiftRichString.framework" "Carthage/Build/iOS/SwiftRichString.framework"
                      CMD
end
