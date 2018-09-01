module NZDModul
  def self.nzd(x, y)
    y.zero? ? x : nzd(y, x.modulo(y))
  end
end
