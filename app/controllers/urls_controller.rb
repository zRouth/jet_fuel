class UrlsController < ApplicationController

  def index
    @url = Url.new
  end

  def create
    @url = Url.create(poopin)
    if @url.save
      redirect_to urls_path(:url_id)
    end
  end

  def show
    @url = Url.find_by(slug: params[:slug])
  end

  private

  def poopin
    params.require(:url).permit(:full_url)
  end
end
