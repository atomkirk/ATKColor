Pod::Spec.new do |s|
  s.name             = "ATKColor"
  s.version          = "0.1.0"
  s.summary          = "Categories and Macros for easily creating UIColor/NSColor from hex values."
  s.homepage         = "https://github.com/atomkirk/ATKColor"
  s.license          = 'MIT'
  s.author           = { "Adam Kirk" => "atomkirk@gmail.com" }
  s.source           = { :git => "https://github.com/atomkirk/ATKColor.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/atomkirk'
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.source_files     = 'Pod/Classes'
end
