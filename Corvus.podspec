Pod::Spec.new do |s|
  s.name         = "Corvus"
  s.version      = "3.0.0"
  s.summary      = "Log to Sentry using CocoaLumberjack"
  s.homepage     = "https://github.com/jschmid/Corvus"
  s.license      = 'MIT'
  s.author       = { "Jonas Schmid" => "jonas.schmid@gmail.com" }
  s.social_media_url = 'https://twitter.com/jonas_schmid'
  s.source   	 = { :git => 'https://github.com/jschmid/Corvus.git', :tag => s.version.to_s }
  s.source_files = '*.{h,m}'
  s.requires_arc = true
  s.platform = :ios, '8.0'
  s.dependency 'CocoaLumberjack/Default', '~> 2.0'
  s.dependency 'SentrySwift', '~> 1.3'
end
