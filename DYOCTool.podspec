Pod::Spec.new do |s|
    s.name             = 'DYOCTool'
    s.version          = '0.1.3'
    s.summary          = '自己使用的一些工具类'
    #使用arc
    s.requires_arc = true
    s.homepage         = 'https://github.com/UEdge/DYOCTool'
    s.license          = { :type => 'Apache', :file => 'LICENSE' }
    s.author           = { 'Dylan.Kuang' => 'leonsongfeng@gmail.com' }
    s.source           = { :git => 'https://github.com/UEdge/DYOCTool.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '8.0'
    #设置swift试用版本
    # s.swift_version = '4.0'
    # 上传file地址
     s.source_files = 'DYOCTool/Classes/**/*.{swift,h,m}'
 
    #资源文件地址
     
     s.resources = "DYOCTool/Resources/Image.bundle"

    s.dependency 'MBProgressHUD', '~> 1.1.0'

    #s.pod_target_xcconfig = { 'SWIFT_SUPPRESS_WARNINGS' => 'YES' }
    
end
