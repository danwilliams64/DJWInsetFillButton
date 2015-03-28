Pod::Spec.new do |s|
  s.name         = "DJWInsetFillButton"
  s.version      = "0.1.0"
  s.summary      = "A simple, stylish UIButton replacement."

  s.description  = <<-DESC
                   A UIButton replacement, that has an inset fill when highlighted. Allows for styling of the following:

                    * Border color
                    * Border corner radius
                    * Highlighted state background color
                    * Font
                    * The normal control state's title color takes on the view's `tintColor` property.

                    The class is also designed for use in IB, and is completely IB_Designable, and every property IBInspectable.
                    This class uses AutoLayout and requires a constraints based layout.
                   DESC

  s.homepage     = "http://github.com/danwilliams64/DJWInsetFillButton"
  s.screenshots  = "https://raw.githubusercontent.com/danwilliams64/DJWInsetFillButton/master/Images/example.gif"

  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author             = { "Dan Williams" => "dan@danwilliams.co" }
  s.social_media_url   = "http://twitter.com/danielwilliams"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/danwilliams64/DJWInsetFillButton.git", :tag => "#{s.version}" }

  s.source_files  = "DJWInsetFillButton"
  s.public_header_files = "DJWInsetFillButton/*.h"

  s.requires_arc = true
end