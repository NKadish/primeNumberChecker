class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception



  def show
  end

  def new
    cache = ActiveSupport::Cache::MemoryStore.new
    @number = params[:a].to_i
    if cache.read(params[:a])
      puts "hello world"
      @result = cache.read(params[:a])
    else 
      @result = Prime.send(:prime?, *[params[:a]])
      cache.write(params[:a], @result)
      puts cache.read(params[:a])
    end
    render :show
  end
  
end
