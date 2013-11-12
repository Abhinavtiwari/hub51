class EntreesController < ApplicationController

  def index
    @entrees = Entree.all
  end

  def show
    @entree = Entree.find_by(id: params[:id])
  end

  def new
  end

  def create
    @entree = Entree.new
    @entree.name = params[:name]
    @entree.description = params[:description]
    @entree.category_id = params[:category_id]

    if @entree.save
      redirect_to entrees_url, notice: "Entree created successfully."
    else
      render 'new'
    end
  end

  def edit
    @entree = Entree.find_by(id: params[:id])
  end

  def update
    @entree = Entree.find_by(id: params[:id])
    @entree.name = params[:name]
    @entree.description = params[:description]
    @entree.category_id = params[:category_id]

    if @entree.save
      redirect_to entrees_url, notice: "Entree updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @entree = Entree.find_by(id: params[:id])
    @entree.destroy

    redirect_to entrees_url, notice: "Entree deleted."
  end
end
