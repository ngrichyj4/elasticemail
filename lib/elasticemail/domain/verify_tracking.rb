module Elasticemail
  module Domain

    VERIFY_TRACKING_ATTRIBUTES_MAPPING = {
      :api_key => "apikey",
      :domain  => "domain",
    }.freeze


    # http://api.elasticemail.com/public/help#Domain_VerifyTracking
    class VerifyTracking < Struct.new(*VERIFY_TRACKING_ATTRIBUTES_MAPPING.keys)
      include Elasticemail::Base

      def path
        :"/domain/verifytracking"
      end

      def mapping
        VERIFY_TRACKING_ATTRIBUTES_MAPPING
      end
    end
  end
end
