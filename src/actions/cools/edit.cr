class Cools::Edit < BrowserAction
  get "/cools/:cool_id/edit" do
    cool = CoolQuery.find(cool_id)
    html EditPage,
      operation: SaveCool.new(cool),
      cool: cool
  end
end
