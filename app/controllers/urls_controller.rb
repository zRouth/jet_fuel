class UrlsController < ApplicationController

  def index
    @url = Url.new
    @urls = Url.order(rank: :desc, created_at: :desc)
  end

  def create
    @url = Url.create(poopin)
    if @url.save
      redirect_to urls_path
    end
  end

  def show
    if params[:slug]
      @url = Url.find_by(slug: params[:slug])
      if redirect_to @url.full_url
        @url.rank += 1
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
