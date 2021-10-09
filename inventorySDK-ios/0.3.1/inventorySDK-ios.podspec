#
# Be sure to run `pod lib lint inventorySDK-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'inventorySDK-ios'
    s.version          = '0.3.1'
    s.summary          = 'A short description of inventorySDK.'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC

    s.homepage         = 'https://github.com/ahahahahyeong/inventorySDK-ios'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'vivid199483@gmail.com' => 'ahyeong@sinest.co.kr' }
    s.source           = { :git => 'https://github.com/ahahahahyeong/inventorySDK-ios.git', :tag => s.version.to_s }

    s.ios.deployment_target = '11.0'
    s.swift_version = '5.0'
#    s.source_files = 'inventorySDK-ios/Classes/**/*'
#    s.resources = 'inventorySDK-ios/Assets/**/*'
    
    s.vendored_frameworks =  'inventorySDK-ios/Frameworks/UnityAds.framework', 'inventorySDK-ios/Frameworks/inventorySDK_ios.framework'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
    s.dependency 'RxSwift', '5.0'
    s.dependency 'RxCocoa', '5.0'
    s.dependency 'Moya/RxSwift', '~> 14.0'
    s.dependency 'RxOptional'
    s.dependency 'Cleanse'
    s.dependency 'SwiftDate', '~> 5.0'
    s.dependency 'lottie-ios'
    s.dependency 'SDWebImage', '~> 5.0'
    s.dependency 'ReactorKit'
    s.dependency 'Toaster'
    s.dependency 'AlamofireImage', '~> 4.1'
end
