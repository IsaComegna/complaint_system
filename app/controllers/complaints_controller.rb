# frozen_string_literal: true

class ComplaintsController < ApplicationController
  def index
    @complaints = Complaint.all
  end

  def new
    render 'complaints/new.slim'
  end

  def create
    @complaint = Complaint.create(complaint_params)

    redirect_to :action => "index"
  end

  private

  def complaint_params
    {
      complainer_name: params[:complainer_name],
      date_of_occurrence: Time.zone.parse(params[:occurrence_date]),
      description: params[:description]
    }
  end
end
