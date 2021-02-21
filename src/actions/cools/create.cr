class Cools::Create < BrowserAction
  post "/cools" do
    SaveCool.create(params) do |operation, cool|
      if cool
        flash.success = "The record has been saved"
        redirect Show.with(cool.id)
      else
        flash.failure = "It looks like the form is not valid"
        html NewPage, operation: operation
      end
    end
  end
end
