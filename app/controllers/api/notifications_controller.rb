class Api::NotificationsController < Api::BaseController
  def index
    notifications = Notification.all
    if notifications.present?
      render_json :ok, {data: notifications}, "Success"
    else
      render_json :ok, {data: []}, "Empty list"
    end
  end
end
