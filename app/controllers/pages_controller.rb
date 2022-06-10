class PagesController < ApplicationController
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
    @page = Page.new(page_params)

    if @page.save
      redirect_to @page
    else
      # https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/422
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to @page
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def page_params
      params.require(:page).permit(:title, :content, :status)
    end
end
