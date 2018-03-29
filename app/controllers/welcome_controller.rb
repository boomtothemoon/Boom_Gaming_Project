class WelcomeController < ApplicationController
  def index
  end

  def about
    @abouts = About.first()
  end

  def contact
    @contacts = Contact.first()
  end

  def games
  end

  def login
  end
end
