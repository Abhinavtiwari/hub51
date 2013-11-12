class RestrictionsController < ApplicationController

  def index
    @restrictions = Restriction.all
  end

  def show
    @restriction = Restriction.find_by(id: params[:id])
  end

  def new
  end

  def create
    @restriction = Restriction.new
    @restriction.starter_id = params[:starter_id]
    @restriction.entree_id = params[:entree_id]

    if @restriction.save
      redirect_to restrictions_url, notice: "Restriction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restriction = Restriction.find_by(id: params[:id])
  end

  def update
    @restriction = Restriction.find_by(id: params[:id])
    @restriction.starter_id = params[:starter_id]
    @restriction.entree_id = params[:entree_id]

    if @restriction.save
      redirect_to restrictions_url, notice: "Restriction updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @restriction = Restriction.find_by(id: params[:id])
    @restriction.destroy

    redirect_to restrictions_url, notice: "Restriction deleted."
  end
end
