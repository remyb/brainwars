class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "contact"
  end

  def about
    @title = "about"
  end

end
