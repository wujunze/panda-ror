class PandasController < ApplicationController
  before_action :set_panda, only: [:show, :edit, :update, :destroy]

  # GET /pandas
  # GET /pandas.json
  def index
    @pandas = Panda.all
  end

  # GET /pandas/1
  # GET /pandas/1.json
  def show
  end

  # GET /pandas/new
  def new
    @panda = Panda.new
  end

  # GET /pandas/1/edit
  def edit
  end

  # POST /pandas
  # POST /pandas.json
  def create
    @panda = Panda.new(panda_params)

    respond_to do |format|
      if @panda.save
        format.html { redirect_to @panda, notice: 'Panda was successfully created.' }
        format.json { render :show, status: :created, location: @panda }
      else
        format.html { render :new }
        format.json { render json: @panda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pandas/1
  # PATCH/PUT /pandas/1.json
  def update
    respond_to do |format|
      if @panda.update(panda_params)
        format.html { redirect_to @panda, notice: 'Panda was successfully updated.' }
        format.json { render :show, status: :ok, location: @panda }
      else
        format.html { render :edit }
        format.json { render json: @panda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pandas/1
  # DELETE /pandas/1.json
  def destroy
    @panda.destroy
    respond_to do |format|
      format.html { redirect_to pandas_url, notice: 'Panda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panda
      @panda = Panda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panda_params
      params.require(:panda).permit(:name, :city)
    end
end
