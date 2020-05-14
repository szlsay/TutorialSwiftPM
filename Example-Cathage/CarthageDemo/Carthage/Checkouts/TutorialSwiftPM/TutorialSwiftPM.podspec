Pod::Spec.new do |s|
  s.name             = 'TutorialSwiftPM'
  s.version          = '0.0.1'
  s.summary          = 'A short description of TutorialSwiftPM.'
  s.description      = 'A long description of TutorialSwiftPM.'

  s.homepage         = 'https://github.com/STShenZhaoliang'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'stszl' => 'stszl@sina.cn' }
  s.source           = { :git => 'https://github.com/STShenZhaoliang/TutorialSwiftPM.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.source_files = 'Sources/TutorialSwiftPM/*.swift'

end
