class MembersController < ApplicationController
  before_action :set_member, only: %i[ show edit update destroy ]

  # GET /members or /members.json
  def index
    @members = Member.all

    render json: @members, include: :plan
  end

  # GET /members/1 or /members/1.json
  def show
    render json: @member, include: :plan
  end

  # GET /members/new
  def new
    @member = Member.new
    @member.build_plan
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members or /members.json
  def create
    @member = Member.new(member_params)

    if @member.save
      render json: @member, status: :created, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /members/1 or /members/1.json
  def update
    if @member.update(member_params)
      render json: @member, status: :ok, location: @member
    else
      render json: @member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /members/1 or /members/1.json
  def destroy
    @member.destroy!

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.require(:member).permit(:first_name, :last_name, :contact_number, :address, :plan_attributes => [:start_date, :end_date, :price])
    end
end
