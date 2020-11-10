class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :delete]

  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_url
  end

  # PATCH/PUT /tasks/1
  def update
    @task.update(task_params)
    redirect_to @task
  end

  # DELETE /tasks/1
  def delete
    @task.destroy
    redirect_to tasks_url
  end

  
  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :details, :completed)
    end
end
