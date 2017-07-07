class SubTasksController < ApplicationController
  def index
    @sub_tasks = SubTask.all
  end
  def show

  end
  def new
    @sub_task = SubTask.new

  end
  def create
    if params[:task_id].present?
      @task = Task.find(params[:task_id])
      @sub_task = @task.sub_tasks.new(update_params)
    else
      @sub_task = SubTask.new(update_params)
      @task = @sub_task.task
    end
     if @sub_task.save
      redirect_to task_path(@sub_task.task)
    else
      render "tasks/show"
    end
  end
  def edit
    @sub_task = SubTask.find(params[:id])
  end

  def destroy
    find_by_id
    @sub_task.destroy
    redirect_to action: "index"
  end

  def update
    find_by_id
    @sub_task.update(update_params)
    redirect_to action: "index"
  end



  private
  def find_by_id
    @sub_task = SubTask.find(params[:id])
  end
  def update_params
    params.require(:sub_task).permit(:name, :photo, :photo_cache, :task_id)
  end

end
