class TodolistsController < ApplicationController
  skip_before_action :authenticate_custom
  def index
    @todolists = Todolist.all
    respond_to do |format|
      format.json {render :json =>@todolists}
    end
  end

  def update
    @todoLists = Todolist.find params[:id]
    @todoLists.update! todoLists_params
    respond_to do |format|
      format.json {render :json => @todoLists}
    end
  end

  def create
    @todoLists = Todolist.new todoLists_params
    @todoLists.save!
    respond_to do |format|
      format.json {render :json => @todoLists}
    end
  end

  def destroy
    @todoLists = Todolist.find params[:id]
    @todoLists.destroy!
    respond_to do |format|
      format.json {render :json => @todoLists}
    end
  end

  private
  def todoLists_params
    params.require(:todoLists).permit(:name)
  end
end
