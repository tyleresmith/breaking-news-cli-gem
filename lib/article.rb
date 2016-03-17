class Article
  attr_accessor :headline, :p5, :date, :p1, :p2, :p3, :p4

  def initialize(hash)
    @headline = hash[:headline]
    @date = hash[:date]
    @p1 = hash[:p1]
    @p2 = hash[:p2]
    @p3 = hash[:p3]
    @p4 = hash[:p4]
    @p5 = hash[:p5]
  end

end