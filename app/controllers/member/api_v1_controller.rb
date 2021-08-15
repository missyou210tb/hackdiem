class Member::ApiV1Controller < ApplicationController
  before_action :authenticate_member!
end