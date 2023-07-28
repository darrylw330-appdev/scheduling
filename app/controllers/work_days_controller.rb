# app/controllers/work_days_controller.rb
class WorkDaysController < ApplicationController
  def index
    @work_days = WorkDay.all
  end

  def show
    @work_day = WorkDay.find(params[:id])
  end

  def new
    @work_day = WorkDay.new
  end

  def create
    @work_day = WorkDay.new(work_day_params)

    if @work_day.save
      redirect_to work_day_path(@work_day), notice: "Work day was successfully created."
    else
      render :new
    end
  end

  def edit
    @work_day = WorkDay.find(params[:id])
  end

  def update
    @work_day = WorkDay.find(params[:id])

    if @work_day.update(work_day_params)
      redirect_to work_day_path(@work_day), notice: "Work day was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @work_day = WorkDay.find(params[:id])
    @work_day.destroy

    redirect_to work_days_path, notice: "Work day was successfully destroyed."
  end

  private

  def work_day_params
    params.require(:work_day).permit(:day_name)
  end
end
