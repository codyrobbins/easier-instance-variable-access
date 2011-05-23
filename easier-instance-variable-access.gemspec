Gem::Specification.new do |s|
  s.name     = 'easier-instance-variable-access'
  s.version  = '1.1'
  s.summary  = 'Access instance variables in Ruby the way you should be able to.'
  s.homepage = 'http://codyrobbins.com/software/easier-instance-variable-access'
  s.author   = 'Cody Robbins'
  s.email    = 'cody@codyrobbins.com'

  s.post_install_message = '
-------------------------------------------------------------
Follow me on Twitter: http://twitter.com/codyrobbins
-------------------------------------------------------------

'

  s.files = `git ls-files`.split
end