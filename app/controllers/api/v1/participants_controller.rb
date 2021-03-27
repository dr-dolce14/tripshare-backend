class Api::V1::ParticipantsController < ApplicationController

    def index
        @participants = Participant.all
        render json: @participants, include: [:user, :trip]
    end

    def show
        @participant = Participant.find(params[:id])
        render json: @participant
    end
    
    def new
        @participant = Participant.new
        render json: @participant
    end

    def create
        @participant = Participant.create(participant_params)
        render json: @participant
    end

    def edit
        @participant = Participant.find(params[:id])
        render json: @participant
    end

    def update
        @participant = Participant.find(params[:id])
        @participant.update(participant_params)
        render json: @participant
    end

    def destroy
        @participant = Participant.find(params[:id])
        @participant.destroy
        render json: @participant
    end

    private

    def participant_params
        params.require(:participant).permit(:user_id, :trip_id)
    end

end
