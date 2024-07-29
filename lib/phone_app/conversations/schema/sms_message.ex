#page 90
defmodule PhoneApp.Conversations.Schema.SmsMessage do
  use Ecto.Schema
  @timestamps_opts [type: :utc_datetime_usec]
  schema "sms_messages" do
    # 1-to-many realtionship with the other person in the conversation
    belongs_to :contact, PhoneApp.Contacts.Schema.Contact

    field :message_sid, :string
  end

end
