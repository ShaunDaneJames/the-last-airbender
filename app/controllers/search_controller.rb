class SearchController < ApplicationController

  def index
    @affiliation_data = AvatarFacade.get_data(params[:nation])
  end
end
