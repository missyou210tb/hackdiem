class Member::MembersController < Member::ApiV1Controller
  def show
    @member = current_member
    respond_to do |format|
      format.html
      format.js
    end
  end
end