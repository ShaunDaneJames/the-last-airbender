class Avatar
  attr_reader :id, :allies, :enemies, :photourl, :name, :affiliation

  def initialize(member, avatar_list, photourl = nil)
    @id = member['_id']
    @allies = member['allies']
    @enemies = member['enemies']
    @photourl = member['photoUrl']
    @name = member['name']
    @affiliation = member['affiliation']
    @avatars = avatar_list
    @avatar = false
  end

  def avatar?
    @avatar = @avatars.any? do |avatar|
      avatar[:name] == @name
    end
  end
end
