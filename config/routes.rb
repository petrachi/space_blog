Rails.application.routes.draw do
  controller "articles" do
    get "/articles" => :index, as: :articles



    get "/article/:id" => :show, as: :article # temp - needed for routing obj
  end

  controller "experiences" do
    get "/experiences" => :index, as: :experiences



    get "/experience/:id" => :show, as: :experience # temp - needed for routing obj
  end
end
