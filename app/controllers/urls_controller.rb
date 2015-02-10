class UrlsController < ApplicationController

  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.create(poopin)
    if @url.save
      redirect_to urls_path(:url_id)
    end
  end

  def show
    if params[:slug]
      @url = Url.find_by(slug: params[:slug])
      if redirect_to @url.full_url
        # @url.clicks += 1
        @url.save
      end
    else
      @url = Url.find(params[:id])
    end
  end

  private

  def poopin
    params.require(:url).permit(:full_url)
  end
end
