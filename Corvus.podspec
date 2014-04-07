Pod::Spec.new do |s|
  s.name         = "Corvus"
  s.version      = "0.0.1"
  s.summary      = "Log to Sentry/Raven using CocoaLumberjack"
  s.homepage     = "https://github.com/jschmid/Corvus"
  s.license      = 'MIT'
  s.author       = { "Jonas Schmid" => "jonas.schmid@gmail.com" }
  s.source   	 = { :git => 'https://github.com/jschmid/Corvus.git', :tag => '0.0.1' }  	
  s.source_files = '*.{h,m}'
  s.requires_arc = true
  s.platform = :ios
  s.dependency 'CocoaLumberjack'
  s.dependency 'Raven'
end