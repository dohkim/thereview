class EvaluatesController < ApplicationController
  before_action :set_evaluate, only: [:show, :edit, :update, :destroy]

  # GET /evaluates
  # GET /evaluates.json
  def index
    @evaluates = Evaluate.all
  end

  # GET /evaluates/1
  # GET /evaluates/1.json
  def show
  end

  # GET /evaluates/new
  def new
    @evaluate = Evaluate.new
  end

  # GET /evaluates/1/edit
  def edit
  end

  # POST /evaluates
  # POST /evaluates.json
  def create
    @evaluate = Evaluate.new(evaluate_params)

    respond_to do |format|
      if @evaluate.save
        format.html { redirect_to @evaluate, notice: 'Evaluate was successfully created.' }
        format.json { render :show, status: :created, location: @evaluate }
      else
        format.html { render :new }
        format.json { render json: @evaluate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluates/1
  # PATCH/PUT /evaluates/1.json
  def update
    respond_to do |format|
      if @evaluate.update(evaluate_params)
        format.html { redirect_to @evaluate, notice: 'Evaluate was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluate }
      else
        format.html { render :edit }
        format.json { render json: @evaluate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluates/1
  # DELETE /evaluates/1.json
  def destroy
    @evaluate.destroy
    respond_to do |format|
      format.html { redirect_to evaluates_url, notice: 'Evaluate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluate
      @evaluate = Evaluate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluate_params
      params.require(:evaluate).permit(:rating, :comment)
    end
end
