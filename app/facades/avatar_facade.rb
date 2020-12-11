class AvatarFacade

  def self.get_data(nation)
    nation = nation.gsub(/_/, '+')
    data = AvatarService.affiliation(nation)

    Avatar.new(data)
  end
end
