class AdherentsController < ApplicationController
  def index
    @adherents = Adherent.all
  end

  def show
    @adherent = Adherent.find(params[:id])
  end

  def new
    @adherent = Adherent.new
  end

  def create
    @adherent = Adherent.new(params[:adherent])
    if @adherent.save
      @adherent_info.save
      flash[:success] = "Object successfully created"
      redirect_to @adherent
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @adherent = Adherent.find(:id)
  end

  def update
    @adherent = Adherent.find(params[:id])
    if @adherent.update_attributes(params[:adherent])
      flash[:success] = "Object was successfully updated"
      redirect_to @adherent
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    @adherent = Adherent.find(params[:id])
    if @adherent.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to adherents_path
    else
      flash[:error] = 'Something went wrong'
      redirect_to pages_path
    end
  end
end
