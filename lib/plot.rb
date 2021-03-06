class Plot
  def self.generate(setting, rng)
    plot_types = case setting.name
    when :america
      [:road_trip]
    when :voyage
      [:shipwreck]
    else
      [:walking_the_earth, :seekers_quest]
    end

    self.new(plot_types.sample(random: rng))
  end

  attr_accessor :type

  def initialize(type)
    @type = type
  end
end
