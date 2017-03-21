module Rswag
  module Ui
    class HomeController < ActionController::Base

      def index
        @swagger_endpoints = Rswag::Ui.config.swagger_endpoints
        @oauth2 = Rswag::Ui.config.oauth2
        @oauth_redirect_url = Rswag::Ui.config.oauth_redirect_url
        render :index, layout: false
      end

      def o2c
        render file: '../../vendor/assets/components/swagger-ui/o2c.html', status: 200, layout: false
      end
    end
  end
end
