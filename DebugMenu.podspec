Pod::Spec.new do |s|
  s.name = 'DebugMenu'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.summary = 'iOS debug menu.'
  s.homepage = 'https://github.com/s1ddok/DebugMenu'
  s.social_media_url = 'https://twitter.com/s1ddok'
  s.authors = { 'Andrey Volodin' => 'siddok@gmail.com' }
  s.source = { :git => 'https://github.com/s1ddok/DebugMenu.git', :tag => s.version }
  s.ios.deployment_target = '9.0'
  s.ios.frameworks = 'UIKit', 'Foundation'
  s.source_files = 'Framework/DebugMenu/*.swift'
  s.resources = ["Framework/DebugMenu/*.storyboard", 'Framework/DebugMenu/*.xcassets', 'Framework/DebugMenu/*.xib']
  s.requires_arc = true
end
