class PageController < ApplicationController
  def index
    # This fetches all pages from db.
    @pages = Page.all
  end

  def show
    # :id will be captured when handling a request
    @page = Page.find(params[:id])
  end

  def new
    # Instantiates a new article, but does not save it
    @page = Page.new
  end

  def create
    # Title and content here are dummy values
    @page = Page.new(title: "...", content: "...")

    if @page.save
      redirect_to @page
    else
      # https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/422
      render :new, status: :unprocessable_entity
    end
  end
end
