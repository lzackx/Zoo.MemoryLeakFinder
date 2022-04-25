#
# Be sure to run `pod lib lint Zoo.MemoryLeakFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Zoo.MemoryLeakFinder'
  s.version          = '1.0.0'
  s.summary          = 'MemoryLeakFinder plugin for Zoo'
  s.description      = <<-DESC
  MemoryLeakFinder plugin for Zoo
                       DESC
  s.homepage         = 'https://github.com/lzackx/Zoo.MemoryLeakFinder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lzackx' => 'lzackx@lzackx.com' }
  s.source           = { :git => 'https://github.com/lzackx/Zoo.MemoryLeakFinder.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.module_name = 'ZooMemoryLeakFinder'
  s.source_files = 'Zoo.MemoryLeakFinder/Classes/**/*'
  s.dependency 'Zoo'
  s.dependency 'Zoo.Performance'
  s.dependency 'FBRetainCycleDetector'
end
