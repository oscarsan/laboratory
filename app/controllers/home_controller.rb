class HomeController < ApplicationController


  def index
    redirect_to :measurements
  end
end
