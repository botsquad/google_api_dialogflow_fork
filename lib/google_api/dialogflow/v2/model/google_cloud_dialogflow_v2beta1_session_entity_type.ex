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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType do
  @moduledoc """
  Represents a session entity type.

  Extends or replaces a developer entity type at the user session level (we
  refer to the entity types defined at the agent level as "developer entity
  types").

  Note: session entity types apply to all queries, regardless of the language.

  ## Attributes

  *   `entities` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t)`, *default:* `nil`) - Required. The collection of entities associated with this session entity
      type.
  *   `entityOverrideMode` (*type:* `String.t`, *default:* `nil`) - Required. Indicates whether the additional data should override or
      supplement the developer entity type definition.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The unique identifier of this session entity type. Format:
      `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
      Display Name>`, or
      `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
      ID>/sessions/<Session ID>/entityTypes/<Entity Type Display Name>`.
      If `Environment ID` is not specified, we assume default 'draft'
      environment. If `User ID` is not specified, we assume default '-' user.

      `<Entity Type Display Name>` must be the display name of an existing entity
      type in the same agent that will be overridden or supplemented.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entities =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t()),
          :entityOverrideMode => String.t(),
          :name => String.t()
        }

  field(
    :entities,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity,
    type: :list
  )

  field(:entityOverrideMode)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1SessionEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
