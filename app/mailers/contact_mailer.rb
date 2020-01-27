class ContactMailer < ApplicationMailer
  def help(params)
    @message = params[:message]
    @email   = params[:email]
    @phone   = params[:phone]
    @name    = params[:name]

    mail from: @email, subject: 'Message'
  end
end