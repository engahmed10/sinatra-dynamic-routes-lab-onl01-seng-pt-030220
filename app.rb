require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user=params[:name].reverse
  end

  get '/square/:number'  do
    @num=params[:number].to_i
    @number = @num ** @num
    "#{@number}"

  end

end
