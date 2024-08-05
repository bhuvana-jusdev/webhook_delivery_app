class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}

  THIRD_PARTY_APIS = ["http://localhost:3000/connect_one", "http://localhost:3000/connect_two", "http://localhost:3000/connect_three"]

  after_save :notify_third_party_apis

  def notify_third_party_apis
      payload = {
        product: {
          id: id,
          name: name,
          description: description,
          price: price
        },
        timestamp: Time.now.to_i
      }

      Product::THIRD_PARTY_APIS.each do |third_part_api|
        response = Faraday.post(third_part_api, payload.to_json, "Content-Type" => "application/json")

        unless response.success?
          Rails.logger.error "Failed to notify #{third_part_api}: #{response.status}"
        end
      end
  end
end
