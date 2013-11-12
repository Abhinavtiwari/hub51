class SelectionsController < ApplicationController

  def index
    @selections = Selection.all
  end

  def show
    @selection = Selection.find_by(id: params[:id])
  end

  def new
    @selection = Selection.new
  end

  def create
    @selection = Selection.new
    @selection.diner = params[:diner]
    @selection.first_starter_id = params[:first_starter_id]
    @selection.second_starter_id = params[:second_starter_id]
    @selection.first_entree_id = params[:first_entree_id]
    @selection.second_entree_id = params[:second_entree_id]
    @selection.comments = params[:comments]

    if @selection.save
      redirect_to selections_url, notice: "Selection created successfully."
    else
      render 'new'
    end
  end

  def edit
    @selection = Selection.find_by(id: params[:id])
  end

  def update
    @selection = Selection.find_by(id: params[:id])
    @selection.diner = params[:diner]
    @selection.first_starter_id = params[:first_starter_id]
    @selection.second_starter_id = params[:second_starter_id]
    @selection.first_entree_id = params[:first_entree_id]
    @selection.second_entree_id = params[:second_entree_id]
    @selection.comments = params[:comments]

    if @selection.save
      redirect_to selections_url, notice: "Selection updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @selection = Selection.find_by(id: params[:id])
    @selection.destroy

    redirect_to selections_url, notice: "Selection deleted."
  end
end
