defmodule Mariaex.Mixfile do
  use Mix.Project

  def project do
    [app: :mariaex,
     version: "0.9.1",
     elixir: "~> 1.3",
     deps: deps(),
     name: "Mariaex",
     source_url: "https://github.com/xerions/mariaex",
     test_coverage: [tool: Coverex.Task, coveralls: true],
     description: description(),
     package: package(),
     docs: [
      main: "Mariaex",
      extras: ["README.md"]
     ]
    ]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :crypto, :decimal, :db_connection],
    extra_applications: [:ssl]]
  end

  defp deps do
    [{:decimal, "~> 2.0.0"},
     {:db_connection, "~> 2.4.1"},
     {:coverex, "~> 1.5.0", only: :test},
     {:ex_doc, "~> 0.23.0", only: :dev},
     {:poison, github: "mreyk/poison", branch: "fix_3.1.0", override: true, optional: true}]
  end

  defp description do
    "Pure elixir database driver for MariaDB / MySQL."
  end

  defp package do
    [maintainers: ["Dmitry Russ(Aleksandrov)"],
     licenses: ["Apache 2.0"],
     links: %{"Github" => "https://github.com/xerions/mariaex"}]
  end
end
