#
#  Be sure to run `pod spec lint XLFoundation.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XLFoundation"
  s.version      = "0.0.2"
  s.summary      = "The function extension of the common system NS object is organized in the form of catogry, which is convenient to use. "
  s.homepage     = "https://github.com/JesseRom/XLFoundation"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "JesseRom" => "lhdaily@163.com" }
  s.source       = { :git => "https://github.com/JesseRom/XLFoundation.git", :tag => "#{s.version}" }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.source_files  = "XLFoundation/Classes/**/*"
  s.frameworks = "Foundation", "UIKit"

end
