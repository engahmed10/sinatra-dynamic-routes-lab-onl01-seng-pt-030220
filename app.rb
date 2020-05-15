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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1,@word2,@word3,@word4,@word5 = params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
      @operations =params[:operation]
      @number1=params[:number1].to_i
      @number2=params[:number2].to_i
      case @operations
      when "add"
        (@number1 + @number2).to_s
      when "subtract"
        (@number2 - @number1).to_s
      when "multiply"
        (@number2 * @number1).to_s
      when "divide"
        (@number1 / @number2).to_s
      end
  end

end
