require 'sinatra'
require 'socket'

set :port, 8000
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
  sysname = Socket.gethostname
  "This is running on system: #{sysname}"
end
