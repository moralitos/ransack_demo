class ProjectAdministrationsController < ApplicationController
  before_action :set_project_administration, only: [:show, :edit, :update, :destroy]

  # GET /project_administrations
  # GET /project_administrations.json
  def index
    @q = ProjectAdministration.search(params[:q])
    @project_administrations = @q.result.restricted
  end

  def find
    @q = ProjectAdministration.search(params[:q])
  end

  # GET /project_administrations/1
  # GET /project_administrations/1.json
  def show
  end

  # GET /project_administrations/new
  def new
    @project_administration = ProjectAdministration.new
  end

  # GET /project_administrations/1/edit
  def edit
  end

  # POST /project_administrations
  # POST /project_administrations.json
  def create
    @project_administration = ProjectAdministration.new(project_administration_params)

    respond_to do |format|
      if @project_administration.save
        format.html { redirect_to @project_administration, notice: 'Project administration was successfully created.' }
        format.json { render :show, status: :created, location: @project_administration }
      else
        format.html { render :new }
        format.json { render json: @project_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_administrations/1
  # PATCH/PUT /project_administrations/1.json
  def update
    respond_to do |format|
      if @project_administration.update(project_administration_params)
        format.html { redirect_to @project_administration, notice: 'Project administration was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_administration }
      else
        format.html { render :edit }
        format.json { render json: @project_administration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_administrations/1
  # DELETE /project_administrations/1.json
  def destroy
    @project_administration.destroy
    respond_to do |format|
      format.html { redirect_to project_administrations_url, notice: 'Project administration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_administration
      @project_administration = ProjectAdministration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_administration_params
      params.require(:project_administration).permit(:project_id, :hours, :status)
    end
end
