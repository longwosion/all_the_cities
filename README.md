# AllTheCities

All the 138,398 cities of the world with a population of at least 1000 inhabitants, in a big array.

a Elixir port of original node package [all-the-cities](https://github.com/zeke/all-the-cities)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `all_the_cities` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:all_the_cities, "~> 0.1.0"}
  ]
end
```

## Usage
```elixir
  cities = AllTheCities.load()

  Enum.filter(cities, fn c -> :binary.match(c.name, "Albuquerque") !== :nomatch end)

  #[
  #  %AllTheCities.City{
  #    admin_code: "NM",
  #    alt_country: "",
  #    country: "US",
  #    feature_code: "PPL",
  #    lat: 35.16199,
  #    lng: -106.6428,
  #    muni: "",
  #    muni_sub: "",
  #    name: "Los Ranchos de Albuquerque",
  #    population: 6024
  #  },
  #  %AllTheCities.City{
  #    admin_code: "NM",
  #    alt_country: "",
  #    country: "US",
  #    feature_code: "PPLA2",
  #    lat: 35.08449,
  #    lng: -106.65114,
  #    muni: "",
  #    muni_sub: "",
  #    name: "Albuquerque",
  #    population: 545852
  #  }
  #]  
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/all_the_cities](https://hexdocs.pm/all_the_cities).

