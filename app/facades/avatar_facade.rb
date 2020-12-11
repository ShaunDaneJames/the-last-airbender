class AvatarFacade

  def self.get_data(nation)
    members = []
    nation = nation.gsub(/_/, '+')
    member_data = AvatarService.affiliation(nation)
    avatar_data = AvatarService.get_avatars
    member_data.each do |member|
      members << Avatar.new(member, avatar_data)
    end
    members
  end
end
