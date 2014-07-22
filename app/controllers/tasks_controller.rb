class TasksController < ApplicationController
   before_action :authenticate_user!

  def index
    @current = Tasks.all.where("due < ?", Date.today+1.day).order("due ASC")
  end

  def destroy
    @task = Tasks.find(params[:id])
    @task.destroy
    # redirect_to root_path
  end

  def create
    title = params[:title]
    year = params[:date][:year]
    month = params[:date][:month]
    day = params[:date][:day]

    @task = Tasks.create title: title, due: "#{year}-#{month}-#{day}"

     if @task.save
        redirect_to root_path
      end
  end
end
