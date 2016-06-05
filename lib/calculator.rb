module Calculator

  def self.get_operator(a)
    case a
      when 'sum'
        '+'
      when 'subtr'
        '-'
      when 'mult'
        '*'
      when 'div'
        '/'
      else
        a
    end
  end

  def self.drop_fract_int(a)
    (a % 1)== 0 ? a.to_i : a
  end

  def self.sum(a, b)
    drop_fract_int(a.to_f + b.to_f)
  end

  def self.subtr(a, b)
    drop_fract_int(a.to_f - b.to_f)
  end

  def self.mult(a, b)
    drop_fract_int(a.to_f * b.to_f)
  end

  def self.div(a, b)
    drop_fract_int(a.to_f / b.to_f)
  end

  def self.sin(a)
    drop_fract_int(Math.sin(a.to_f))
  end

  def self.cos(a)
    drop_fract_int(Math.cos(a.to_f))
  end
  
end