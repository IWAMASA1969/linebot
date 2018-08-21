class EchoController < ApplicationController
  def callback
    body = request.body.read
    signature = request.env['HTTP_X_LINE_SIGNATURE']

    bot = LinebotWrapper.new

    render :nothing => true, :status => 404 and return unless bot.validate_signature(body, signature)

    bot.hello(body)
    render :nothing => true, :status => 200
  end
end
