#
# Be sure to run `pod lib lint FortnightUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FortnightUtils'
  s.version          = '0.1.0'
  s.summary          = 'A small library of components that allows you to quickly build your app programmatically using multiple UIView extensions any many others.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A small library of components that allows you to quickly build your app programmatically using multiple UIView extensions any many others. This library includes helper extensions.'

  s.homepage         = 'https://github.com/StudioFortnight/FortnightUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fortnight Studio' => 'development@fortnight.studio' }
  s.source           = { :git => 'https://github.com/StudioFortnight/FortnightUtils.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/studiofortnight'

  s.ios.deployment_target = '9.3'

  s.swift_version = '4.2'
  s.source_files = 'FortnightUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'FortnightUtils' => ['FortnightUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
