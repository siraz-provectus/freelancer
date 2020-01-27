class HomeController < ApplicationController
  def index

  end

  def contact_me
    puts '-------'
    puts params.inspect
    ContactMailer.help(contact_params).deliver!
  end

  private
  def contact_params
    params.permit(:name, :email, :phone, :message)
  end
end
