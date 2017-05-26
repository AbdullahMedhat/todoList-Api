class TodosController < ApplicationController
  def index
      @todos = Todos.all
      respond_to do |format|
        format.json {render :json =>@items}
      end
    end

    def update
      # byebug
      @todos = Todos.find params[:id]
      @todos.update! todos_params
      respond_to do |format|
        format.json {render :json => @todos}
      end
    end

    def create
      @todos = Todos.new todos_params
      @todos.save!
      respond_to do |format|
        format.json {render :json => @todos}
      end
    end

    def destroy
      @todos = Todos.find params[:id]
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
