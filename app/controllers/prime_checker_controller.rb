class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    cache = ActiveSupport::Cache::MemoryStore.new
    @number = params[:a].to_i
    if cache.read(params[:a]) == true || cache.read(params[:a]) == false
      puts "hello world"
      @result = cache.read(params[:a])
    else 
      @result = Prime.send(:prime?, params[:a])
      cache.write(params[:a], @result)
      cache.write("4", false)
      puts cache.read(params[:a])
      puts cache.read("4")
    end
    render :show
  end
  
end
