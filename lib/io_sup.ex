defmodule GPIO.IO_Supervisor do
  use Supervisor
  alias GPIO.LedSupervisor
  alias GPIO.ButtonSupervisor

  @moduledoc """
  Supervisor for everything IO related (buttons, LEDs, ...)
  """

  @doc """
  Starts the IO supervisor.
  """
  def start_link, do: Supervisor.start_link(__MODULE__, :ok)

  @doc false
  def init(:ok) do
    tree = [supervisor(LedSupervisor, [:ok]),
            supervisor(ButtonSupervisor, [:ok])]
    supervise(tree, strategy: :one_for_all)
  end
end
