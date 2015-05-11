module Prancecloud
  class Weixin < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers
    register CompassInitializer

    get '/' do
      'wx'
    end

    enable :sessions

  end
end
