class TasksController < ApplicationController
  def index
    @current = Tasks.all.where("due < ?", Date.today+1.day).order("due ASC")
  end

  def destroy
    @task = Tasks.find(params[:id])
    @task.destroy
    # redirect_to root_path
  end
end
