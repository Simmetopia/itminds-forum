class Cools::New < BrowserAction
  get "/cools/new" do
    html NewPage, operation: SaveCool.new
  end
end
