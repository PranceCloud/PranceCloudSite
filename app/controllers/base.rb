Prancecloud::App.controllers :base do
  
  get :index, :map => '/foo/bar' do
    '-' + @client_is_pc.to_s
    # render 'index'
  end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  

end
