Pod::Spec.new do |s|
  s.name     = 'vCardSerialization'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Encodes and decodes between vCard files and AddressBook records.'
  s.homepage = 'https://github.com/Wooder/vCardSerialization'
  s.social_media_url = 'https://twitter.com/mattt'
  s.authors  = { 'Mattt' => 'mattt@me.com' }
  s.source   = { :git => 'https://github.com/Wooder/vCardSerialization.git', :tag => '0.0.2' }
  s.source_files = 'vCardSerialization'
  s.requires_arc = true

  s.ios.frameworks = "AddressBook"
  s.ios.deployment_target = '13.0'
end
