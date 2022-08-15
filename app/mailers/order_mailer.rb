class OrderMailer < ApplicationMailer
  def new_order_email()
    @order = params[:order]
    mail(subject: 'order created', to: 'nadigergangotri@gmail.com')
  end
end
