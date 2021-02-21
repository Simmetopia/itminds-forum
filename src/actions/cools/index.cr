class Cools::Index < BrowserAction
  get "/cools" do
    html IndexPage, cools: CoolQuery.new
  end
end
