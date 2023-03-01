require 'socket'

class HomeController < ApplicationController
  def index
    @hostname = Socket.hostname
  end
end
