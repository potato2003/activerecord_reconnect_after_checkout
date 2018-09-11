require "activerecord_reconnect_after_checkout/version"

module ActiverecordReconnectAfterCheckout
end

ActiveSupport.on_load :active_record do
  module ActiveRecord::ConnectionAdapters
    class AbstractAdapter
      set_callback :checkout, :after do
        reconnect!
      end
    end
  end
end
