class DoorsController < ApplicationController
  before_action :set_door, only: [:show, :update, :edit, :destroy]
  def index
    @doors = Door.all
  end

  def show
  end

  def new
    @door = Door.new
  end

  def create
    @door = Door.new(door_params)
    if @door.save
      flash[:notice] = "Successfully made a new door"
      redirect_to @door
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @door.update(door_params)
      flash[:notice] ="You updated your door!"
      redirect_to @door
    else
      render :edit
    end
  end

  def destroy
    @door.destroy
    redirect_to doors_path
  end

  private

  def door_params
    params.require(:door).permit(:size, :color)
  end

  def set_door
    @door = Door.find(params[:id])
  end

end
