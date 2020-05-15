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

  get 'say/:number/:phrase'  do
    @num=params[:number]
    @phr=params[:phrase]
    @num.times do
     @phr
    end
    end

  end





end
