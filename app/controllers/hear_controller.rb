class HearController < ApplicationController
  def create
    logger.info params

    render json: { status: 'ok' }
  end
end
