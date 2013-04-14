class TransacoesController < ApplicationController
  # GET /transacoes
  # GET /transacoes.json
  def index
    @transacoes = Transacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transacoes }
    end
  end

  # GET /transacoes/1
  # GET /transacoes/1.json
  def show
    @transacao = Transacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transacao }
    end
  end

  # GET /transacoes/new
  # GET /transacoes/new.json
  def new
    @transacao = Transacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transacao }
    end
  end

  # GET /transacoes/1/edit
  def edit
    @transacao = Transacao.find(params[:id])
  end

  # POST /transacoes
  # POST /transacoes.json
  def create
    @transacao = Transacao.new(params[:transacao])

    respond_to do |format|
      if @transacao.save
        format.html { redirect_to @transacao, notice: 'Transacao was successfully created.' }
        format.json { render json: @transacao, status: :created, location: @transacao }
      else
        format.html { render action: "new" }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transacoes/1
  # PUT /transacoes/1.json
  def update
    @transacao = Transacao.find(params[:id])

    respond_to do |format|
      if @transacao.update_attributes(params[:transacao])
        format.html { redirect_to @transacao, notice: 'Transacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacoes/1
  # DELETE /transacoes/1.json
  def destroy
    @transacao = Transacao.find(params[:id])
    @transacao.destroy

    respond_to do |format|
      format.html { redirect_to transacoes_url }
      format.json { head :no_content }
    end
  end
end
