class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :destroy, :completed]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end

  def update
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def completed
    @todo.update_attribute(:complete, true)
    redirect_to todos_path
  end

  def delete_all
    @todos = Todo.all
    @todos.destroy_all
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
