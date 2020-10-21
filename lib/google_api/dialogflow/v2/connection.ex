# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApi.Dialogflow.V2.Connection do
  @moduledoc """
  Handle Tesla connections for GoogleApi.Dialogflow.V2.
  """

  @type t :: Tesla.Env.client()

  use GoogleApi.Gax.Connection,
    scopes: [
      # View and manage your data across Google Cloud Platform services
      "https://www.googleapis.com/auth/cloud-platform",

      # View, manage and query your Dialogflow agents
      "https://www.googleapis.com/auth/dialogflow"
    ],
    otp_app: :google_api_dialogflow_fork,
    base_url: "https://dialogflow.googleapis.com/"

  @doc """
  Create new connection with the given token and options keyword list.

  Currently the only understood option is `:zone`.
  See https://cloud.google.com/dialogflow/es/docs/how/region for the list of zones.
  """
  def new(token, opts) when is_list(opts) do
    client = new(token)
    base_url_middleware = {GoogleApi.Dialogflow.V2.SelectBaseUrl, :call, [opts]}
    %{client | pre: [base_url_middleware | client.pre]}
  end
end
