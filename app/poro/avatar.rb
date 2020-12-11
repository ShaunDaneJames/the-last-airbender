class Avatar
  attr_reader :population, :members

  def initialize(data)
    @data = data
  end

  def population
    @data.count
  end

  # def name
  #   @data
  # end

  def members
    members = []
    @data.each do |member|
      member['name']
      member['allies']
      member['enemies']
      member['affiliation']
      member['photoUrl']

      members << member = ({
        name: member['name'],
        allies: member['allies'],
        enemies: member['enemies'],
        affiliation: member['affiliation'],
        photo: member['photoUrl']
        })
    end
    members
  end
end
