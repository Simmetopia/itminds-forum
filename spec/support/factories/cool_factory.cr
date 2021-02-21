class CoolFactory < Avram::Factory
  def initialize
    title "#{sequence("test-email")}@example.com"
    count 22
  end
end
