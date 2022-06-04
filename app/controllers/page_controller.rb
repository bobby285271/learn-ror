class PageController < ApplicationController
  def index
    # This fetches all pages from db.
    @pages = Page.all
  end

  def show
    # :id will be captured when handling a request
    @page = Page.find(params[:id])
  end
end
