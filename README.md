Steps to Run the Project:
Clone the project /
Navigate to webhook_delivery_app /
Run rails s

Screen shots on testing:-

Using Postman to create New Product :

<img width="1026" alt="Screenshot 2024-08-05 at 11 31 04 PM" src="https://github.com/user-attachments/assets/c2a850b5-a1e3-46d8-a3d5-5529f01f0961">

Successful notification logs to 3rd party API's : Here connect_one / connect_two / connect_three are 3rd party api's which i created.

<img width="1440" alt="Screenshot 2024-08-05 at 11 31 34 PM" src="https://github.com/user-attachments/assets/460d4cdb-704f-4af0-bfb7-dc27d24a90f0">

Reference Logs

    Started POST "/products" for ::1 at 2024-08-05 23:28:48 +0530
    Processing by ProductsController#create as */*
      Parameters: {"product"=>{"name"=>"Choclate", "description"=>"Coco Rich", "price"=>100}}
       (0.2ms)  BEGIN
      ↳ app/controllers/products_controller.rb:7:in `create'
      Product Create (1.5ms)  INSERT INTO "products" ("name", "description", "price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Choclate"], ["description", "Coco Rich"], ["price", "100.0"], ["created_at", "2024-08-05 17:58:48.839307"], ["updated_at", "2024-08-05 17:58:48.839307"]]
      ↳ app/controllers/products_controller.rb:7:in `create'
    Started POST "/connect_one" for ::1 at 2024-08-05 23:28:48 +0530
    Processing by ThirdPartyController#connect_one as */*
      Parameters: {"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728, "third_party"=>{"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728}}
    Completed 200 OK in 5ms (Views: 4.9ms | ActiveRecord: 0.0ms | Allocations: 244)
    
    
    Started POST "/connect_two" for ::1 at 2024-08-05 23:28:48 +0530
    Processing by ThirdPartyController#connect_two as */*
      Parameters: {"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728, "third_party"=>{"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728}}
    Completed 200 OK in 0ms (Views: 0.1ms | ActiveRecord: 0.0ms | Allocations: 196)
    
    
    Started POST "/connect_three" for ::1 at 2024-08-05 23:28:48 +0530
    Processing by ThirdPartyController#connect_three as */*
      Parameters: {"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728, "third_party"=>{"product"=>{"id"=>7, "name"=>"Choclate", "description"=>"Coco Rich", "price"=>"100.0"}, "timestamp"=>1722880728}}
    Completed 200 OK in 0ms (Views: 0.1ms | ActiveRecord: 0.0ms | Allocations: 196)
    
    
       (1.5ms)  COMMIT
      ↳ app/controllers/products_controller.rb:7:in `create'
    Completed 201 Created in 88ms (Views: 0.2ms | ActiveRecord: 13.7ms | Allocations: 18693)
