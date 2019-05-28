defmodule AllTheCities do
  @moduledoc """
  All the 138,398 cities of the world with a population of at least 1000 inhabitants, in a big array.
  """

  use Bitwise
  alias AllTheCities.City

  @doc """
  load cites from serialized pbf data to List

  ## Examples

      iex> cities = AllTheCities.load()
      iex> Enum.count(cities)
      138398
      iex> Enum.at(cities, 138397)
      %AllTheCities.City{
              admin_code: "02",
              alt_country: "",
              country: "AD",
              feature_code: "PPL",
              lat: 42.57952,
              lng: 1.65362,
              muni: "",
              muni_sub: "",
              name: "El Tarter",
              population: 1052
            }

  """
  def load do
    results = []

    :all_the_cities
    |> Application.app_dir("priv")
    |> Path.join("cities.pbf")
    |> File.read!()
    |> decode(results, 0, 0)
  end

  def decode(data, results, last_lat, last_lng) do
    case data do
      <<>> ->
        results

      <<l::size(8), m::binary-size(l), r::binary>> ->
        {city, last_lat, last_lng} = decode_city(m, last_lat, last_lng)
        results = [city | results]
        decode(r, results, last_lat, last_lng)
    end
  end

  def decode_city(m, last_lat, last_lng) do
    city = City.decode(m)

    {%City{city | lat: (last_lat + city.lat) / 1.0e5, lng: (last_lng + city.lng) / 1.0e5},
     last_lat + city.lat, last_lng + city.lng}
  end
end
