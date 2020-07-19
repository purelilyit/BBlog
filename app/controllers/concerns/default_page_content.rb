module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "BBlog"
    @seo_keywords = "AO Portfolio rail blogs ruby location, based, messaging, network"
  end
end
