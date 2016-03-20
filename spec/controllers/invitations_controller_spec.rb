require 'rails_helper'

describe Api::InvitationsController do
  it "returns a 'Sent' message if email job is queued" do
    post :create, email: "email"

    expect(response.content_type).to eq "application/json"
    expect(response.body).to eq '{"message":"Sent"}'
    expect(response.status).to eq 200
  end
end
