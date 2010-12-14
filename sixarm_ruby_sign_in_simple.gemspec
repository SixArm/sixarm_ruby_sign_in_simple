Gem::Specification.new do |s|

  s.name              = "sixarm_ruby_sign_in_simple"
  s.summary           = "SixArm Ruby Gem: Sign In for a typical Rails application using a simple username and password"
  s.version           = "1.1.4"
  s.author            = "SixArm"
  s.email             = "sixarm@sixarm.com"
  s.homepage          = "http://sixarm.com/"
  s.signing_key       = '/home/sixarm/keys/certs/sixarm-rsa1024-x509-private.pem'
  s.cert_chain        = ['/home/sixarm/keys/certs/sixarm-rsa1024-x509-public.pem']

  s.platform          = Gem::Platform::RUBY
  s.require_path      = 'lib'
  s.has_rdoc          = true
  s.files             = ['README.rdoc','LICENSE.txt','lib/sixarm_ruby_sign_in_simple.rb']
  s.test_files        = ['test/sixarm_ruby_sign_in_simple_test.rb']

  s.add_dependency('sixarm_ruby_sign_in', '>= 1.1.4')
  s.add_dependency('sixarm_ruby_application_controller_mock', '>= 1.2.6') # for test

end
