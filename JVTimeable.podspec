Pod::Spec.new do |s|
  s.name             = 'JVTimeable'
  s.version          = '0.1.8'
  s.summary          = 'JVTimeable.'

  s.homepage         = 'https://google.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jasperav' => 'Jasperav@hotmail.com' }
  s.source           = { :git => 'https://github.com/Jasperav/JVTimeable.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'JVTimeable/Classes/**/*'
  s.dependency 'JVRestartable'
end
