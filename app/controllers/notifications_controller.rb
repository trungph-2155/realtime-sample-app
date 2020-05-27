class NotificationsController < ApplicationController
  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new new_params
    if @notification.save
      ActionCable.server.broadcast "notification_channel", {data: @notification}
      flash[:success] = "Hooray! The notification is good to go"
      redirect_to new_notification_path
    else
      flash.now[:danger] = "Oops! Not so good bruh"
      render :new
    end
  end

  private
  def new_params
    params.require(:notification).permit(:title, :content).merge({sent_at: Time.now})
  end
end
