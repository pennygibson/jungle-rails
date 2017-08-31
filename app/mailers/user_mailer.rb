class UserMailer < ApplicationMailer
  def verify_email(order, user)
    @order = order
    @user = user
    mail(to: @user.email, subject: 'Order confirmation Jungle Rails. Order: #{@order.id}')
  end
end
