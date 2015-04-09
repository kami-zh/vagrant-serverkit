module VagrantPlugins
  module Serverkit
    class Config < Vagrant.plugin('2', :config)
      attr_accessor :host
      attr_accessor :recipe
      attr_accessor :variables

      def initialize
        @host      = UNSET_VALUE
        @recipe    = UNSET_VALUE
        @variables = UNSET_VALUE
      end

      def finalize!
        @host      = nil if @host      == UNSET_VALUE
        @recipe    = nil if @recipe    == UNSET_VALUE
        @variables = nil if @variables == UNSET_VALUE
      end
    end
  end
end
