# frozen_string_literal: true

FactoryBot.define do
  factory :api_key, class: 'APIKey' do
    user
    kid { Faker::Crypto.sha256 }
    secret { SecureRandom.hex(16) }
    scope { %w[trade] }
    algorithm { 'HS256' }
  end
end
