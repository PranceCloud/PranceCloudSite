##
# This file mounts each app in the Padrino project to a specified sub-uri.
# You can mount additional applications using any of these commands below:
#
#   Padrino.mount('blog').to('/blog')
#   Padrino.mount('blog', :app_class => 'BlogApp').to('/blog')
#   Padrino.mount('blog', :app_file =>  'path/to/blog/app.rb').to('/blog')
#
# You can also map apps to a specified host:
#
#   Padrino.mount('Admin').host('admin.example.org')
#   Padrino.mount('WebSite').host(/.*\.?example.org/)
#   Padrino.mount('Foo').to('/foo').host('bar.example.org')
#
# Note 1: Mounted apps (by default) should be placed into the project root at '/app_name'.
# Note 2: If you use the host matching remember to respect the order of the rules.
#
# By default, this file mounts the primary app which was generated with this project.
# However, the mounted app can be modified as needed:
#
#   Padrino.mount('AppName', :app_file => 'path/to/file', :app_class => 'BlogApp').to('/')
#

##
# Setup global project settings for your apps. These settings are inherited by every subapp. You can
# override these settings in the subapps as needed.
#
Padrino.configure_apps do
  # enable :sessions
  set :session_secret, 'c428a5e1478a2192357e8824bf5fa9e2c73e9f0d4e3ac36eae75c5809d37f592'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

PranceCloudURL = 'www.prancecloud.com'

Padrino.mount('Prancecloud::App', :app_file => Padrino.root('app/app.rb')).to('/')
#
Padrino.mount('Prancecloud::Weixin', :app_file => Padrino.root('app_exts/weixin/app.rb')).to('/wx')
Padrino.mount('Prancecloud::Phone', :app_file => Padrino.root('app_exts/phone/app.rb')).to('/ph')
Padrino.mount('Prancecloud::PC', :app_file => Padrino.root('app_exts/pc/app.rb')).to('/pc')

