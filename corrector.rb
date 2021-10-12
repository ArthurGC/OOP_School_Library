class Corrector
  def correct_name(name)
    if name.length > 10
      name.capitalize.strip
    else
      name.capitalize
    end
  end
end

p Corrector.new.correct_name('alexanderDrigoasdasdas')
