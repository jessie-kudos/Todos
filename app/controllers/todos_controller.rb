class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:edit, :update, :destroy, :completed]

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.build(todo_params)
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
    @todos = current_user.todos
    @todos.destroy_all
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def set_todo
    @todo = current_user.todos.find(params[:id])
  end
end
