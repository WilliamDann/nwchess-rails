class RegistrationsController < ApplicationController
  before_action :set_registration,        only: %i[ show edit update destroy ]
  before_action :require_user_logged_in!, only: %i[ edit new update destroy ]
  
  before_action :verify_user, only: %i[ update edit destroy ]

  # GET /registrations or /registrations.json
  def index
    @registrations = Registration.all
  end

  # GET /registrations/1 or /registrations/1.json
  def show
  end

  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # GET /registrations/1/edit
  def edit
  end

  # POST /registrations or /registrations.json
  def create
    @registration = Registration.new(registration_params)


    respond_to do |format|
      if @registration.save
        format.html { redirect_to registration_url(@registration), notice: "Registration was successfully created." }
        format.json { render :show, status: :created, location: @registration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registrations/1 or /registrations/1.json
  def update
    respond_to do |format|
      if @registration.update(registration_params)
        format.html { redirect_to registration_url(@registration), notice: "Registration was successfully updated." }
        format.json { render :show, status: :ok, location: @registration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1 or /registrations/1.json
  def destroy
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to registrations_url, notice: "Registration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration
      @registration = Registration.find(params[:id])
    end

    # verify that the user is the same as the registration
    def verify_user
      if Current.user.id != @registration.user_id
        redirect_to '/events/'+@registration.event_id.to_s, alert: "You cannot modify this user's registration"
        return false
      end
    end

    # Only allow a list of trusted parameters through.
    def registration_params
      params.require(:registration).permit(:registrationType, :event_id, :user_id)
    end
end
