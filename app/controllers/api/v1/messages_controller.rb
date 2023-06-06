class Api::V1::MessagesController < ApplicationController
    def index
      @messages = Message.order('RANDOM()').first(1)
      render json: @messages, status: :ok
    end
  end