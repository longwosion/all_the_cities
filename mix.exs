defmodule AllTheCities.MixProject do
  use Mix.Project

  def project do
    [
      app: :all_the_cities,
      version: "0.1.0",
      elixir: "~> 1.8",
      description:
        "All the 138,398 cities of the world with a population of at least 1000 inhabitants, in a big array.",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        extras: ["README.md"]
      ],
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.6.1"},
      {:pre_commit_hook, ">= 1.2.0", only: :dev, runtime: false},
      {:credo, ">= 1.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: [:dev, :test], runtime: false}
    ]
  end
end
