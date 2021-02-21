class Cools::Update < BrowserAction
  put "/cools/:cool_id" do
    cool = CoolQuery.find(cool_id)
    SaveCool.update(cool, params) do |operation, updated_cool|
      if operation.saved?
        flash.success = "The record has been updated"
        redirect Show.with(updated_cool.id)
      else
        flash.failure = "It looks like the form is not valid"
        html EditPage, operation: operation, cool: updated_cool
      end
    end
  end
end
