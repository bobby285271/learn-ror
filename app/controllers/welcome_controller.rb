class WelcomeController < ApplicationController
  def index
    # This fetches all pages from db.
    @pages = Page.all
  end
end
