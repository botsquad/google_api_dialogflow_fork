# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentTrainingPhrasePart do
  @moduledoc """
  Represents a part of a training phrase.

  ## Attributes

  - alias (String.t): Optional. The parameter name for the value extracted from the annotated part of the example. This field is required for annotated parts of the training phrase. Defaults to: `null`.
  - entityType (String.t): Optional. The entity type name prefixed with &#x60;@&#x60;. This field is required for annotated parts of the training phrase. Defaults to: `null`.
  - text (String.t): Required. The text for this part. Defaults to: `null`.
  - userDefined (boolean()): Optional. Indicates whether the text was manually annotated. This field is set to true when the Dialogflow Console is used to manually annotate the part. When creating an annotated part with the API, you must set this to true. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alias => any(),
          :entityType => any(),
          :text => any(),
          :userDefined => any()
        }

  field(:alias)
  field(:entityType)
  field(:text)
  field(:userDefined)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentTrainingPhrasePart do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentTrainingPhrasePart.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentTrainingPhrasePart do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
