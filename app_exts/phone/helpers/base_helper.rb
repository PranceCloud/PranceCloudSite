# Helper methods defined here can be accessed in any controller or view in the application

module Prancecloud
  class Phone
    module BaseHelper
      def simple_helper_method
        'simple_helper_method'
      end
    end

    helpers BaseHelper
  end
end
