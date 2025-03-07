defmodule WaifuVault.MixProject do
  use Mix.Project

  def project do
    [
      app: :waifu_vault,
      version: "1.0.0",
      elixir: "~> 1.16",
      description: "API wrapper for https://waifuvault.moe/",
      package: %{
        licenses: ["MIT"],
        links: %{
          "GitHub" => "https://github.com/waifuvault/waifuVault-elixir-api",
          "Swagger" => "https://waifuvault.moe/api-docs/",
          "WaifuVault Web Site" => "https://waifuvault.moe/"
        }
      },
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: []
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
      {:req, "~> 0.5.8"},
      {:plug, "~> 1.0"},
      {:multipart, "~> 0.4.0"},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end
end
