class HomeController < ApplicationController
  # <Niyati - skip the user authentication>
  skip_before_action :authenticate_user!
  def index
    @latest_profile = Profile.last
    @status_update = StatusUpdate.new
    # <Niyati we have asked to show the latest statys update of the user>
    @status_updates = StatusUpdate.reverse_chron_order
  end
end
