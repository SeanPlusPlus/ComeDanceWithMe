# controller.rb

set :haml, :format => :html5

get '/' do
  haml :index, :locals => {
    :msg => "hello world"
  }
end
