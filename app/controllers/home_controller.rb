class HomeController < ApplicationController
  def index
    unless author_signed_in?
      redirect_to new_author_session_path
    end
  end
end
