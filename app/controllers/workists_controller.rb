class WorkistsController < ApplicationController
  before_action :set_workist, only: [:show, :edit, :update, :destroy]

  # GET /workists
  # GET /workists.json
  def index
    @workists = Workist.all
  end

  # GET /workists/1
  # GET /workists/1.json
  def show
  end

  # GET /workists/new
  def new
    @workist = Workist.new
  end

  # GET /workists/1/edit
  def edit
  end

  # POST /workists
  # POST /workists.json
  def create
    @workist = Workist.new(workist_params)

    respond_to do |format|
      if @workist.save
        format.html { redirect_to @workist, notice: 'Workist was successfully created.' }
        format.json { render :show, status: :created, location: @workist }
      else
        format.html { render :new }
        format.json { render json: @workist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workists/1
  # PATCH/PUT /workists/1.json
  def update
    respond_to do |format|
      if @workist.update(workist_params)
        format.html { redirect_to @workist, notice: 'Workist was successfully updated.' }
        format.json { render :show, status: :ok, location: @workist }
      else
        format.html { render :edit }
        format.json { render json: @workist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workists/1
  # DELETE /workists/1.json
  def destroy
    @workist.destroy
    respond_to do |format|
      format.html { redirect_to workists_url, notice: 'Workist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workist
      @workist = Workist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workist_params
      params.require(:workist).permit(:task, :description)
    end
end
