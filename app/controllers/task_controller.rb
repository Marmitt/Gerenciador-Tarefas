class TaskController < ApplicationController
  def index
  end

  def create
    task = Task.new(description: params[:description], finished: false)
    if task.save!
      redirect_to action: 'index'
    else
      redirect_to action: 'index', notice: 'Tarefa nao foi criada.'
  end

  def finished
    #render text: 'Teste' + params[:id]
    Task.find_by_id(params[:id]). update_attribute(:finished, true)
    redirect_to action: 'index'
  end
end
