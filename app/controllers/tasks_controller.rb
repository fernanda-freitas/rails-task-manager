class TasksController < ApplicationController

  # Create (form)
  def new
    @task = Task.new
  end

  # Create (instance)
  def create
    @task = Task.create(task_params)
    redirect_to tasks_path(@task)
  end

  # Read (all)
  def index
    @tasks = Task.all
  end

  # Read (one)
  def show
    @task = Task.find(params[:id])
  end

  # Update
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  # Delete
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
