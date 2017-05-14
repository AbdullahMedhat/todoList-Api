class TodolistsController < ApplicationController
  def show
    @todolist = Todolist.find(params[:id])
    @todos = @todolist.todos
    respond_to do |format|
      format.json
    end
  end
end
