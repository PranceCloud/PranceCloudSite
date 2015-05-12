module Prancecloud
  class Phone < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers

    register Padrino::Admin::AccessControl
    register CompassInitializer

    enable :sessions

    get '/' do
      render 'base/index'
    end

    enable :sessions

  end
end
