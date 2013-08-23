class TasksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def edit
    @task = Task.find(params[:id])
  end
  def create
    @task = Task.new(params[:task])
      if @task.save
        redirect_to task_path(@task)
      else
       render 'new'
      end
  end
  def update
    @task = Task.find(params[:id])
      if @task.update_attributes(params[:task])
        redirect_to @task
      else
       render 'edit'
      end
  end
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path
  end
end
