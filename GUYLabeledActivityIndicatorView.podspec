Pod::Spec.new do |s|
  s.name         = "GUYLabeledActivityIndicatorView"
  s.version      = "0.0.1"
  s.summary      = "A short description of GUYLabeledActivityIndicatorView."
  s.description  = <<-DESC
                   A longer description of GUYLabeledActivityIndicatorView in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.homepage     = "http://github.com/juzzin/GUYLabeledActivityIndicatorView"
  s.license      = "MIT (example)"
  s.author             = { "Justin" => "juzzin@gmail.com" }
  s.source       = { :git => "http://github.com/juzzin/GUYLabeledActivityIndicatorView.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.resource  = "Classes/LabeledActivityView.xib"
end
