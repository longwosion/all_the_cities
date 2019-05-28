defmodule AllTheCities.City do
  @moduledoc """
  protobuffer struct for one city object
  """

  use Protobuf, syntax: :proto3

  defstruct [
    :name,
    :country,
    :alt_country,
    :muni,
    :muni_sub,
    :feature_code,
    :admin_code,
    :population,
    :lat,
    :lng
  ]

  field(:name, 1, type: :string)
  field(:country, 2, type: :string)
  field(:alt_country, 3, type: :string)
  field(:muni, 4, type: :string)
  field(:muni_sub, 5, type: :string)
  field(:feature_code, 6, type: :string)
  field(:admin_code, 7, type: :string)

  field(:population, 8, type: :uint32)
  field(:lat, 9, type: :sint32)
  field(:lng, 10, type: :sint32)
end
