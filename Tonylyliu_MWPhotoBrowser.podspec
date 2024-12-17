Pod::Spec.new do |s|

  s.name = 'Tonylyliu_MWPhotoBrowser'
  s.version = '2.2.0'
  s.license = 'MIT'
  s.summary = 'A simple iOS photo and video browser with optional grid view, captions and selections.'
  s.ios.deployment_target = '12.0'
  s.description = <<-DESCRIPTION
                  MWPhotoBrowser can display one or more images or videos by providing either UIImage
                  objects, PHAsset objects, or URLs to library assets, web images/videos or local files.
                  The photo browser handles the downloading and caching of photos from the web seamlessly.
                  Photos can be zoomed and panned, and optional (customisable) captions can be displayed.
                  DESCRIPTION
  s.screenshots = [
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser1.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser2.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser3.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser4.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser5.png',
    'https://raw.github.com/mwaterfall/MWPhotoBrowser/master/Screenshots/MWPhotoBrowser6.png'
  ]

  s.homepage = 'https://github.com/tonylyliu/MWPhotoBrowser.git'
  s.author = { 'Tony Liu' => 'tonylyliu@gmail.com' }
  s.social_media_url = 'https://twitter.com/tonylyliu'

  s.source = {
    :git => 'https://github.com/tonylyliu/MWPhotoBrowser.git',
    :tag => '2.2.0'
  }
  s.platform = :ios, '12.0'
  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MWPhotoBrowser' => ['Pod/Assets/*.png']
  }


  s.frameworks = 'ImageIO', 'QuartzCore', 'AssetsLibrary', 'MediaPlayer'
  s.weak_frameworks = 'Photos'
# disable ARC runtime support for older iOS versions


  s.user_target_xcconfig = {
    'IPHONEOS_DEPLOYMENT_TARGET' => '12.0',
    'IPHONEOS_DEPLOYMENT_TARGET[arch=*]' => '$(inherited)'
  }

  s.dependency 'MBProgressHUD', '~> 1.2'
  s.dependency 'Tonylyliu_DACircularProgress', '~> 2.3', '>= 2.3.4'
  s.dependency 'SDWebImage', '~> 5.18'

end
