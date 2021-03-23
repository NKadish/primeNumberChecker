class PrimeCheckerController < ApplicationController
  protect_from_forgery with: :exception

  def show
  end

  def new
    # @cache = ActiveSupport::Cache::MemoryStore.new
    @number = params[:a].to_i
    cached = Rails.cache.read(params[:a])
    if cached == true || cached == false
      @result = Rails.cache.read(params[:a])
    else 
      @result = Prime.send(:prime?, params[:a])
      Rails.cache.write(params[:a], @result)
    end
    render :show
  end
  
end
