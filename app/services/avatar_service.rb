class AvatarService

  def self.conn
  Faraday.new('https://last-airbender-api.herokuapp.com/api/v1/characters')
  end

  def self.affiliation(nation)
    json = conn.get("?affiliation=#{nation}")
    JSON.parse(json.body, symbolized_names: true)
  end

  def self.get_avatars
  avatar_list = conn.get("avatar")

  JSON.parse(avatar_list.body, symbolize_names: true)
end
end
