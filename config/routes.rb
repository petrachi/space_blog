Rails.application.routes.draw do
  mount Cluster::Engine => "/"

  controller "articles" do
    get "/articles" => :index, as: :articles




    get "/article/:id" => :show, as: :article # temp - needed for routing obj
  end
end
