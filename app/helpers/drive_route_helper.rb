# Helper methods defined here can be accessed in any controller or view in the application

module Prancecloud
  class App
    module DriveRouteHelper
      def has_user_agent_by(request, agent)
        return true if (/#{agent}/i =~ request.user_agent)
        false
      end
    end

    helpers DriveRouteHelper
  end
end
