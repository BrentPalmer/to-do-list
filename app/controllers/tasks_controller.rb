class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)


    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end

end