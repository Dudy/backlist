class TerminsController < ApplicationController
  # GET /termins
  # GET /termins.json
  def index
    @termins = Termin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @termins }
    end
  end

  # GET /termins/1
  # GET /termins/1.json
  def show
    @termin = Termin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @termin }
    end
  end

  # GET /termins/new
  # GET /termins/new.json
  def new
    @termin = Termin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @termin }
    end
  end

  # GET /termins/1/edit
  def edit
    @termin = Termin.find(params[:id])
  end

  # POST /termins
  # POST /termins.json
  def create
    @termin = Termin.new(params[:termin])

    respond_to do |format|
      if @termin.save
        format.html { redirect_to @termin, notice: 'Termin was successfully created.' }
        format.json { render json: @termin, status: :created, location: @termin }
      else
        format.html { render action: "new" }
        format.json { render json: @termin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /termins/1
  # PUT /termins/1.json
  def update
    @termin = Termin.find(params[:id])

    respond_to do |format|
      if @termin.update_attributes(params[:termin])
        format.html { redirect_to @termin, notice: 'Termin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @termin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /termins/1
  # DELETE /termins/1.json
  def destroy
    @termin = Termin.find(params[:id])
    @termin.destroy

    respond_to do |format|
      format.html { redirect_to termins_url }
      format.json { head :no_content }
    end
  end
end
