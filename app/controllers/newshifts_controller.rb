class NewshiftsController < ApplicationController
  before_action :set_newshift, only: [:show, :update, :destroy]

  # GET /newshifts
  def index
    @newshifts = Newshift.all

    render json: @newshifts
  end

  # GET /newshifts/1
  def show
    render json: @newshift
  end

  # POST /newshifts
  def create
    @newshift = Newshift.new(newshift_params)

    if @newshift.save
      render json: @newshift, status: :created, location: @newshift
    else
      render json: @newshift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /newshifts/1
  def update
    if @newshift.update(newshift_params)
      render json: @newshift
    else
      render json: @newshift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /newshifts/1
  def destroy
    @newshift.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newshift
      @newshift = Newshift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newshift_params
      params.require(:newshift).permit(:user_id, :start, :end, :break_length, :org)
    end
end
