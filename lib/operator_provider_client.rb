require 'operator_provider_client/version'
require 'active_resource'

module AeroAPI

  class AeroOperatorProvider < ActiveResource::Base
    self.site = "http://localhost:6661/api/v1"
  end

  class Operator < AeroOperatorProvider
  	def self.providers_names
     	self.get(:"/providers/names")
  	end
  end

  class Provider < AeroOperatorProvider
  end

end
