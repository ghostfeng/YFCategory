Pod::Spec.new do |s|
    s.name         = "YFCategory"
    s.version      = "0.0.1"
    s.summary      = "Some commonly used category."
    s.homepage     = "https://github.com/ghostfeng/YFCategory"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "LiuYongfeng" => "1253289963@qq.com" }
    s.source       = { :git => "https://github.com/ghostfeng/YFCategory.git", :tag =>   s.version }
    s.platform     = :ios, '8.0'
    s.source_files  = "YFCategory/*"
    s.ios.deployment_target = "8.0"
    s.requires_arc = true
end
