Pod::Spec.new do |s|
    # 这个是pod 的名称
    s.name             = 'DYOCTool'
    # 【这个版本号一定要和后面的tag一样】
    s.version          = '0.1.0'
    s.summary          = '一个自己使用的OC封装的一些方法'
    #使用arc
    s.requires_arc = true
    # 项目主页代码
    s.homepage         = 'https://github.com/UEdge/DYOCTool'
    # LICENSE信息，这里是Apache;有的是MIT，换成MIT就OK了
    s.license          = { :type => 'Apache', :file => 'LICENSE' }
    s.author           = { '<作者名称>' => '<邮箱地址>' }
    # 仓库地址
    s.source           = { :git => 'https://github.com/UEdge/DYOCTool.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '8.0'
    #设置swift试用版本
    # s.swift_version = '4.0'
    # 上传file地址
    s.source_files = 'DYOCTool/Classes/**/*.{swift,h,m}'
 
    #资源文件地址
    s.resource_bundles = {
      'ELProgressHUD' => ['DYOCTool/Resources/**/*.png']
     }
    # 第三方依赖库，多个的话在后面加逗号隔开
    s.dependency 'MBProgressHUD', '~> 1.1.0'
    # 强烈建议加上这句，取出警告
    s.pod_target_xcconfig = { 'SWIFT_SUPPRESS_WARNINGS' => 'YES' } 
end