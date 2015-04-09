require 'serverkit'

module VagrantPlugins
  module Serverkit
    class Provisioner < Vagrant.plugin('2', :provisioner)
      def provision
        ::Serverkit::Command.new(options).call
      end

      private

      def options
        [
          'apply',
          config.recipe,
          "--variables=#{config.variables}",
          "--hosts=#{config.host}"
        ]
      end
    end
  end
end
