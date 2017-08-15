Pod::Spec.new do |s|
    s.name         = "YFCategory"
    s.version      = "0.0.1"
    s.summary      = "Some commonly used category."
    s.homepage     = "https://github.com/ghostfeng/YFCategory"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "LiuYongfeng" => "1253289963@qq.com" }
    s.platform     = :ios, "8.0"
    s.source       = { :git => "https://github.com/ghostfeng/YFCategory.git", :tag => s.version }
    s.source_files  = "YFCategory/YFCategory.h"
    s.ios.deployment_target = "8.0"
    s.requires_arc = true


    s.subspec 'Foundation+YFCategory' do |ss|
        ss.source_files = 'YFCategory/Foundation+YFCategory/*.{h,m}'
    end

    s.subspec 'UIKit+YFCategory' do |ss|
        ss.source_files = 'YFCategory/UIKit+YFCategory/*.{h,m}'
    end
end
