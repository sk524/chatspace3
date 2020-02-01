class MessagesController < ApplicationController
  defore_action :set_group

  def index
    @message = Message.new
    @me
end
