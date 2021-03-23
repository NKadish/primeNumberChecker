class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    # @cache = ActiveSupport::Cache::MemoryStore.new
    @number = params[:a].to_i
    if Rails.cache.read(params[:a]) == 'true' || Rails.cache.read(params[:a]) == 'false'
      puts "hello world"
      @result = Rails.cache.read(params[:a])
    else 
      @result = Prime.send(:prime?, params[:a])
      Rails.cache.write(params[:a], @result)
      Rails.cache.write("4", false)
      puts Rails.cache.read(params[:a])
      puts Rails.cache.read("4")
    end
    render :show
  end
  
end
