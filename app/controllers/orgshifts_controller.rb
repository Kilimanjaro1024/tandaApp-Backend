class OrgshiftsController < ApplicationController
  before_action :set_orgshift, only: [:show, :update, :destroy]

  # GET /orgshifts
  def index
    @orgshifts = Orgshift.all

    render json: @orgshifts
  end

  # GET /orgshifts/1
  def show
    render json: @orgshift
  end

  # POST /orgshifts
  def create
    @orgshift = Orgshift.new(orgshift_params)

    if @orgshift.save
      render json: @orgshift, status: :created, location: @orgshift
    else
      render json: @orgshift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orgshifts/1
  def update
    if @orgshift.update(orgshift_params)
      render json: @orgshift
    else
      render json: @orgshift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orgshifts/1
  def destroy
    @orgshift.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orgshift
      @orgshift = Orgshift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orgshift_params
      params.require(:orgshift).permit(:user_id, :start, :end, :break_length, :org, :name)
    end
end
