class Cools::Delete < BrowserAction
  delete "/cools/:cool_id" do
    CoolQuery.find(cool_id).delete
    flash.success = "Deleted the record"
    redirect Index
  end
end
