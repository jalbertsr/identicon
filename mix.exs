defmodule Identicon.MixProject do
  use Mix.Project

  def project do
    [
      app: :identicon,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      description: description(),
      deps: deps(),
      package: package(),
      name: "Identicon",
      source_url: "https://github.com/jalbertsr/identicon"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description() do
    "Given a string it returns a profile identicon image. "
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:egd, github: "erlang/egd"}
    ]
  end

   defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "postgrex",
      # These are the default files included in the package
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Joan Albert Segura"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jalbertsr/identicon"}
    ]
  end
end
