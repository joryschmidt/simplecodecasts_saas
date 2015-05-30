class ContactMailer < ActionMailer
  def contact_email(name, email, body)
    default to: 'joryschmidt1988@gmail.com'
    
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Contact Form Message')
  end
end