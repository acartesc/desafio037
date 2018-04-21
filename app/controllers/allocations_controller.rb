class AllocationsController < ApplicationController
  def index
    @allocations = Allocation.all
  end

  def create
    allocation = Allocation.new(user_id: params[:user_id], project_id: params[:project_id])
    if allocation.save
      redirect_to user_path(params[:user_id]), notice: "Proyecto asignado correctamente"
    else
      redirect_to user_path(params[:user_id]), alert: "Proyecto no ha podido ser asignado"
    end

  end

end
