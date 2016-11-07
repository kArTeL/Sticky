Pod::Spec.new do |s|

  s.name         = "Sticky"
  s.version      = "0.0.1"
  s.summary      = "Stick views above the Keyboard"
  s.description  = <<-DESC
  Stick views above the Keyboard with a lightweight implementation
  DESC

  s.homepage     = "https://github.com/kArTeL/Sticky"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Neil García" => "neilliga@gmail.com" }
  s.social_media_url   = "https://twitter.com/imkartelg"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/kArTeL/Sticky.git", :tag => s.version }
  s.source_files  = "Sticky/", "Sticky/**/*.{h,m,swift}"

  s.requires_arc = true

end
