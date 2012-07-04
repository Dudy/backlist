class BewertungsController < ApplicationController
  # GET /bewertungs
  # GET /bewertungs.json
  def index
    @bewertungs = Bewertung.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bewertungs }
    end
  end

  # GET /bewertungs/1
  # GET /bewertungs/1.json
  def show
    @bewertung = Bewertung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bewertung }
    end
  end

  # GET /bewertungs/new
  # GET /bewertungs/new.json
  def new
    @bewertung = Bewertung.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bewertung }
    end
  end

  # GET /bewertungs/1/edit
  def edit
    @bewertung = Bewertung.find(params[:id])
  end

  # POST /bewertungs
  # POST /bewertungs.json
  def create
    @bewertung = Bewertung.new(params[:bewertung])

    respond_to do |format|
      if @bewertung.save
        format.html { redirect_to @bewertung, notice: 'Bewertung was successfully created.' }
        format.json { render json: @bewertung, status: :created, location: @bewertung }
      else
        format.html { render action: "new" }
        format.json { render json: @bewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bewertungs/1
  # PUT /bewertungs/1.json
  def update
    @bewertung = Bewertung.find(params[:id])

    respond_to do |format|
      if @bewertung.update_attributes(params[:bewertung])
        format.html { redirect_to @bewertung, notice: 'Bewertung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bewertung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bewertungs/1
  # DELETE /bewertungs/1.json
  def destroy
    @bewertung = Bewertung.find(params[:id])
    @bewertung.destroy

    respond_to do |format|
      format.html { redirect_to bewertungs_url }
      format.json { head :no_content }
    end
  end
end
