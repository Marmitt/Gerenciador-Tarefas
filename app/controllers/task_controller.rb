class TaskController < ApplicationController
  def index
  end

  def create
    Task.create(description: params[:description], finished: false)
    redirect_to action: 'index'
  end

  def finished
    #render text: 'Teste' + params[:id]
    Task.find_by_id(params[:id]). update_attribute(:finished, true)
    redirect_to action: 'index'
  end
end
