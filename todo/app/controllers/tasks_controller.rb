class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update
    @task = Task.find_by(id:params[:id])
    @task.task = params[:task]
    if @task.save
      redirect_to tasks_index_path, notice:'タスクを1件更新しました'
    else
      redirect_to tasks_index_path, alert:'タスクの更新に失敗しました'
    end
  end

  def destroy
    @task = Task.find_by(id:params[:id])
    @task.destroy
    if @task.destroy
      redirect_to tasks_index_path, notice:'タスクを1件削除しました'
    else
      redirect_to tasks_index_path, alert:'タスクの削除に失敗しました'
    end
  end


end
