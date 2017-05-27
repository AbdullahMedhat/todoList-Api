class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render json: @todos
  end

  def update
    @todos = Todo.find params[:id]
    @todos.update! todos_params
    render json: @todos
  end

  def create
    @todos = Todo.new todos_params
    @todos.save!
    render json: @todos
  end

  def destroy
    @todos = Todo.find params[:id]
    @todos.destroy!
    render json: @todos
  end

  private
  def todos_params
    params.require(:todos).permit(:title)
  end
end
