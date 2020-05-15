require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user=params[:name].reverse
  end

  get '/square/:number'  do
    @num=params[:number].to_i
    @number = @num * @num
    @number.to_s
  end

  get '/say/:number/:phrase'  do
    @num=params[:number].to_i
    @phr=params[:phrase]
    string=""
    @num.times {
     string +="#{@phr}\n"
   }
  string
  end






end
