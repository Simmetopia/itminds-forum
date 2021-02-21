class Cools::FormFields < BaseComponent
  needs operation : SaveCool

  def render
    mount Shared::Field, operation.title, &.text_input(autofocus: "true")
    mount Shared::Field, operation.count
  end
end
