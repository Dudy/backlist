class EinzelbewertungsController < ApplicationController
  # GET /einzelbewertungs
  # GET /einzelbewertungs.json
  def index
    @einzelbewertungs = Einzelbewertung.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @einzelbewertungs }
    end
  end

  # GET /einzelbewertungs/1
  # GET /einzelbewertungs/1.json
  def show
    @einzelbewertung = Einzelbewertung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @einzelbewertung }
    end
  end

  # GET /einzelbewertungs/new
  # GET /einzelbewertungs/new.json
  def new
    @einzelbewertung = Einzelbewertung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @einzelbewertung }
    end
  end

  # GET /einzelbewertungs/1/edit
  def edit
    @einzelbewertung = Einzelbewertung.find(params[:id])
  end

  # POST /einzelbewertungs
  # POST /einzelbewertungs.json
  def create
    @einzelbewertung = Einzelbewertung.new(params[:einzelbewertung])

    respond_to do |format|
      if @einzelbewertung.save
        format.html { redirect_to @einzelbewertung, notice: 'Einzelbewertung was successfully created.' }
        format.json { render json: @einzelbewertung, status: :created, location: @einzelbewertung }
      else
        format.html { render action: "new" }
        format.json { render json: @einzelbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /einzelbewertungs/1
  # PUT /einzelbewertungs/1.json
  def update
    @einzelbewertung = Einzelbewertung.find(params[:id])

    respond_to do |format|
      if @einzelbewertung.update_attributes(params[:einzelbewertung])
        format.html { redirect_to @einzelbewertung, notice: 'Einzelbewertung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @einzelbewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /einzelbewertungs/1
  # DELETE /einzelbewertungs/1.json
  def destroy
    @einzelbewertung = Einzelbewertung.find(params[:id])
    @einzelbewertung.destroy

    respond_to do |format|
      format.html { redirect_to einzelbewertungs_url }
      format.json { head :no_content }
    end
  end
end
