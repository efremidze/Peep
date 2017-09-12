Pod::Spec.new do |s|
  s.name             = 'Peep'
  s.version          = '1.0.0'
  s.summary          = 'Easy Sound Generator'
  s.homepage         = 'https://github.com/efremidze/Peep'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'efremidze' => 'efremidzel@hotmail.com' }
  s.source           = { :git => 'https://github.com/efremidze/Peep.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/*.swift'
end
