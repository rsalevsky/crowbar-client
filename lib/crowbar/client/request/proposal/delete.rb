#
# Copyright 2015, SUSE Linux GmbH
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
#

module Crowbar
  module Client
    module Request
      module Proposal
        #
        # Implementation for the proposal delete request
        #
        class Delete < Base
          #
          # HTTP method that gets used by the request
          #
          # @return [Symbol] the method for the request
          #
          def method
            :delete
          end

          #
          # Path to the API endpoint for the request
          #
          # @return [String] path to the API endpoint
          #
          def url
            [
              "crowbar",
              attrs.barclamp,
              "1.0",
              "proposals",
              attrs.proposal
            ].join("/")
          end
        end
      end
    end
  end
end
