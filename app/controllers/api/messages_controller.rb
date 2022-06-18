# frozen_string_literal: true

class Api::MessagesController < ApplicationController
    def index
      greeting = Message.order(Arel.sql('RANDOM()')).first
      render json: { message: greeting.content }
    end
  end
end
