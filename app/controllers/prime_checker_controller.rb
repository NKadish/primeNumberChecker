class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    @result = Prime.send(:prime?, *[params[:a]])
    @number = params[:a].to_i
    render :show
  end
  
end
