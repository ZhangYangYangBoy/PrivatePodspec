#
# Be sure to run `pod lib lint GCFundModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GCFundModule'
  s.version          = '0.0.1'
  s.summary          = '拆分基金'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 拆分基金基础模块
                       DESC

  s.homepage         = 'https://github.com/zhangyangyangBoy/GCFundModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangyangyangBoy' => 'yangyangzhang17@creditease.cn' }
  s.source           = { :git => 'https://github.com/zhangyangyangBoy/GCFundModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'BasisUnit' do |ss|
      ss.source_files = 'GCFundModule/Classes/BasisUnit/*.{swift}'
  end

  s.subspec 'CustomUIUnit' do |ss|
       ss.source_files = 'GCFundModule/Classes/CustomUIUnit/*.{swift}'
       # ss.public_header_files = 'FundModuleDemo/Classes/CustomUIUnit/**/*'
       ss.dependency 'SnapKit', '~> 4.0.0'
       ss.resource = "GCFundModule/Assets/CustomUIUnit.xcassets"
       # ss.resource_bundles = {
         # 'UIUnit' => ['UIUnitresource/Assets/CustomUIUnit.xcassets/*.xcassets']
       # }
  end

  # s.source_files = 'GCFundModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GCFundModule' => ['GCFundModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
