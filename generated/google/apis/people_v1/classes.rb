# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PeopleV1
      
      # The response for a single person
      class PersonResponse
        include Google::Apis::Core::Hashable
      
        # Information about a person merged from various data sources such as the
        # authenticated user's contacts and profile data.
        # Most fields can have multiple items. The items in a field have no guaranteed
        # order, but each non-empty field is guaranteed to have exactly one field with
        # `metadata.primary` set to true.
        # Corresponds to the JSON property `person`
        # @return [Google::Apis::PeopleV1::Person]
        attr_accessor :person
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::PeopleV1::Status]
        attr_accessor :status
      
        # **DEPRECATED** (Please use status instead)
        # [HTTP 1.1 status code]
        # (http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html).
        # Corresponds to the JSON property `httpStatusCode`
        # @return [Fixnum]
        attr_accessor :http_status_code
      
        # The original requested resource name. May be different than the resource
        # name on the returned person.
        # The resource name can change when adding or removing fields that link a
        # contact and profile such as a verified email, verified phone number, or a
        # profile URL.
        # Corresponds to the JSON property `requestedResourceName`
        # @return [String]
        attr_accessor :requested_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person = args[:person] if args.key?(:person)
          @status = args[:status] if args.key?(:status)
          @http_status_code = args[:http_status_code] if args.key?(:http_status_code)
          @requested_resource_name = args[:requested_resource_name] if args.key?(:requested_resource_name)
        end
      end
      
      # A person's relation to another person.
      class Relation
        include Google::Apis::Core::Hashable
      
        # The person's relation to the other person. The type can be custom or
        # predefined.
        # Possible values include, but are not limited to, the following values:
        # * `spouse`
        # * `child`
        # * `mother`
        # * `father`
        # * `parent`
        # * `brother`
        # * `sister`
        # * `friend`
        # * `relative`
        # * `domesticPartner`
        # * `manager`
        # * `assistant`
        # * `referredBy`
        # * `partner`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The type of the relation translated and formatted in the viewer's account
        # locale or the locale specified in the Accept-Language HTTP header.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The name of the other person this relation refers to.
        # Corresponds to the JSON property `person`
        # @return [String]
        attr_accessor :person
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @person = args[:person] if args.key?(:person)
        end
      end
      
      # A person's occupation.
      class Occupation
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The occupation; for example, `carpenter`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A contact group.
      class ContactGroup
        include Google::Apis::Core::Hashable
      
        # The resource name for the contact group, assigned by the server. An ASCII
        # string, in the form of `contactGroups/`<var>contact_group_id</var>.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the
        # resource. Used for web cache validation.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The read-only contact group type.
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        # The read-only name translated and formatted in the viewer's account locale
        # or the `Accept-Language` HTTP header locale for system groups names.
        # Group names set by the owner are the same as name.
        # Corresponds to the JSON property `formattedName`
        # @return [String]
        attr_accessor :formatted_name
      
        # The list of contact person resource names that are members of the contact
        # group. The field is not populated for LIST requests and can only be updated
        # through the
        # [ModifyContactGroupMembers](/people/api/rest/v1/contactgroups/members/modify).
        # Corresponds to the JSON property `memberResourceNames`
        # @return [Array<String>]
        attr_accessor :member_resource_names
      
        # The contact group name set by the group owner or a system provided name
        # for system groups.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The read-only metadata about a contact group.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::ContactGroupMetadata]
        attr_accessor :metadata
      
        # The total number of contacts in the group irrespective of max members in
        # specified in the request.
        # Corresponds to the JSON property `memberCount`
        # @return [Fixnum]
        attr_accessor :member_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @etag = args[:etag] if args.key?(:etag)
          @group_type = args[:group_type] if args.key?(:group_type)
          @formatted_name = args[:formatted_name] if args.key?(:formatted_name)
          @member_resource_names = args[:member_resource_names] if args.key?(:member_resource_names)
          @name = args[:name] if args.key?(:name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @member_count = args[:member_count] if args.key?(:member_count)
        end
      end
      
      # Information about a person merged from various data sources such as the
      # authenticated user's contacts and profile data.
      # Most fields can have multiple items. The items in a field have no guaranteed
      # order, but each non-empty field is guaranteed to have exactly one field with
      # `metadata.primary` set to true.
      class Person
        include Google::Apis::Core::Hashable
      
        # The person's read-only relationship statuses.
        # Corresponds to the JSON property `relationshipStatuses`
        # @return [Array<Google::Apis::PeopleV1::RelationshipStatus>]
        attr_accessor :relationship_statuses
      
        # The person's read-only photos.
        # Corresponds to the JSON property `photos`
        # @return [Array<Google::Apis::PeopleV1::Photo>]
        attr_accessor :photos
      
        # **DEPRECATED** (Please use `person.ageRanges` instead)**
        # The person's read-only age range.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        # The person's read-only taglines.
        # Corresponds to the JSON property `taglines`
        # @return [Array<Google::Apis::PeopleV1::Tagline>]
        attr_accessor :taglines
      
        # The person's read-only age ranges.
        # Corresponds to the JSON property `ageRanges`
        # @return [Array<Google::Apis::PeopleV1::AgeRangeType>]
        attr_accessor :age_ranges
      
        # The person's street addresses.
        # Corresponds to the JSON property `addresses`
        # @return [Array<Google::Apis::PeopleV1::Address>]
        attr_accessor :addresses
      
        # The person's events.
        # Corresponds to the JSON property `events`
        # @return [Array<Google::Apis::PeopleV1::Event>]
        attr_accessor :events
      
        # The person's read-only group memberships.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::PeopleV1::Membership>]
        attr_accessor :memberships
      
        # The person's phone numbers.
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::PeopleV1::PhoneNumber>]
        attr_accessor :phone_numbers
      
        # The person's read-only cover photos.
        # Corresponds to the JSON property `coverPhotos`
        # @return [Array<Google::Apis::PeopleV1::CoverPhoto>]
        attr_accessor :cover_photos
      
        # The person's instant messaging clients.
        # Corresponds to the JSON property `imClients`
        # @return [Array<Google::Apis::PeopleV1::ImClient>]
        attr_accessor :im_clients
      
        # The person's birthdays.
        # Corresponds to the JSON property `birthdays`
        # @return [Array<Google::Apis::PeopleV1::Birthday>]
        attr_accessor :birthdays
      
        # The person's locale preferences.
        # Corresponds to the JSON property `locales`
        # @return [Array<Google::Apis::PeopleV1::Locale>]
        attr_accessor :locales
      
        # The person's read-only relationship interests.
        # Corresponds to the JSON property `relationshipInterests`
        # @return [Array<Google::Apis::PeopleV1::RelationshipInterest>]
        attr_accessor :relationship_interests
      
        # The person's associated URLs.
        # Corresponds to the JSON property `urls`
        # @return [Array<Google::Apis::PeopleV1::Url>]
        attr_accessor :urls
      
        # The person's nicknames.
        # Corresponds to the JSON property `nicknames`
        # @return [Array<Google::Apis::PeopleV1::Nickname>]
        attr_accessor :nicknames
      
        # The person's names.
        # Corresponds to the JSON property `names`
        # @return [Array<Google::Apis::PeopleV1::Name>]
        attr_accessor :names
      
        # The person's relations.
        # Corresponds to the JSON property `relations`
        # @return [Array<Google::Apis::PeopleV1::Relation>]
        attr_accessor :relations
      
        # The person's occupations.
        # Corresponds to the JSON property `occupations`
        # @return [Array<Google::Apis::PeopleV1::Occupation>]
        attr_accessor :occupations
      
        # The person's email addresses.
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<Google::Apis::PeopleV1::EmailAddress>]
        attr_accessor :email_addresses
      
        # The person's past or current organizations.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::PeopleV1::Organization>]
        attr_accessor :organizations
      
        # The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the
        # resource. Used for web cache validation.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The person's bragging rights.
        # Corresponds to the JSON property `braggingRights`
        # @return [Array<Google::Apis::PeopleV1::BraggingRights>]
        attr_accessor :bragging_rights
      
        # The read-only metadata about a person.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::PersonMetadata]
        attr_accessor :metadata
      
        # The person's residences.
        # Corresponds to the JSON property `residences`
        # @return [Array<Google::Apis::PeopleV1::Residence>]
        attr_accessor :residences
      
        # The person's genders.
        # Corresponds to the JSON property `genders`
        # @return [Array<Google::Apis::PeopleV1::Gender>]
        attr_accessor :genders
      
        # The person's interests.
        # Corresponds to the JSON property `interests`
        # @return [Array<Google::Apis::PeopleV1::Interest>]
        attr_accessor :interests
      
        # The resource name for the person, assigned by the server. An ASCII string
        # with a max length of 27 characters, in the form of
        # `people/`<var>person_id</var>.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # The person's biographies.
        # Corresponds to the JSON property `biographies`
        # @return [Array<Google::Apis::PeopleV1::Biography>]
        attr_accessor :biographies
      
        # The person's skills.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::PeopleV1::Skill>]
        attr_accessor :skills
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @relationship_statuses = args[:relationship_statuses] if args.key?(:relationship_statuses)
          @photos = args[:photos] if args.key?(:photos)
          @age_range = args[:age_range] if args.key?(:age_range)
          @taglines = args[:taglines] if args.key?(:taglines)
          @age_ranges = args[:age_ranges] if args.key?(:age_ranges)
          @addresses = args[:addresses] if args.key?(:addresses)
          @events = args[:events] if args.key?(:events)
          @memberships = args[:memberships] if args.key?(:memberships)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @cover_photos = args[:cover_photos] if args.key?(:cover_photos)
          @im_clients = args[:im_clients] if args.key?(:im_clients)
          @birthdays = args[:birthdays] if args.key?(:birthdays)
          @locales = args[:locales] if args.key?(:locales)
          @relationship_interests = args[:relationship_interests] if args.key?(:relationship_interests)
          @urls = args[:urls] if args.key?(:urls)
          @nicknames = args[:nicknames] if args.key?(:nicknames)
          @names = args[:names] if args.key?(:names)
          @relations = args[:relations] if args.key?(:relations)
          @occupations = args[:occupations] if args.key?(:occupations)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @organizations = args[:organizations] if args.key?(:organizations)
          @etag = args[:etag] if args.key?(:etag)
          @bragging_rights = args[:bragging_rights] if args.key?(:bragging_rights)
          @metadata = args[:metadata] if args.key?(:metadata)
          @residences = args[:residences] if args.key?(:residences)
          @genders = args[:genders] if args.key?(:genders)
          @interests = args[:interests] if args.key?(:interests)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @biographies = args[:biographies] if args.key?(:biographies)
          @skills = args[:skills] if args.key?(:skills)
        end
      end
      
      # A request to update an existing contact group. Only the name can be updated.
      class UpdateContactGroupRequest
        include Google::Apis::Core::Hashable
      
        # A contact group.
        # Corresponds to the JSON property `contactGroup`
        # @return [Google::Apis::PeopleV1::ContactGroup]
        attr_accessor :contact_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_group = args[:contact_group] if args.key?(:contact_group)
        end
      end
      
      # The read-only metadata about a contact group.
      class ContactGroupMetadata
        include Google::Apis::Core::Hashable
      
        # The time the group was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # True if the contact group resource has been deleted. Populated only for
        # [`ListContactGroups`](/people/api/rest/v1/contactgroups/list) requests
        # that include a sync token.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @deleted = args[:deleted] if args.key?(:deleted)
        end
      end
      
      # A person's past or current residence.
      class Residence
        include Google::Apis::Core::Hashable
      
        # True if the residence is the person's current residence;
        # false if the residence is a past residence.
        # Corresponds to the JSON property `current`
        # @return [Boolean]
        attr_accessor :current
        alias_method :current?, :current
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The address of the residence.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current = args[:current] if args.key?(:current)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # An event related to the person.
      class Event
        include Google::Apis::Core::Hashable
      
        # The read-only type of the event translated and formatted in the
        # viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The type of the event. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `anniversary`
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # Represents a whole calendar date, for example a date of birth. The time
        # of day and time zone are either specified elsewhere or are not
        # significant. The date is relative to the
        # [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/
        # Proleptic_Gregorian_calendar).
        # The day may be 0 to represent a year and month where the day is not
        # significant. The year may be 0 to represent a month and day independent
        # of year; for example, anniversary date.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PeopleV1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # The response to a modify contact group members request.
      class ModifyContactGroupMembersResponse
        include Google::Apis::Core::Hashable
      
        # The contact people resource names that were not found.
        # Corresponds to the JSON property `notFoundResourceNames`
        # @return [Array<String>]
        attr_accessor :not_found_resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @not_found_resource_names = args[:not_found_resource_names] if args.key?(:not_found_resource_names)
        end
      end
      
      # The read-only metadata about a profile.
      class ProfileMetadata
        include Google::Apis::Core::Hashable
      
        # The profile object type.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # The user types.
        # Corresponds to the JSON property `userTypes`
        # @return [Array<String>]
        attr_accessor :user_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_type = args[:object_type] if args.key?(:object_type)
          @user_types = args[:user_types] if args.key?(:user_types)
        end
      end
      
      # A person's gender.
      class Gender
        include Google::Apis::Core::Hashable
      
        # The read-only value of the gender translated and formatted in the viewer's
        # account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The gender for the person. The gender can be custom or predefined.
        # Possible values include, but are not limited to, the
        # following:
        # * `male`
        # * `female`
        # * `other`
        # * `unknown`
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A person's read-only cover photo. A large image shown on the person's
      # profile page that represents who they are or what they care about.
      class CoverPhoto
        include Google::Apis::Core::Hashable
      
        # The URL of the cover photo.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # True if the cover photo is the default cover photo;
        # false if the cover photo is a user-provided cover photo.
        # Corresponds to the JSON property `default`
        # @return [Boolean]
        attr_accessor :default
        alias_method :default?, :default
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
          @default = args[:default] if args.key?(:default)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # One of the person's interests.
      class Interest
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The interest; for example, `stargazing`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A person's nickname.
      class Nickname
        include Google::Apis::Core::Hashable
      
        # The nickname.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The type of the nickname.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # A person's email address.
      class EmailAddress
        include Google::Apis::Core::Hashable
      
        # The display name of the email.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The type of the email address. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `home`
        # * `work`
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The email address.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The read-only type of the email address translated and formatted in the
        # viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
        end
      end
      
      # A skill that the person has.
      class Skill
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The skill; for example, `underwater basket weaving`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents a whole calendar date, for example a date of birth. The time
      # of day and time zone are either specified elsewhere or are not
      # significant. The date is relative to the
      # [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/
      # Proleptic_Gregorian_calendar).
      # The day may be 0 to represent a year and month where the day is not
      # significant. The year may be 0 to represent a month and day independent
      # of year; for example, anniversary date.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @year = args[:year] if args.key?(:year)
          @month = args[:month] if args.key?(:month)
        end
      end
      
      # A read-only brief one-line description of the person.
      class Tagline
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The tagline.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A person's name. If the name is a mononym, the family name is empty.
      class Name
        include Google::Apis::Core::Hashable
      
        # The honorific prefixes spelled as they sound.
        # Corresponds to the JSON property `phoneticHonorificPrefix`
        # @return [String]
        attr_accessor :phonetic_honorific_prefix
      
        # The given name spelled as it sounds.
        # Corresponds to the JSON property `phoneticGivenName`
        # @return [String]
        attr_accessor :phonetic_given_name
      
        # The family name spelled as it sounds.
        # Corresponds to the JSON property `phoneticFamilyName`
        # @return [String]
        attr_accessor :phonetic_family_name
      
        # The family name.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # The middle name(s) spelled as they sound.
        # Corresponds to the JSON property `phoneticMiddleName`
        # @return [String]
        attr_accessor :phonetic_middle_name
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The full name spelled as it sounds.
        # Corresponds to the JSON property `phoneticFullName`
        # @return [String]
        attr_accessor :phonetic_full_name
      
        # The read-only display name with the last name first formatted according to
        # the locale specified by the viewer's account or the
        # `Accept-Language` HTTP header.
        # Corresponds to the JSON property `displayNameLastFirst`
        # @return [String]
        attr_accessor :display_name_last_first
      
        # The read-only display name formatted according to the locale specified by
        # the viewer's account or the `Accept-Language` HTTP header.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The honorific suffixes, such as `Jr.`
        # Corresponds to the JSON property `honorificSuffix`
        # @return [String]
        attr_accessor :honorific_suffix
      
        # The honorific prefixes, such as `Mrs.` or `Dr.`
        # Corresponds to the JSON property `honorificPrefix`
        # @return [String]
        attr_accessor :honorific_prefix
      
        # The honorific suffixes spelled as they sound.
        # Corresponds to the JSON property `phoneticHonorificSuffix`
        # @return [String]
        attr_accessor :phonetic_honorific_suffix
      
        # The given name.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # The middle name(s).
        # Corresponds to the JSON property `middleName`
        # @return [String]
        attr_accessor :middle_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phonetic_honorific_prefix = args[:phonetic_honorific_prefix] if args.key?(:phonetic_honorific_prefix)
          @phonetic_given_name = args[:phonetic_given_name] if args.key?(:phonetic_given_name)
          @phonetic_family_name = args[:phonetic_family_name] if args.key?(:phonetic_family_name)
          @family_name = args[:family_name] if args.key?(:family_name)
          @phonetic_middle_name = args[:phonetic_middle_name] if args.key?(:phonetic_middle_name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @phonetic_full_name = args[:phonetic_full_name] if args.key?(:phonetic_full_name)
          @display_name_last_first = args[:display_name_last_first] if args.key?(:display_name_last_first)
          @display_name = args[:display_name] if args.key?(:display_name)
          @honorific_suffix = args[:honorific_suffix] if args.key?(:honorific_suffix)
          @honorific_prefix = args[:honorific_prefix] if args.key?(:honorific_prefix)
          @phonetic_honorific_suffix = args[:phonetic_honorific_suffix] if args.key?(:phonetic_honorific_suffix)
          @given_name = args[:given_name] if args.key?(:given_name)
          @middle_name = args[:middle_name] if args.key?(:middle_name)
        end
      end
      
      # A person's locale preference.
      class Locale
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The well-formed [IETF BCP 47](https://tools.ietf.org/html/bcp47)
        # language tag representing the locale.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A person's short biography.
      class Biography
        include Google::Apis::Core::Hashable
      
        # The content type of the biography.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The short biography.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Metadata about a field.
      class FieldMetadata
        include Google::Apis::Core::Hashable
      
        # True if the field is verified; false if the field is unverified. A
        # verified field is typically a name, email address, phone number, or
        # website that has been confirmed to be owned by the person.
        # Corresponds to the JSON property `verified`
        # @return [Boolean]
        attr_accessor :verified
        alias_method :verified?, :verified
      
        # True if the field is the primary field; false if the field is a secondary
        # field.
        # Corresponds to the JSON property `primary`
        # @return [Boolean]
        attr_accessor :primary
        alias_method :primary?, :primary
      
        # The source of a field.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::PeopleV1::Source]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @verified = args[:verified] if args.key?(:verified)
          @primary = args[:primary] if args.key?(:primary)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A person's read-only relationship interest .
      class RelationshipInterest
        include Google::Apis::Core::Hashable
      
        # The value of the relationship interest translated and formatted in the
        # viewer's account locale or the locale specified in the Accept-Language
        # HTTP header.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The kind of relationship the person is looking for. The value can be custom
        # or predefined. Possible values include, but are not limited to, the
        # following values:
        # * `friend`
        # * `date`
        # * `relationship`
        # * `networking`
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The source of a field.
      class Source
        include Google::Apis::Core::Hashable
      
        # **Only populated in `person.metadata.sources`.**
        # Last update timestamp of this source.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The source type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # **Only populated in `person.metadata.sources`.**
        # The [HTTP entity tag](https://en.wikipedia.org/wiki/HTTP_ETag) of the
        # source. Used for web cache validation.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The unique identifier within the source type generated by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The read-only metadata about a profile.
        # Corresponds to the JSON property `profileMetadata`
        # @return [Google::Apis::PeopleV1::ProfileMetadata]
        attr_accessor :profile_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @type = args[:type] if args.key?(:type)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @profile_metadata = args[:profile_metadata] if args.key?(:profile_metadata)
        end
      end
      
      # 
      class GetPeopleResponse
        include Google::Apis::Core::Hashable
      
        # The response for each requested resource name.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::PeopleV1::PersonResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A person's read-only photo. A picture shown next to the person's name to
      # help others recognize the person.
      class Photo
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The URL of the photo. You can change the desired size by appending a query
        # parameter `sz=`<var>size</var> at the end of the url. Example:
        # `https://lh3.googleusercontent.com/-T_wVWLlmg7w/AAAAAAAAAAI/AAAAAAAABa8/
        # 00gzXvDBYqw/s100/photo.jpg?sz=50`
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A person's phone number.
      class PhoneNumber
        include Google::Apis::Core::Hashable
      
        # The phone number.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The read-only type of the phone number translated and formatted in the
        # viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The read-only canonicalized [ITU-T E.164](https://law.resource.org/pub/us/cfr/
        # ibr/004/itu-t.E.164.1.2008.pdf)
        # form of the phone number.
        # Corresponds to the JSON property `canonicalForm`
        # @return [String]
        attr_accessor :canonical_form
      
        # The type of the phone number. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `home`
        # * `work`
        # * `mobile`
        # * `homeFax`
        # * `workFax`
        # * `otherFax`
        # * `pager`
        # * `workMobile`
        # * `workPager`
        # * `main`
        # * `googleVoice`
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @canonical_form = args[:canonical_form] if args.key?(:canonical_form)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # 
      class ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # **DEPRECATED** (Please use totalItems)
        # The total number of people in the list without pagination.
        # Corresponds to the JSON property `totalPeople`
        # @return [Fixnum]
        attr_accessor :total_people
      
        # The token that can be used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of items in the list without pagination.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        # The token that can be used to retrieve changes since the last request.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        # The list of people that the requestor is connected to.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::PeopleV1::Person>]
        attr_accessor :connections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_people = args[:total_people] if args.key?(:total_people)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_items = args[:total_items] if args.key?(:total_items)
          @next_sync_token = args[:next_sync_token] if args.key?(:next_sync_token)
          @connections = args[:connections] if args.key?(:connections)
        end
      end
      
      # A person's birthday. At least one of the `date` and `text` fields are
      # specified. The `date` and `text` fields typically represent the same
      # date, but are not guaranteed to.
      class Birthday
        include Google::Apis::Core::Hashable
      
        # A free-form string representing the user's birthday.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # Represents a whole calendar date, for example a date of birth. The time
        # of day and time zone are either specified elsewhere or are not
        # significant. The date is relative to the
        # [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/
        # Proleptic_Gregorian_calendar).
        # The day may be 0 to represent a year and month where the day is not
        # significant. The year may be 0 to represent a month and day independent
        # of year; for example, anniversary date.
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::PeopleV1::Date]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @metadata = args[:metadata] if args.key?(:metadata)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # A request to create a new contact group.
      class CreateContactGroupRequest
        include Google::Apis::Core::Hashable
      
        # A contact group.
        # Corresponds to the JSON property `contactGroup`
        # @return [Google::Apis::PeopleV1::ContactGroup]
        attr_accessor :contact_group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_group = args[:contact_group] if args.key?(:contact_group)
        end
      end
      
      # A person's physical address. May be a P.O. box or street address. All fields
      # are optional.
      class Address
        include Google::Apis::Core::Hashable
      
        # The [ISO 3166-1 alpha-2](http://www.iso.org/iso/country_codes.htm) country
        # code of the address.
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # The read-only type of the address translated and formatted in the viewer's
        # account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The city of the address.
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # The unstructured value of the address. If this is not set by the user it
        # will be automatically constructed from structured values.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # The country of the address.
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # The type of the address. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `home`
        # * `work`
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The extended address of the address; for example, the apartment number.
        # Corresponds to the JSON property `extendedAddress`
        # @return [String]
        attr_accessor :extended_address
      
        # The P.O. box of the address.
        # Corresponds to the JSON property `poBox`
        # @return [String]
        attr_accessor :po_box
      
        # The postal code of the address.
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # The region of the address; for example, the state or province.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The street address.
        # Corresponds to the JSON property `streetAddress`
        # @return [String]
        attr_accessor :street_address
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @city = args[:city] if args.key?(:city)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @country = args[:country] if args.key?(:country)
          @type = args[:type] if args.key?(:type)
          @extended_address = args[:extended_address] if args.key?(:extended_address)
          @po_box = args[:po_box] if args.key?(:po_box)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @region = args[:region] if args.key?(:region)
          @street_address = args[:street_address] if args.key?(:street_address)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # A Google contact group membership.
      class ContactGroupMembership
        include Google::Apis::Core::Hashable
      
        # The contact group ID for the contact group membership. The contact group
        # ID can be custom or predefined. Possible values include, but are not
        # limited to, the following:
        # *  `myContacts`
        # *  `starred`
        # *  A numerical ID for user-created groups.
        # Corresponds to the JSON property `contactGroupId`
        # @return [String]
        attr_accessor :contact_group_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_group_id = args[:contact_group_id] if args.key?(:contact_group_id)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # The read-only metadata about a person.
      class PersonMetadata
        include Google::Apis::Core::Hashable
      
        # Any former resource names this person has had. Populated only for
        # [`connections.list`](/people/api/rest/v1/people.connections/list) requests
        # that include a sync token.
        # The resource name may change when adding or removing fields that link a
        # contact and profile such as a verified email, verified phone number, or
        # profile URL.
        # Corresponds to the JSON property `previousResourceNames`
        # @return [Array<String>]
        attr_accessor :previous_resource_names
      
        # The sources of data for the person.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::PeopleV1::Source>]
        attr_accessor :sources
      
        # True if the person resource has been deleted. Populated only for
        # [`connections.list`](/people/api/rest/v1/people.connections/list) requests
        # that include a sync token.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # **DEPRECATED** (Please use
        # `person.metadata.sources.profileMetadata.objectType` instead)
        # The type of the person object.
        # Corresponds to the JSON property `objectType`
        # @return [String]
        attr_accessor :object_type
      
        # Resource names of people linked to this resource.
        # Corresponds to the JSON property `linkedPeopleResourceNames`
        # @return [Array<String>]
        attr_accessor :linked_people_resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @previous_resource_names = args[:previous_resource_names] if args.key?(:previous_resource_names)
          @sources = args[:sources] if args.key?(:sources)
          @deleted = args[:deleted] if args.key?(:deleted)
          @object_type = args[:object_type] if args.key?(:object_type)
          @linked_people_resource_names = args[:linked_people_resource_names] if args.key?(:linked_people_resource_names)
        end
      end
      
      # A request to modify an existing contact group's members.
      class ModifyContactGroupMembersRequest
        include Google::Apis::Core::Hashable
      
        # The resource names of the contact people to remove in the form of in the
        # form of `people/`<var>person_id</var>.
        # Corresponds to the JSON property `resourceNamesToRemove`
        # @return [Array<String>]
        attr_accessor :resource_names_to_remove
      
        # The resource names of the contact people to add in the form of in the form
        # `people/`<var>person_id</var>.
        # Corresponds to the JSON property `resourceNamesToAdd`
        # @return [Array<String>]
        attr_accessor :resource_names_to_add
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_names_to_remove = args[:resource_names_to_remove] if args.key?(:resource_names_to_remove)
          @resource_names_to_add = args[:resource_names_to_add] if args.key?(:resource_names_to_add)
        end
      end
      
      # The response for a specific contact group.
      class ContactGroupResponse
        include Google::Apis::Core::Hashable
      
        # A contact group.
        # Corresponds to the JSON property `contactGroup`
        # @return [Google::Apis::PeopleV1::ContactGroup]
        attr_accessor :contact_group
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::PeopleV1::Status]
        attr_accessor :status
      
        # The original requested resource name.
        # Corresponds to the JSON property `requestedResourceName`
        # @return [String]
        attr_accessor :requested_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_group = args[:contact_group] if args.key?(:contact_group)
          @status = args[:status] if args.key?(:status)
          @requested_resource_name = args[:requested_resource_name] if args.key?(:requested_resource_name)
        end
      end
      
      # A person's associated URLs.
      class Url
        include Google::Apis::Core::Hashable
      
        # The read-only type of the URL translated and formatted in the viewer's
        # account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The type of the URL. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `home`
        # * `work`
        # * `blog`
        # * `profile`
        # * `homePage`
        # * `ftp`
        # * `reservations`
        # * `appInstallPage`: website for a Google+ application.
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The URL.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @type = args[:type] if args.key?(:type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A person's instant messaging client.
      class ImClient
        include Google::Apis::Core::Hashable
      
        # The read-only type of the IM client translated and formatted in the
        # viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The type of the IM client. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `home`
        # * `work`
        # * `other`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The protocol of the IM client. The protocol can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `aim`
        # * `msn`
        # * `yahoo`
        # * `skype`
        # * `qq`
        # * `googleTalk`
        # * `icq`
        # * `jabber`
        # * `netMeeting`
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The user name used in the IM client.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # The read-only protocol of the IM client formatted in the viewer's account
        # locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedProtocol`
        # @return [String]
        attr_accessor :formatted_protocol
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @type = args[:type] if args.key?(:type)
          @protocol = args[:protocol] if args.key?(:protocol)
          @username = args[:username] if args.key?(:username)
          @formatted_protocol = args[:formatted_protocol] if args.key?(:formatted_protocol)
        end
      end
      
      # A Google Apps Domain membership.
      class DomainMembership
        include Google::Apis::Core::Hashable
      
        # True if the person is in the viewer's Google Apps domain.
        # Corresponds to the JSON property `inViewerDomain`
        # @return [Boolean]
        attr_accessor :in_viewer_domain
        alias_method :in_viewer_domain?, :in_viewer_domain
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @in_viewer_domain = args[:in_viewer_domain] if args.key?(:in_viewer_domain)
        end
      end
      
      # A person's read-only membership in a group.
      class Membership
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # A Google Apps Domain membership.
        # Corresponds to the JSON property `domainMembership`
        # @return [Google::Apis::PeopleV1::DomainMembership]
        attr_accessor :domain_membership
      
        # A Google contact group membership.
        # Corresponds to the JSON property `contactGroupMembership`
        # @return [Google::Apis::PeopleV1::ContactGroupMembership]
        attr_accessor :contact_group_membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @domain_membership = args[:domain_membership] if args.key?(:domain_membership)
          @contact_group_membership = args[:contact_group_membership] if args.key?(:contact_group_membership)
        end
      end
      
      # The response to a batch get contact groups request.
      class BatchGetContactGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of responses for each requested contact group resource.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::PeopleV1::ContactGroupResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A person's read-only relationship status.
      class RelationshipStatus
        include Google::Apis::Core::Hashable
      
        # The relationship status. The value can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `single`
        # * `inARelationship`
        # * `engaged`
        # * `married`
        # * `itsComplicated`
        # * `openRelationship`
        # * `widowed`
        # * `inDomesticPartnership`
        # * `inCivilUnion`
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # The read-only value of the relationship status translated and formatted in
        # the viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedValue`
        # @return [String]
        attr_accessor :formatted_value
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @formatted_value = args[:formatted_value] if args.key?(:formatted_value)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # A person's bragging rights.
      class BraggingRights
        include Google::Apis::Core::Hashable
      
        # The bragging rights; for example, `climbed mount everest`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # A person's past or current organization. Overlapping date ranges are
      # permitted.
      class Organization
        include Google::Apis::Core::Hashable
      
        # The type of the organization. The type can be custom or predefined.
        # Possible values include, but are not limited to, the following:
        # * `work`
        # * `school`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The phonetic name of the organization.
        # Corresponds to the JSON property `phoneticName`
        # @return [String]
        attr_accessor :phonetic_name
      
        # The person's job description at the organization.
        # Corresponds to the JSON property `jobDescription`
        # @return [String]
        attr_accessor :job_description
      
        # Represents a whole calendar date, for example a date of birth. The time
        # of day and time zone are either specified elsewhere or are not
        # significant. The date is relative to the
        # [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/
        # Proleptic_Gregorian_calendar).
        # The day may be 0 to represent a year and month where the day is not
        # significant. The year may be 0 to represent a month and day independent
        # of year; for example, anniversary date.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::PeopleV1::Date]
        attr_accessor :end_date
      
        # The symbol associated with the organization; for example, a stock ticker
        # symbol, abbreviation, or acronym.
        # Corresponds to the JSON property `symbol`
        # @return [String]
        attr_accessor :symbol
      
        # The name of the organization.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The location of the organization office the person works at.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The person's job title at the organization.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # True if the organization is the person's current organization;
        # false if the organization is a past organization.
        # Corresponds to the JSON property `current`
        # @return [Boolean]
        attr_accessor :current
        alias_method :current?, :current
      
        # Represents a whole calendar date, for example a date of birth. The time
        # of day and time zone are either specified elsewhere or are not
        # significant. The date is relative to the
        # [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/
        # Proleptic_Gregorian_calendar).
        # The day may be 0 to represent a year and month where the day is not
        # significant. The year may be 0 to represent a month and day independent
        # of year; for example, anniversary date.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::PeopleV1::Date]
        attr_accessor :start_date
      
        # The read-only type of the organization translated and formatted in the
        # viewer's account locale or the `Accept-Language` HTTP header locale.
        # Corresponds to the JSON property `formattedType`
        # @return [String]
        attr_accessor :formatted_type
      
        # The domain name associated with the organization; for example, `google.com`.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # The person's department at the organization.
        # Corresponds to the JSON property `department`
        # @return [String]
        attr_accessor :department
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @phonetic_name = args[:phonetic_name] if args.key?(:phonetic_name)
          @job_description = args[:job_description] if args.key?(:job_description)
          @end_date = args[:end_date] if args.key?(:end_date)
          @symbol = args[:symbol] if args.key?(:symbol)
          @name = args[:name] if args.key?(:name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
          @current = args[:current] if args.key?(:current)
          @start_date = args[:start_date] if args.key?(:start_date)
          @formatted_type = args[:formatted_type] if args.key?(:formatted_type)
          @domain = args[:domain] if args.key?(:domain)
          @department = args[:department] if args.key?(:department)
        end
      end
      
      # A person's age range.
      class AgeRangeType
        include Google::Apis::Core::Hashable
      
        # Metadata about a field.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::PeopleV1::FieldMetadata]
        attr_accessor :metadata
      
        # The age range.
        # Corresponds to the JSON property `ageRange`
        # @return [String]
        attr_accessor :age_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @age_range = args[:age_range] if args.key?(:age_range)
        end
      end
      
      # The response to a list contact groups request.
      class ListContactGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of contact groups. Members of the contact groups are not
        # populated.
        # Corresponds to the JSON property `contactGroups`
        # @return [Array<Google::Apis::PeopleV1::ContactGroup>]
        attr_accessor :contact_groups
      
        # The token that can be used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The token that can be used to retrieve changes since the last request.
        # Corresponds to the JSON property `nextSyncToken`
        # @return [String]
        attr_accessor :next_sync_token
      
        # The total number of items in the list without pagination.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_groups = args[:contact_groups] if args.key?(:contact_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @next_sync_token = args[:next_sync_token] if args.key?(:next_sync_token)
          @total_items = args[:total_items] if args.key?(:total_items)
        end
      end
    end
  end
end
