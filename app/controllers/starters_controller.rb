class StartersController < ApplicationController

  def index
    @starters = Starter.all.order(:category_id)
  end

  def show
    @starter = Starter.find_by(id: params[:id])
  end

  def new
  end

  def create
    @starter = Starter.new
    @starter.name = params[:name]
    @starter.description = params[:description]
    @starter.category_id = params[:category_id]

    if @starter.save
      redirect_to starters_url, notice: "Starter created successfully."
    else
      render 'new'
    end
  end

  def edit
    @starter = Starter.find_by(id: params[:id])
  end

  def update
    @starter = Starter.find_by(id: params[:id])
    @starter.name = params[:name]
    @starter.description = params[:description]
    @starter.category_id = params[:category_id]

    if @starter.save
      redirect_to starters_url, notice: "Starter updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @starter = Starter.find_by(id: params[:id])
    @starter.destroy

    redirect_to starters_url, notice: "Starter deleted."
  end
end
