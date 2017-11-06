class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    puts "hallo"
  end
end
