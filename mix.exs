defmodule GPIO.Mixfile do
  use Mix.Project

  def project do
    [app: :gpio_rpi,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps,
     description: description,
     package: package]
  end

  defp description do
    """
    Provides an Arduino-like interface for controlling the GPIO pins of a
    Raspberry Pi (2).
    """
  end

  def application do
    [applications: [:logger],
      registered: [GPIO.ButtonSupervisor, 
                    GPIO.LedSupervisor],
      mod: {GPIO, []}]
  end

  defp deps do
    []
  end

  defp package do
    [contributors: ["Luc Tielen", "Benny Loodts"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Primordus/gpio_rpi.git"}]
  end
end
