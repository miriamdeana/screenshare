module Api
  class InvitationsController < ApplicationController
    def create
      email = params[:email]
      invitation = SendInvitationJob.perform_now(email)
      if invitation
        render json: {:message => "Sent"}
      end
    end
  end
end
