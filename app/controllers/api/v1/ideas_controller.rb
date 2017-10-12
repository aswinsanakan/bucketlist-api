module Api::V1
  class IdeasController < ApplicationController
    def index
      @ideas = Idea.all.order("updated_at desc")
      render json: @ideas
    end
  end
end
