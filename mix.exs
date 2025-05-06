defmodule TimeToStory.MixProject do
  use Mix.Project

  def project do
    [
      app: :ttsc,
      version: "0.1.0",
      elixir: "~> 1.17",
      escript: [main_module: TimeToStory],
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "TimeToStory",
      source_url: "https://github.com/0bvim/time_to_story",
      docs: &docs/0
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
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"]
    ]
  end
end
