class Cools::Show < BrowserAction
  get "/cools/:cool_id" do
    html ShowPage, cool: CoolQuery.find(cool_id)
  end
end
