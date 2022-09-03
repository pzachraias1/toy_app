class MicropstsController < ApplicationController
  before_action :set_micropst, only: %i[ show edit update destroy ]

  # GET /micropsts or /micropsts.json
  def index
    @micropsts = Micropst.all
  end

  # GET /micropsts/1 or /micropsts/1.json
  def show
  end

  # GET /micropsts/new
  def new
    @micropst = Micropst.new
  end

  # GET /micropsts/1/edit
  def edit
  end

  # POST /micropsts or /micropsts.json
  def create
    @micropst = Micropst.new(micropst_params)

    respond_to do |format|
      if @micropst.save
        format.html { redirect_to micropst_url(@micropst), notice: "Micropst was successfully created." }
        format.json { render :show, status: :created, location: @micropst }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @micropst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micropsts/1 or /micropsts/1.json
  def update
    respond_to do |format|
      if @micropst.update(micropst_params)
        format.html { redirect_to micropst_url(@micropst), notice: "Micropst was successfully updated." }
        format.json { render :show, status: :ok, location: @micropst }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @micropst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropsts/1 or /micropsts/1.json
  def destroy
    @micropst.destroy

    respond_to do |format|
      format.html { redirect_to micropsts_url, notice: "Micropst was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micropst
      @micropst = Micropst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def micropst_params
      params.require(:micropst).permit(:content, :user_id)
    end
end
