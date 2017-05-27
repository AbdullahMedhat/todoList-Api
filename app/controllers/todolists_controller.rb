class TodolistsController < ApplicationController
  # skip_before_action :authenticate_custom
  def index
    @todolists = Todolist.all
    render json: @todolists
  end

  def update
    @todoLists = Todolist.find params[:id]
    @todoLists.update! todoLists_params
    render json: @todoLists
  end

  def create
    @todoLists = Todolist.new todoLists_params
    @todoLists.save!
    render json: @todoLists
  end

  #toDo delete all todos for this list
  def destroy
    @todoLists = Todolist.find params[:id]
    @todoLists.destroy!
    render json: @todoLists
  end

  private
  def todoLists_params
    params.require(:todoLists).permit(:name)
  end
end
