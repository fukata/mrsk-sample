require 'socket'

class HomeController < ApplicationController
  def index
    @hostname = Socket.gethostname
  end
end
