class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @sub_task = SubTask.new
  end
  def show
    find_by_id
    @sub_task = SubTask.new
  end
  def new
    @task = Task.new

  end
  def create
    @task = Task.new(update_params)
    @task.save
    redirect_to action: "index"

  end
  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    find_by_id
    @task.destroy
    redirect_to action: "index"
  end

  def update
    find_by_id
    @task.update(update_params)
    redirect_to action: "index"
  end



  private
  def find_by_id
    @task = Task.find(params[:id])
  end
  def update_params
    params.require(:task).permit(:name, :description)
  end

end
