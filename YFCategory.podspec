Pod::Spec.new do |s|
    s.name         = 'YFCategory'
    s.version      = '0.0.3'
    s.summary      = 'Some commonly used category.'
    s.homepage     = 'https://github.com/ghostfeng/YFCategory'
    s.license      = { :type => 'MIT', :file => 'LICENSE' }
    s.author       = { 'LiuYongfeng' => '1253289963@qq.com' }
    s.source       = { :git => 'https://github.com/ghostfeng/YFCategory.git', :tag =>   s.version }
    s.source_files  = 'YFCategory/YFCategory.h'
    s.public_header_files = 'YFCategory/YFCategory.h'
    s.ios.deployment_target = '8.0'
    s.requires_arc = true

    s.subspec 'Foundation' do |ss|
        ss.source_files  = 'YFCategory/Foundation/*.{h,m}'
        ss.public_header_files = 'YFCategory/Foundation/*.h'
    end

    s.subspec 'UIKit' do |ss|
        ss.source_files  = 'YFCategory/UIKit/*.{h,m}'
        ss.public_header_files = 'YFCategory/UIKit/*.h'
    end

    s.subspec 'Photos' do |ss|
        ss.source_files  = 'YFCategory/Photos/*.{h,m}'
        ss.public_header_files = 'YFCategory/Photos/*.h'
    end

    s.dependency 'Foundation'
    s.dependency 'UIKit'
    s.dependency 'Photos'
end

