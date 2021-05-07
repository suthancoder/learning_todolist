class TodoitemController < ApplicationController
  def index
    @todoitems = ToDoItem.all
  end
end
