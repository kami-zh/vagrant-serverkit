$:.unshift File.expand_path('../lib', __FILE__)

require 'vagrant-serverkit/version'

Gem::Specification.new do |s|
  s.name         = 'vagrant-serverkit-mock'
  s.version      = VagrantPlugins::Serverkit::VERSION
  s.authors      = 'kami'
  s.email        = 'hiroki.zenigami@gmail.com'

  s.summary      = 'Vagrant plugin for Serverkit.'
  s.description  = 'Vagrant plugin for Serverkit.'
  s.homepage     = 'https://github.com/kami-zh/vagrant-serverkit'

  s.files        = `git ls-files -z`.split("\x0")
  s.require_path = 'lib'

  s.add_dependency 'serverkit', '= 0.2.3'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
end
