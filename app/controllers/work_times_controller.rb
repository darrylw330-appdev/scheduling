# app/controllers/work_times_controller.rb
class WorkTimesController < ApplicationController
  def index
    @work_times = WorkTime.all
  end

  def show
    @work_time = WorkTime.find(params[:id])
  end

  def new
    @work_time = WorkTime.new
  end

  def create
    @work_time = WorkTime.new(work_time_params)

    if @work_time.save
      redirect_to work_time_path(@work_time), notice: "Work time was successfully created."
    else
      render :new
    end
  end

  def edit
    @work_time = WorkTime.find(params[:id])
  end

  def update
    @work_time = WorkTime.find(params[:id])

    if @work_time.update(work_time_params)
      redirect_to work_time_path(@work_time), notice: "Work time was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @work_time = WorkTime.find(params[:id])
    @work_time.destroy

    redirect_to work_times_path, notice: "Work time was successfully destroyed."
  end

  private

  def work_time_params
    params.require(:work_time).permit(:start_time, :end_time)
  end
end
