class ReportnumbersController < ApplicationController
  before_action :set_reportnumber, only: [:show, :edit, :update, :destroy]


    
  # GET /reportnumbers
  # GET /reportnumbers.json
  def index
    #@reportnumbers = Reportnumber.all
    
    @reportnumbers = Reportnumber.where(["phonenumber LIKE ?", "%#{params[:search]}%"])
    
  end

  # GET /reportnumbers/1
  # GET /reportnumbers/1.json
  def show
  end

  # GET /reportnumbers/new
  def new
    @reportnumber = Reportnumber.new
  end

  # GET /reportnumbers/1/edit
  def edit
  end

  # POST /reportnumbers
  # POST /reportnumbers.json
  def create
    @reportnumber = Reportnumber.new(reportnumber_params)

    respond_to do |format|
      if @reportnumber.save
        format.html { redirect_to @reportnumber, notice: 'Reportnumber was successfully created.' }
        format.json { render :show, status: :created, location: @reportnumber }
      else
        format.html { render :new }
        format.json { render json: @reportnumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportnumbers/1
  # PATCH/PUT /reportnumbers/1.json
  def update
    respond_to do |format|
      if @reportnumber.update(reportnumber_params)
        format.html { redirect_to @reportnumber, notice: 'Reportnumber was successfully updated.' }
        format.json { render :show, status: :ok, location: @reportnumber }
      else
        format.html { render :edit }
        format.json { render json: @reportnumber.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /reportnumbers/1
  # DELETE /reportnumbers/1.json
  def destroy
    @reportnumber.destroy
    respond_to do |format|
      format.html { redirect_to reportnumbers_url, notice: 'Reportnumber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportnumber
      @reportnumber = Reportnumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reportnumber_params
      params.require(:reportnumber).permit(:date, :timestamp, :phonenumber, :integer, :locationofnumber, :string, :category, :string, :description, :string)
    end
    

  
end
  
  

  
  

