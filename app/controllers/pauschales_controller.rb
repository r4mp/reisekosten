class PauschalesController < ApplicationController
  # GET /pauschales
  # GET /pauschales.json
  def index
    @pauschales = Pauschale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pauschales }
    end
  end

  # GET /pauschales/1
  # GET /pauschales/1.json
  def show
    @pauschale = Pauschale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pauschale }
    end
  end

  # GET /pauschales/new
  # GET /pauschales/new.json
  def new
    @pauschale = Pauschale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pauschale }
    end
  end

  # GET /pauschales/1/edit
  def edit
    @pauschale = Pauschale.find(params[:id])
  end

  # POST /pauschales
  # POST /pauschales.json
  def create
    @pauschale = Pauschale.new(params[:pauschale])

    respond_to do |format|
      if @pauschale.save
        format.html { redirect_to @pauschale, notice: 'Pauschale was successfully created.' }
        format.json { render json: @pauschale, status: :created, location: @pauschale }
      else
        format.html { render action: "new" }
        format.json { render json: @pauschale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pauschales/1
  # PUT /pauschales/1.json
  def update
    @pauschale = Pauschale.find(params[:id])

    respond_to do |format|
      if @pauschale.update_attributes(params[:pauschale])
        format.html { redirect_to @pauschale, notice: 'Pauschale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pauschale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pauschales/1
  # DELETE /pauschales/1.json
  def destroy
    @pauschale = Pauschale.find(params[:id])
    @pauschale.destroy

    respond_to do |format|
      format.html { redirect_to pauschales_url }
      format.json { head :no_content }
    end
  end
end
