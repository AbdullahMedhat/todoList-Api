class TodoListsController < ApplicationController
  def index
    @todoLists = Todolists.all
    respond_to do |format|
      format.json {render :json =>@items}
    end
  end

  def update
    # byebug
    @todoLists = Todolists.find params[:id]
    @todoLists.update! todoLists_params
    respond_to do |format|
      format.json {render :json => @todoLists}
    end
  end

  def create
    @todoLists = Todolists.new todoLists_params
    @todoLists.save!
    respond_to do |format|
      format.json {render :json => @todoLists}
    end
  end

  def destroy
    @todoLists = Todolists.find params[:id]
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
