class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUser
  include SetTitle
  include DefaultPageContent

end
