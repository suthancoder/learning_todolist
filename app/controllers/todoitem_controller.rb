class TodoitemController < ApplicationController

  def index
    @todoitems = ToDoItem.all
  end

  def show
    @todoitem = ToDoItem.find(params[:id])
  end

  def new
    @todoitem = ToDoItem.new
  end

  def create
    @todoitem = ToDoItem.new(todoitem_params)
    @todoitem.save

    redirect_to index_path
  end

  def edit
  end

  def update
  end

  private

  def todoitem_params
    params.require(:todoitem).permit(:tite, :description, :status)
  end
end
