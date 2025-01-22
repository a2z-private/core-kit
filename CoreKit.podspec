Pod::Spec.new do |s|
  s.name             = 'CoreKit'
  s.version          = '0.0.1'
  s.summary          = 'CoreKit is a private framework for essential utilities in iOS development.'
  s.description      = <<-DESC
    CoreKit provides essential utilities for iOS development. 
    It includes modules for networking, UI components, and data handling, designed to streamline app development.
  DESC
  s.homepage         = 'https://github.com/a2z-private/core-kit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your_email@example.com' }
  s.source           = { :git => 'https://github.com/a2z-private/core-kit.git', :tag => '0.0.1' }
  s.platform         = :ios, '13.0'
  s.vendored_frameworks = 'CoreKit.xcframework'
  s.swift_versions   = ['5.0', '5.1', '5.2', '5.3', '5.4', '5.5']
end