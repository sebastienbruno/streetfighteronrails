class FightsController < ApplicationController
  STATE_RUNNING = "Running"
  STATE_DONE = "Done"
  STATE_NEW = "New"

  before_action :set_fight, only: %i[ show edit update destroy run]

  # GET /fights or /fights.json
  def index
    @fights = Fight.all
    if @fights.where(:status => STATE_NEW).length == 0
      current_fight = Fight.create(status: STATE_NEW, opponent1: Character.first, opponent2: Character.last)
      current_fight.save
    end
    @new_fight = @fights.find_by(status: STATE_NEW)
  end

  # GET /fights/1 or /fights/1.json
  def show
  end

  # GET /fights/new
  def new
    @fight = Fight.new
  end

  # GET /fights/1/edit
  def edit
  end

  # POST /fights or /fights.json
  def create
    @fight = Fight.new(fight_params)
    respond_to do |format|
      if @fight.save
        format.html { redirect_to @fight, notice: "Fight was successfully created." }
        format.json { render :show, status: :created, location: @fight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fights/1 or /fights/1.json
  def update
    respond_to do |format|
      if @fight.update(fight_params)
        format.html { redirect_to :fights, notice: "Fight was successfully updated." }
        format.json { render :show, status: :ok, location: @fight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fights/1 or /fights/1.json
  def destroy
    @fight.destroy
    respond_to do |format|
      format.html { redirect_to fights_url, notice: "Fight was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # GET /fights/1/run
  def run
    @fight.update(status: STATE_RUNNING)

    # The fight is running
    winner = "opponent2"

    # The fight is done
    @fight.update(status: STATE_DONE, winner: winner)
    puts 'New fight done'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fight_params
      params.require(:fight).permit(:status, :opponent1_id, :opponent2_id, :winner, :opponent)
    end
end
