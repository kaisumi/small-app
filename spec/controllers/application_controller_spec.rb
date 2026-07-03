require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  controller do
    def index
      render plain: "ok"
    end
  end

  before do
    routes.draw { get "index" => "anonymous#index" }
  end

  it "allows modern browsers" do
    request.user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) " \
                         "AppleWebKit/537.36 (KHTML, like Gecko) " \
                         "Chrome/120.0.0.0 Safari/537.36"

    get :index

    expect(response).to have_http_status(:ok)
  end

  it "rejects unsupported browsers" do
    request.user_agent = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)"

    get :index

    expect(response).to have_http_status(:not_acceptable)
  end
end
