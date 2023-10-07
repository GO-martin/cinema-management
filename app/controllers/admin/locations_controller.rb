class Admin::LocationsController < Admin::BaseController
  before_action :set_location, only: %i[show edit update destroy]

  # GET admin/locations or admin/locations.json
  def index
    @locations = Location.all.order(created_at: :desc)
  end

  # GET admin/locations/1 or admin/locations/1.json
  def show; end

  # GET admin/locations/new
  def new
    @location = Location.new
  end

  # GET admin/locations/1/edit
  def edit; end

  # POST admin/locations or admin/locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to admin_location_url(@location), notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
        format.turbo_stream
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT admin/locations/1 or admin/locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to admin_location_url(@location), notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE admin/locations/1 or admin/locations/1.json
  def destroy
    @location.destroy

    respond_to do |format|
      format.html { redirect_to admin_locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name)
  end
end
