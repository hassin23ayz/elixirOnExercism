defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    deducted_amount = (before_discount * (discount/100))
    new_val = before_discount - deducted_amount
    new_val * 1.0 
  end

  def monthly_rate(hourly_rate, discount) do
    before_discount = (22 * daily_rate(hourly_rate))
    ceil_val = Float.ceil(apply_discount(before_discount, discount), 0)
    trunc(ceil_val)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_rate = apply_discount(hourly_rate, discount)
    discounted_rate = daily_rate(discounted_rate)
    Float.floor(budget/discounted_rate, 1)
  end
end
