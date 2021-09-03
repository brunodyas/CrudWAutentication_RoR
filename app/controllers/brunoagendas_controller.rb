class BrunoagendasController < ApplicationController
  before_action :set_brunoagenda, only: %i[ show edit update destroy ]

  # GET /brunoagendas or /brunoagendas.json
  def index
    @brunoagendas = Brunoagenda.all
  end

  # GET /brunoagendas/1 or /brunoagendas/1.json
  def show
  end

  # GET /brunoagendas/new
  def new
    @brunoagenda = Brunoagenda.new
  end

  # GET /brunoagendas/1/edit
  def edit
  end

  # POST /brunoagendas or /brunoagendas.json
  def create
    @brunoagenda = Brunoagenda.new(brunoagenda_params)

    respond_to do |format|
      if @brunoagenda.save
        format.html { redirect_to @brunoagenda, notice: "Brunoagenda was successfully created." }
        format.json { render :show, status: :created, location: @brunoagenda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brunoagenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brunoagendas/1 or /brunoagendas/1.json
  def update
    respond_to do |format|
      if @brunoagenda.update(brunoagenda_params)
        format.html { redirect_to @brunoagenda, notice: "Brunoagenda was successfully updated." }
        format.json { render :show, status: :ok, location: @brunoagenda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brunoagenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brunoagendas/1 or /brunoagendas/1.json
  def destroy
    @brunoagenda.destroy
    respond_to do |format|
      format.html { redirect_to brunoagendas_url, notice: "Brunoagenda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brunoagenda
      @brunoagenda = Brunoagenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brunoagenda_params
      params.require(:brunoagenda).permit(:nome, :id_seq, :endereco, :preco, :email)
    end
end
