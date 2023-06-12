class UserErrrosController < ApplicationController
  before_action :set_user_errro, only: %i[ show edit update destroy ]

  # GET /user_errros or /user_errros.json
  def index
    @user_errros = UserErrro.all
  end

  # GET /user_errros/1 or /user_errros/1.json
  def show
  end

  # GET /user_errros/new
  def new
    @user_errro = UserErrro.new
  end

  # GET /user_errros/1/edit
  def edit
  end

  # POST /user_errros or /user_errros.json
  def create
    @user_errro = UserErrro.new(user_errro_params)

    respond_to do |format|
      if @user_errro.save
        format.html { redirect_to user_errro_url(@user_errro), notice: "User errro was successfully created." }
        format.json { render :show, status: :created, location: @user_errro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_errro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_errros/1 or /user_errros/1.json
  def update
    respond_to do |format|
      if @user_errro.update(user_errro_params)
        format.html { redirect_to user_errro_url(@user_errro), notice: "User errro was successfully updated." }
        format.json { render :show, status: :ok, location: @user_errro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_errro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_errros/1 or /user_errros/1.json
  def destroy
    @user_errro.destroy

    respond_to do |format|
      format.html { redirect_to user_errros_url, notice: "User errro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_errro
      @user_errro = UserErrro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_errro_params
      params.require(:user_errro).permit(:user_id, :error_id, :note, :date)
    end
end
