Pod::Spec.new do |s|
s.name              = 'QQHeader'
s.version           = '1.0.2'
s.summary           = "QQHeader SDK #{s.version} for iOS"
s.homepage          = 'https://github.com/itlijunjie/QQHeader.git'
s.author            = { 'itlijunjie@gmail.com' => 'https://github.com/itlijunjie' }
s.platform          = :ios, '8.0'
s.requires_arc      = true
s.license           = { :type => 'WTFPL', :file => 'LICENSE' }
s.source            = { :git => 'https://github.com/itlijunjie/QQHeader.git', :tag => "#{s.version}" }
s.source_files = 'QQHeader/Classes/**/*.{h,m}'
end
