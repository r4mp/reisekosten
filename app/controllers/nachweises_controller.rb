class NachweisesController < ApplicationController
  # GET /nachweises
  # GET /nachweises.json
  def index
    @nachweises = Nachweise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nachweises }
    end
  end

  # GET /nachweises/1
  # GET /nachweises/1.json
  def show
    @nachweise = Nachweise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nachweise }
    end
  end

  # GET /nachweises/new
  # GET /nachweises/new.json
  def new
    @nachweise = Nachweise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nachweise }
    end
  end

  # GET /nachweises/1/edit
  def edit
    @nachweise = Nachweise.find(params[:id])
  end

  # POST /nachweises
  # POST /nachweises.json
  def create
    @nachweise = Nachweise.new(params[:nachweise])

    respond_to do |format|
      if @nachweise.save
        format.html { redirect_to @nachweise, notice: 'Nachweise was successfully created.' }
        format.json { render json: @nachweise, status: :created, location: @nachweise }
      else
        format.html { render action: "new" }
        format.json { render json: @nachweise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nachweises/1
  # PUT /nachweises/1.json
  def update
    @nachweise = Nachweise.find(params[:id])

    respond_to do |format|
      if @nachweise.update_attributes(params[:nachweise])
        format.html { redirect_to @nachweise, notice: 'Nachweise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nachweise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nachweises/1
  # DELETE /nachweises/1.json
  def destroy
    @nachweise = Nachweise.find(params[:id])
    @nachweise.destroy

    respond_to do |format|
      format.html { redirect_to nachweises_url }
      format.json { head :no_content }
    end
  end
end
