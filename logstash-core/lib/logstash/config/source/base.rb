# encoding: utf-8
module LogStash module Config module Source
  class Base
    PIPELINE_NAME = :main

    def initialize(settings)
      @settings = settings
    end

    def config_debug?
      settings.get_value("config.debug")
    end

    def pipeline_configs
      raise NotImplementedError, "`#pipeline_config` must be implemented!"
    end

    def self.match?(settings)
      raise NotImplementedError, "`.match?` must be implemented!"
    end

    protected
    attr_reader :settings
  end
end end end