defmodule GoogleApi.Dialogflow.V2.SelectBaseUrl do
  @behaviour Tesla.Middleware

  @impl Tesla.Middleware
  def call(env, next, opts) do
    url = select_base_url(opts[:zone], env.url)
    Tesla.run(%{env | url: url}, next)
  end

  # https://cloud.google.com/dialogflow/es/docs/how/region

  @zones ~w(europe-west2 asia-northeast1 australia-southeast1)
  defp select_base_url(zone, url) when zone in @zones do
    url = "https://#{zone}-dialogflow.googleapis.com" <> url

    Regex.replace(~r|(projects/[^/]+)|, url, "\\1/locations/" <> zone)
    |> String.replace("/v2/", "/v2beta1/")
  end

  defp select_base_url(_, url) do
    url
  end
end
