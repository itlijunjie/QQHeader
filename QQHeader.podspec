Pod::Spec.new do |s|
s.name              = "QQHeader"
s.version           = "0.0.4"
s.summary           = "QQHeader SDK 0.0.4 for iOS"
s.homepage          = "https://github.com/itlijunjie/QQHeader.git"
s.author            = { "itlijunjie@gmail.com" => "https://github.com/itlijunjie" }
s.platform          = :ios, '7.0'
s.requires_arc      = true
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.source            = { :git => "https://github.com/itlijunjie/QQHeader.git", :tag => "#{s.version}" }
s.source_files = 'QQHeader/Classes/**/*.{h,m}'
end