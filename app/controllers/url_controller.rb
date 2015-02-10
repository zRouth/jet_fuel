class UrlController < ApplicationController

  def index
    @url = Url.new
  end
end
