module CommonCalcs
  def self.cost_to_renew_one_referral(calc)
    renewal_units = calc.renewal_period / 30.0
    base_referral_cost = base_renewal(calc) - calc.membership.renewal_discount
    (renewal_units * base_referral_cost * (1 - extension_discount(calc))).round(2)
  end

  def self.extension_discount(calc)
    case calc.renewal_period
      when 15 then 0
      when 30 then 0.05
      when 45 then 0.1
      when 60 then 0.15
      when 90 then 0.18
      when 150 then 0.25
      when 240 then 0.30
    end
  end

  def self.base_renewal(calc)
    case calc.referral_count
      when 0..250 then 0.20
      when 251..500 then 0.21
      when 501..750 then 0.22
      when 751..1000 then 0.23
      when 1001..1250 then 0.24
      when 1251..1500 then 0.25
      when 1501..1750 then 0.26
      else 0.27
    end
  end

end