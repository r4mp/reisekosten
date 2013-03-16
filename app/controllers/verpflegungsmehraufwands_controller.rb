class VerpflegungsmehraufwandsController < ApplicationController
  # GET /verpflegungsmehraufwands
  # GET /verpflegungsmehraufwands.json
  def index
    @verpflegungsmehraufwands = Verpflegungsmehraufwand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @verpflegungsmehraufwands }
    end
  end

  # GET /verpflegungsmehraufwands/1
  # GET /verpflegungsmehraufwands/1.json
  def show
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @verpflegungsmehraufwand }
    end
  end

  # GET /verpflegungsmehraufwands/new
  # GET /verpflegungsmehraufwands/new.json
  def new
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @verpflegungsmehraufwand }
    end
  end

  # GET /verpflegungsmehraufwands/1/edit
  def edit
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.find(params[:id])
  end

  # POST /verpflegungsmehraufwands
  # POST /verpflegungsmehraufwands.json
  def create
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.new(params[:verpflegungsmehraufwand])

    respond_to do |format|
      if @verpflegungsmehraufwand.save
        format.html { redirect_to @verpflegungsmehraufwand, notice: 'Verpflegungsmehraufwand was successfully created.' }
        format.json { render json: @verpflegungsmehraufwand, status: :created, location: @verpflegungsmehraufwand }
      else
        format.html { render action: "new" }
        format.json { render json: @verpflegungsmehraufwand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /verpflegungsmehraufwands/1
  # PUT /verpflegungsmehraufwands/1.json
  def update
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.find(params[:id])

    respond_to do |format|
      if @verpflegungsmehraufwand.update_attributes(params[:verpflegungsmehraufwand])
        format.html { redirect_to @verpflegungsmehraufwand, notice: 'Verpflegungsmehraufwand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @verpflegungsmehraufwand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verpflegungsmehraufwands/1
  # DELETE /verpflegungsmehraufwands/1.json
  def destroy
    @verpflegungsmehraufwand = Verpflegungsmehraufwand.find(params[:id])
    @verpflegungsmehraufwand.destroy

    respond_to do |format|
      format.html { redirect_to verpflegungsmehraufwands_url }
      format.json { head :no_content }
    end
  end
end
