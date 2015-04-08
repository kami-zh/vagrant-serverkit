module VagrantPlugins
  module Serverkit
    class Plugin < Vagrant.plugin('2')
      name 'Serverkit'

      provisioner :serverkit do
        require_relative 'provisioner'

        Provisioner
      end

      config :serverkit, :provisioner do
        require_relative 'config'

        Config
      end
    end
  end
end
