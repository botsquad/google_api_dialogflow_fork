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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchAgentsResponse do
  @moduledoc """
  The response message for Agents.SearchAgents.

  ## Attributes

  *   `agents` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Agent.t)`, *default:* `nil`) - The list of agents. There will be a maximum number of items returned based
      on the page_size field in the request.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no
      more results in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agents => list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Agent.t()),
          :nextPageToken => String.t()
        }

  field(:agents, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Agent, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchAgentsResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchAgentsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SearchAgentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
