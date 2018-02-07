class RecordsController < ApplicationController
  include ActiveModel::ForbiddenAttributesProtection
  before_action :set_record, only: [:show, :edit, :update, :destroy]

  # GET /records
  # GET /records.json
  def index
    user = current_profile
    if params[:keywords].present?
      @keywords = params[:keywords]
      recordsearch = RecordSearchTerm.new(@keywords)
      @records = user.records.where(
        recordsearch.where_clause,
        recordsearch.where_args).
        order(recordsearch.order)
    else
      @records = user.records
    end
  end

  # GET /records/1
  # GET /records/1.json
  def show
  end

  # GET /records/new
  def new
    @record = current_profile.records.new
  end

  # GET /records/1/edit
  def edit
  end

  # POST /records
  # POST /records.json
  def create
    user = current_profile
    @category = Category.find(record_params[:category_id])
    @date = Date.new record_params["date(1i)"].to_i, record_params["date(2i)"].to_i, record_params["date(3i)"].to_i

    @record = user.records.new do |r|
      r.name = record_params[:name]
      r.description = record_params[:description]
      r.date = @date
      r.category = @category
    end

    respond_to do |format|
      if @record.save
        format.html { redirect_to @record, notice: 'Record was successfully created.' }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /records/1
  # PATCH/PUT /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1
  # DELETE /records/1.json
  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to records_url, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:name, :description, :date, :category_id)
    end
end
