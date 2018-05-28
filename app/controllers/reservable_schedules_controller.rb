class ReservableSchedulesController < ApplicationController
  before_action :set_reservable_schedule, only: [:show, :edit, :update, :destroy]

  # GET /reservable_schedules
  # GET /reservable_schedules.json
  def index
    @reservable_schedules = ReservableSchedule.all
  end

  # GET /reservable_schedules/1
  # GET /reservable_schedules/1.json
  def show
  end

  # GET /reservable_schedules/new
  def new
    @reservable_schedule = ReservableSchedule.new
  end

  # GET /reservable_schedules/1/edit
  def edit
  end

  # POST /reservable_schedules
  # POST /reservable_schedules.json
  def create
    @reservable_schedule = ReservableSchedule.new(reservable_schedule_params)

    respond_to do |format|
      if @reservable_schedule.save
        format.html { redirect_to @reservable_schedule, notice: 'Reservable schedule was successfully created.' }
        format.json { render :show, status: :created, location: @reservable_schedule }
      else
        format.html { render :new }
        format.json { render json: @reservable_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservable_schedules/1
  # PATCH/PUT /reservable_schedules/1.json
  def update
    respond_to do |format|
      if @reservable_schedule.update(reservable_schedule_params)
        format.html { redirect_to @reservable_schedule, notice: 'Reservable schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservable_schedule }
      else
        format.html { render :edit }
        format.json { render json: @reservable_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservable_schedules/1
  # DELETE /reservable_schedules/1.json
  def destroy
    @reservable_schedule.destroy
    respond_to do |format|
      format.html { redirect_to reservable_schedules_url, notice: 'Reservable schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservable_schedule
      @reservable_schedule = ReservableSchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservable_schedule_params
      params.require(:reservable_schedule).permit(:fp_id, :starting_time, :ending_time, :date)
    end
end
