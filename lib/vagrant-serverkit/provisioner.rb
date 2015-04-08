require 'serverkit'

module VagrantPlugins
  module Serverkit
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def provision
        # Need to set a correct value to connect to vm.
        options = {
          recipe:    config.recipe,
          variables: config.variables,
          hosts:     @machine.ssh_info[:host]
        }

        ::Serverkit::Command.new(options).call
      end
    end
  end
end
