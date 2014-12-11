Pod::Spec.new do |s|
  s.name         = "Corvus"
  s.version      = "2.0.0-rc"
  s.summary      = "Log to Sentry/Raven using CocoaLumberjack"
  s.homepage     = "https://github.com/jschmid/Corvus"
  s.license      = 'MIT'
  s.author       = { "Jonas Schmid" => "jonas.schmid@gmail.com" }
  s.source   	 = { :git => 'https://github.com/jschmid/Corvus.git', :tag => s.version.to_s }
  s.source_files = '*.{h,m}'
  s.requires_arc = true
  s.platform = :ios, '7.0'
  s.dependency 'CocoaLumberjack/Core', '=2.0.0-rc'
  s.dependency 'Raven'
end
