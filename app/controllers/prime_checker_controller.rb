class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    # @cache = ActiveSupport::Cache::MemoryStore.new
    @number = params[:a].to_i
    cached = Rails.cache.read(params[:a])
    # 12 - 14 used to check for concurrency, glad I checked because it wasn't working but I fixed it
    # if @number == 2
    #   sleep(120)
    # end
    if cached == true || cached == false
      @result = Rails.cache.read(params[:a])
    else 
      @result = Prime.prime?(params[:a])
      Rails.cache.write(params[:a], @result)
    end
    render :show
  end
  
end
