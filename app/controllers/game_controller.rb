class GameController < ApplicationController


#On first call, set a secret number in a cookie
  def try
    if cookies[:randomnumber].nil?
    cookies[:randomnumber] = rand(1..10)
    end
    # @number = cookies[:randomnumber]
      @guess=params[:number].to_i

      if cookies[:randomnumber].to_i > @guess
        @results_string = "Too low"
      elsif cookies[:randomnumber].to_i < @guess
        @results_string = "Too high"
      else
        @results_string = "You won!"
      end

    # render "try.html.erb"
  end
end
