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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo do
  @moduledoc """
  Represents page information communicated to and from the webhook.

  ## Attributes

  *   `currentPage` (*type:* `String.t`, *default:* `nil`) - Always present for WebhookRequest. Ignored for WebhookResponse. The unique identifier of the current page. Format: `projects//locations//agents//flows//pages/`.
  *   `formInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.t`, *default:* `nil`) - Optional for both WebhookRequest and WebhookResponse. Information about the form.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentPage => String.t(),
          :formInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo.t()
        }

  field(:currentPage)

  field(:formInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
