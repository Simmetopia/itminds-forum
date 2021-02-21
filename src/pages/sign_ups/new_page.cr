class SignUps::NewPage < AuthLayout
  needs operation : SignUpUser

  def content
    div class: "grid place-items-center h-full" do
      div do
        h1 "Sign Up", class: "text-blue-400"
        render_sign_up_form(@operation)
      end
    end
  end

  private def render_sign_up_form(op)
    div class: "flex flex-col items-start" do
      form_for SignUps::Create, class: "flex flex-col items-start" do
        sign_up_fields(op)
        submit "Sign Up", flow_id: "sign-up-button", class: "bg-blue-400 text-white bold shadow rounded hover:ring self-end"
      end
      link "Sign in instead", to: SignIns::New, class: "italic bold text-sm"
    end
  end

  private def sign_up_fields(op)
    mount Shared::Field, attribute: op.email, label_text: "Email", &.email_input(autofocus: "true")
    mount Shared::Field, attribute: op.password, label_text: "Password", &.password_input
    mount Shared::Field, attribute: op.password_confirmation, label_text: "Confirm Password", &.password_input
  end
end
