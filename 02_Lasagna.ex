defmodule Lasagna do

  def expected_minutes_in_oven() do
      40
  end

  def remaining_minutes_in_oven(t_passed) do
      if 40 > t_passed do
        40 - t_passed
      else
        0
      end
  end

  def preparation_time_in_minutes(no_of_layers) do
      no_of_layers*2 
  end

  def total_time_in_minutes(no_of_layers_added, been_in_oven) do
      preparation_time_in_minutes(no_of_layers_added)+been_in_oven
  end

  def alarm() do
      "Ding!"
  end 

end
