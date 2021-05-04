class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login, :update]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # Register
  def create

    @user = User.create(user_params)
    puts user_params
    if @user.valid? && @user.password.length > 5
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: user_params}
    end
  end

  # Logging in
  def login
    @user = User.find_by(name: params[:name])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password login"}
    end
  end

  def auto_login
    render json: @user
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      puts @user.organisation_id
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:organisation_id, :name, :email_address, :password)
    end
end
