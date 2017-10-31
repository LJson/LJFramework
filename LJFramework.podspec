Pod::Spec.new do |s|
  # 名称
  s.name         = "LJFramework"
  # 版本
  s.version      = "0.0.2"
  # 描述
  s.summary      = "LJFramework"
  # 主页
  s.homepage     = "https://github.com/LJson"
  # 证书申明
  #s.license      = "MIT"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  # 作者
  s.author       = { "ljson" => "liujunchaofoolish@163.com" }
  # 支持版本
  s.platform     = :ios, "8.0"
  #版本地址
  s.source       = { :git => "https://github.com/LJson/LJFramework.git", :tag => "0.0.2" }
  # 库文件路径（相对于.podspec文件的路径）
  s.source_files  = "LJFramework/LJFramework/**/*.{h,m}"
  # 是否支持arc
  s.requires_arc = true
end
