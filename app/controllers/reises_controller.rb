class ReisesController < ApplicationController

  #caches_page :index, :show

  #active_scaffold :document do |config|
  #  config.columns = [ :id, :product, :title, :document_type, :author, :organization, :document_approver, :document_location ]
  #  config.list.columns.exclude :organization, :document_approver, :document_location
  #  config.show.columns.exclude :id
  #  config.create.columns.exclude :id, :author, :organization
  #  config.update.columns.exclude :id, :author
  #end

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
    @reise.ankunft = 0
    @reise.abreise = 0

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

      if ((@reise.abreise - @reise.ankunft) / 1.day).to_i > 365
        flash.now[:error] = "Reise zu lang"
        render action: "new"
        return
      end

      # TODO: "Negative" Tagesreisen mit abfangen!!!
      if ((@reise.abreise - @reise.ankunft) / 1.day).to_i < 0
        flash.now[:error] = "Das Abreisedatum liegt vor dem Ankunftsdatum"
        render action: "new"
        return
      end

      if ( @reise.abreise.year.to_i < 1970 ) || ( @reise.ankunft.year.to_i < 1970 )
        flash.now[:error] = "Das angegebene Datum darf nicht vor dem 01.01.1970 liegen"
        render action: "new"
        return
      end

      if @reise.save

        ##Rails.logger.debug("reisekosten [DEBUG] " + @reise.inspect)
        #for i in 1..((@reise.abreise - @reise.ankunft) / 1.day)
        #  @verpflegungsmehraufwand = Verpflegungsmehraufwand.new
        #  @verpflegungsmehraufwand.reise_id = @reise._id
        #  @verpflegungsmehraufwand.save
        #end

        format.html { redirect_to :action => "index", notice: 'Reise was successfully created.' }
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

      # TODO: !!!
      #if ((@reise.abreise - @reise.ankunft) / 1.day).to_i > 365
      #  flash.now[:error] = "Reise zu lang"
      #  render action: "edit"
      #  return
      #end

      # TODO: Die Abfragen aus 'create' auch hier uebernehmen!!!

      if @reise.update_attributes(params[:reise])
        format.html { redirect_to :action => "index", notice: 'Reise was successfully updated.' }
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
