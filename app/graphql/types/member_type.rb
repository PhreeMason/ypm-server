Types::DateTimeType = GraphQL::ScalarType.define do
  name 'DateTime'

  coerce_input ->(value, _ctx) { Time.zone.parse(value) }
  coerce_result ->(value, _ctx) { value.utc.iso8601 }
end

Types::MemberType = GraphQL::ObjectType.define do
  name 'Member'

  # it has the following fields
  field :id, !types.ID
  field :first_name, !types.String 
  field :last_name, !types.String 
  field :age, !types.Int
  field :birthday, Types::DateTimeType
  field :phone_number, !types.String 
end