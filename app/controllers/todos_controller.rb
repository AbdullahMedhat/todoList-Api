class TodosController < ApplicationController
  def index
    @todos = Todo.all
    respond_to do |format|
      format.json {render :json =>@todos}
    end
  end

  def update
    @todos = Todo.find params[:id]
    @todos.update! todos_params
    respond_to do |format|
      format.json {render :json => @todos}
    end
  end

  def create
    @todos = Todo.new todos_params
    @todos.save!
    respond_to do |format|
      format.json {render :json => @todos}
    end
  end

  def destroy
    @todos = Todo.find params[:id]
    @todos.destroy!
    respond_to do |format|
      format.json {render :json => @todos}
    end
  end

  private
  def todos_params
    params.require(:todos).permit(:title)
  end
end
