Pod::Spec.new do |s|
  s.name             = 'FMCardCell'
  s.version          = '0.1.0'
  s.summary          = 'Simple way to build tableView with cards as cells'
  s.description      = <<-DESC
FMCardCell has cards as subviews. To use it's necessary to inherit from it.'
                       DESC

  s.homepage         = 'https://github.com/marinofelipe/FMCardCell'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Felipe Marino' => 'felipemarino91@gmail.com' }
  s.source           = { :git => 'https://github.com/Felipe Marino/FMCardCell.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'FMCardCell/**/*.{swift}'

end
