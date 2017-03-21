require 'ostruct'

module Rswag
  module Ui
    class Configuration
      attr_reader :swagger_endpoints, :oauth2, :oauth_redirect_url

      def initialize
        @swagger_endpoints = []
        @oauth2 = OpenStruct.new(client_id: '', application_name: '', realm: '', client_secret: '')
      end

      def swagger_endpoint(path, title)
        @swagger_endpoints << OpenStruct.new(path: path, title: title)
      end

      def oauth2_client_id(id)
        @oauth2[:client_id] = id
      end

      def oauth2_application_name(name)
        @oauth2[:application_name] = name
      end

      def oauth2_realm(realm)
        @oauth2[:realm] = realm
      end

      def oauth2_client_secret(secret)
        @oauth2[:client_secret] = secret
      end

      def mount_path(path)
        @oauth_redirect_url = "#{path}/o2c.html"
      end
    end
  end
end
