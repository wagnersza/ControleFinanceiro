class SubCategoriasController < ApplicationController
  # GET /sub_categorias
  # GET /sub_categorias.json
  def index
    @sub_categorias = SubCategoria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sub_categorias }
    end
  end

  # GET /sub_categorias/1
  # GET /sub_categorias/1.json
  def show
    @sub_categoria = SubCategoria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sub_categoria }
    end
  end

  # GET /sub_categorias/new
  # GET /sub_categorias/new.json
  def new
    @sub_categoria = SubCategoria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sub_categoria }
    end
  end

  # GET /sub_categorias/1/edit
  def edit
    @sub_categoria = SubCategoria.find(params[:id])
  end

  # POST /sub_categorias
  # POST /sub_categorias.json
  def create
    @sub_categoria = SubCategoria.new(params[:sub_categoria])

    respond_to do |format|
      if @sub_categoria.save
        format.html { redirect_to @sub_categoria, notice: 'Sub categoria was successfully created.' }
        format.json { render json: @sub_categoria, status: :created, location: @sub_categoria }
      else
        format.html { render action: "new" }
        format.json { render json: @sub_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sub_categorias/1
  # PUT /sub_categorias/1.json
  def update
    @sub_categoria = SubCategoria.find(params[:id])

    respond_to do |format|
      if @sub_categoria.update_attributes(params[:sub_categoria])
        format.html { redirect_to @sub_categoria, notice: 'Sub categoria was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sub_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_categorias/1
  # DELETE /sub_categorias/1.json
  def destroy
    @sub_categoria = SubCategoria.find(params[:id])
    @sub_categoria.destroy

    respond_to do |format|
      format.html { redirect_to sub_categorias_url }
      format.json { head :no_content }
    end
  end
end
