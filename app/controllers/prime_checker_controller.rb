class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    @result = Prime.send(:prime?, *[params[:a]])
    render :show
  end
  
end
