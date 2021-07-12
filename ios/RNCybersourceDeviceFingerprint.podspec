
Pod::Spec.new do |s|

  s.name         = "RNCybersourceDeviceFingerprint"
  s.version      = "0.0.3"
  s.summary      = "This library returns the device fingerprint, required for Cybersource mobile implementations"
  s.homepage     = "https://github.com/JhonySpark/react-native-fingerprint-genrator"
  s.license      = "MIT"
  s.author       = { "Jhonatan F. Ciriaco" => "jhonatanferreira13@hotmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/JhonySpark/react-native-fingerprint-genrator.git", :tag => "master" }
  s.source_files  = "**/*.{h,m}"
  s.vendored_frameworks = 'TMXProfiling.framework', 'TMXProfilingConnections.framework'
  s.preserve_paths = "**/*.js"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"

end
