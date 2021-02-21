class SignIns::NewPage < AuthLayout
  needs operation : SignInUser

  def content
    div class: "grid place-items-center h-full" do
      div do
        h1 "Sign In", class: "text-blue-400"
        render_sign_in_form(@operation)
      end
    end
  end

  private def render_sign_in_form(op)
    div class: "flex flex-col items-start" do
      form_for SignIns::Create, class: "flex flex-col items-start" do
        sign_in_fields(op)
        submit "Sign In", flow_id: "sign-in-button", class: "bg-blue-400 text-white bold shadow rounded hover:ring self-end"
      end
      div class: "self-end" do
        link "Reset password ", to: PasswordResetRequests::New
        text " | "
        link "Sign up", to: SignUps::New
      end
    end
  end

  private def sign_in_fields(op)
    mount Shared::Field, attribute: op.email, label_text: "Email", &.email_input(autofocus: "true")
    mount Shared::Field, attribute: op.password, label_text: "Password", &.password_input
  end
end
