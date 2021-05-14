class TodoitemController < ApplicationController
  before_action :set_todoitem, only: [:show, :edit, :update, :destroy]

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
    # @todoitem = ToDoItem.new(title: params[:todoitem][:title], description: params[:todoitem][:description], status: params[:todoitem][:status] )

    @todoitem = ToDoItem.new(todoitem_params)
    @todoitem.save

    redirect_to index_path
  end

  def edit
  end

  def update
  end

  private

  def set_todoitem

  end

  def todoitem_params
    params.require(:todoitem).permit(:tite, :description, :status)
  end

end

