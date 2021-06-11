class TodoitemsController < ApplicationController
  layout :home_page_layouts, only: [:index]

  before_action :set_todoitem, only: [:show, :edit, :update, :destroy]

  def index
    @todoitems = ToDoItem.all
  end

  def show
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

      @todoitem.attributes = todoitem_params
      # @todoitem.update(title: params["todoitem"]["title"], description: params["todoitem"]["description"], status: params["todoitem"]["status"])
      if @todoitem.save
        redirect_to :action => 'show', id: @todoitem
      else
        render :show
      end
  end

  def destroy
    @todoitem.delete
    redirect_to index_path
  end

  private

  def set_todoitem
    @todoitem = ToDoItem.find(params[:id])
  end

  def todoitem_params
    params.require(:todoitem).permit(:title, :description, :status)
  end

  def home_page_layouts
    "home_page"
  end

end

