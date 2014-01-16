class DoencaPessoasController < ApplicationController
  before_action :set_doenca_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /doenca_pessoas
  # GET /doenca_pessoas.json
  def index
    @doenca_pessoas = DoencaPessoa.all
  end

  # GET /doenca_pessoas/1
  # GET /doenca_pessoas/1.json
  def show
  end

  # GET /doenca_pessoas/new
  def new
    @doenca_pessoa = DoencaPessoa.new
  end

  # GET /doenca_pessoas/1/edit
  def edit
  end

  # POST /doenca_pessoas
  # POST /doenca_pessoas.json
  def create
    @doenca_pessoa = DoencaPessoa.new(doenca_pessoa_params)

    respond_to do |format|
      if @doenca_pessoa.save
        format.html { redirect_to @doenca_pessoa, notice: 'Doenca pessoa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doenca_pessoa }
      else
        format.html { render action: 'new' }
        format.json { render json: @doenca_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doenca_pessoas/1
  # PATCH/PUT /doenca_pessoas/1.json
  def update
    respond_to do |format|
      if @doenca_pessoa.update(doenca_pessoa_params)
        format.html { redirect_to @doenca_pessoa, notice: 'Doenca pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doenca_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doenca_pessoas/1
  # DELETE /doenca_pessoas/1.json
  def destroy
    @doenca_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to doenca_pessoas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doenca_pessoa
      @doenca_pessoa = DoencaPessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doenca_pessoa_params
      params.require(:doenca_pessoa).permit(:data, :observacao)
    end
end
