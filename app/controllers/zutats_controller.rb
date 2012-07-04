class ZutatsController < ApplicationController
  # GET /zutats
  # GET /zutats.json
  def index
    @zutats = Zutat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zutats }
    end
  end

  # GET /zutats/1
  # GET /zutats/1.json
  def show
    @zutat = Zutat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zutat }
    end
  end

  # GET /zutats/new
  # GET /zutats/new.json
  def new
    @zutat = Zutat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zutat }
    end
  end

  # GET /zutats/1/edit
  def edit
    @zutat = Zutat.find(params[:id])
  end

  # POST /zutats
  # POST /zutats.json
  def create
    @zutat = Zutat.new(params[:zutat])

    respond_to do |format|
      if @zutat.save
        format.html { redirect_to @zutat, notice: 'Zutat was successfully created.' }
        format.json { render json: @zutat, status: :created, location: @zutat }
      else
        format.html { render action: "new" }
        format.json { render json: @zutat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zutats/1
  # PUT /zutats/1.json
  def update
    @zutat = Zutat.find(params[:id])

    respond_to do |format|
      if @zutat.update_attributes(params[:zutat])
        format.html { redirect_to @zutat, notice: 'Zutat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zutat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zutats/1
  # DELETE /zutats/1.json
  def destroy
    @zutat = Zutat.find(params[:id])
    @zutat.destroy

    respond_to do |format|
      format.html { redirect_to zutats_url }
      format.json { head :no_content }
    end
  end
end
