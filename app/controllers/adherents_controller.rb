class AdherentsController < ApplicationController
  def index
    @adherents = Adherent.all
  end

  def show
    @adherent = Adherent.find(params[:id])
  end

end
