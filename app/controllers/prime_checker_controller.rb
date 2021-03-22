class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception
  cache = ActiveSupport::Cache::MemoryStore.new


  def show
  end

  def new
    @number = params[:a].to_i
    if cache.read(params[:a])
      @result = cache.read(params[:a])
    else 
      @result = Prime.send(:prime?, *[params[:a]])
      cache.write(params[:a], @result)
    end
    render :show
  end
  
end
