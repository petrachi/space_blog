Rails.application.routes.draw do




  # TODO: routes could be handled in cluster ???
  controller "articles" do
    get "/articles" => :index, as: :articles



    get "/article/:id" => :show, as: :article # temp - needed for routing obj
  end

  controller "experiences" do
    get "/experiences" => :index, as: :experiences



    get "/experience/:id" => :show, as: :experience # temp - needed for routing obj
  end

  controller "ressources" do
    get "/ressources" => :index, as: :ressources



    get "/ressource/:id" => :show, as: :ressource # temp - needed for routing obj
  end
end
