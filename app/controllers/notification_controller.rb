class NotificationController < ApplicationController
  def index
  	@notifications = current_user.passive_notifications
  end
end
