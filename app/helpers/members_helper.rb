module MembersHelper
    def member_name(member)
        member.name
    end
    
    def member_email(member)
        member.email
    end
    
    def member_phone(member)
        member.phone
    end
    
    def member_address(member)
        member.address
    end
    
    def member_age(member)
        member.age
    end

    def member_on_track?(member)
        if member.plan.present?
            member.plan.start_date <= Date.today && member.plan.end_date >= Date.today ? "Yes" : "No"
        end
    end
end
