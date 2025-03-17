json.extract! member, :id, :first_name, :last_name, :created_at, :updated_at
json.plan do
    if member.plan.present?
        json.plan member.plan.price
        json.start_date member.plan.start_date
        json.end_date member.plan.end_date
    else
        json.null!
    end
end
json.url member_url(member, format: :json)
