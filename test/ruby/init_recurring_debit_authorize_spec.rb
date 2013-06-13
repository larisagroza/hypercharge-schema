require 'test_helper'


describe 'InitRecurringDebitAuhtorize JSON Schema' do
  let(:schema_path){ schema_path_for('init_recurring_debit_authorize') }
  subject{ fixture('init_recurring_debit_authorize') }
  let(:root_key){ subject.keys.first }

  root_wont_allow_additional_properties
  spec_attribute 'transaction_type', value: 'init_recurring_debit_authorize'
  spec_attribute 'transaction_id'
  spec_attribute 'usage'
  spec_attribute 'remote_ip', required: true
  spec_attribute 'amount'
  spec_attribute 'currency'

  spec_attribute 'wire_reference_id'
  spec_attribute 'bank_account_holder'
  spec_attribute 'bank_account_number'
  spec_attribute 'bank_number'

  spec_attribute 'customer_email', required: true
  spec_attribute 'customer_phone'
  spec_attribute 'billing_address', required: true
  spec_attribute 'risk_params'
  spec_attribute 'recurring_schedule'
end