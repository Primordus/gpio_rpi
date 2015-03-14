defmodule GPIO do
  use Application

  @moduledoc """
  The GPIO application behavior. The main responsibility of this module is to
  properly start the supervision tree for monitoring input and output pins.
  """

  @doc """
  Starts the :gpio_rpi application.
  """
  def start(_type, _args) do
    GPIO.IO_Supervisor.start_link
  end
end
