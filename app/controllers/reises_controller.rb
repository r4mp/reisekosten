class ReisesController < ApplicationController
  # GET /reises
  # GET /reises.json
  def index
    @reises = Reise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reises }
    end
  end

  # GET /reises/1
  # GET /reises/1.json
  def show
    @reise = Reise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reise }
    end
  end

  # GET /reises/new
  # GET /reises/new.json
  def new
    @reise = Reise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reise }
    end
  end

  # GET /reises/1/edit
  def edit
    @reise = Reise.find(params[:id])
  end

  # POST /reises
  # POST /reises.json
  def create
    @reise = Reise.new(params[:reise])

    respond_to do |format|
      if @reise.save
        format.html { redirect_to @reise, notice: 'Reise was successfully created.' }
        format.json { render json: @reise, status: :created, location: @reise }
      else
        format.html { render action: "new" }
        format.json { render json: @reise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reises/1
  # PUT /reises/1.json
  def update
    @reise = Reise.find(params[:id])

    respond_to do |format|
      if @reise.update_attributes(params[:reise])
        format.html { redirect_to @reise, notice: 'Reise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reises/1
  # DELETE /reises/1.json
  def destroy
    @reise = Reise.find(params[:id])
    @reise.destroy

    respond_to do |format|
      format.html { redirect_to reises_url }
      format.json { head :no_content }
    end
  end
end
