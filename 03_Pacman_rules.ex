defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    power_pellet_active and touching_ghost
  end

  def score?(touching_power_pellet, touching_dot) do
    touching_power_pellet or touching_dot
  end

  def lose?(power_pellet_active, touching_ghost) do
    if power_pellet_active == false and touching_ghost == true do
      true
    else
      false
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    if lose?(power_pellet_active, touching_ghost) == false and has_eaten_all_dots == true do
      true
    else
      false
    end
  end
end
