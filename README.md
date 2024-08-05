
Reference Logs

    Started POST "/products" for ::1 at 2024-08-04 23:04:51 +0530
      (3.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
    Processing by ProductsController#create as */*
      Parameters: {"product"=>{"name"=>"soap", "description"=>"good soap", "price"=>50}}
      (0.1ms)  BEGIN
      ↳ app/controllers/products_controller.rb:11:in `create'
      Product Create (0.7ms)  INSERT INTO "products" ("name", "description", "price", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "soap"], ["description", "good soap"], ["price", "50.0"], ["created_at", "2024-08-04 17:34:51.397146"], ["updated_at", "2024-08-04 17:34:51.397146"]]
      ↳ app/controllers/products_controller.rb:11:in `create'
    Started POST "/connect_one" for ::1 at 2024-08-04 23:04:51 +0530
    Processing by ThirdPartyController#connect_one as */*
      Parameters: {"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891, "third_party"=>{"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891}}
    Completed 200 OK in 0ms (Views: 0.1ms | ActiveRecord: 0.0ms | Allocations: 284)


    Started POST "/connect_two" for ::1 at 2024-08-04 23:04:51 +0530
    Processing by ThirdPartyController#connect_two as */*
      Parameters: {"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891, "third_party"=>{"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891}}
    Completed 200 OK in 0ms (Views: 0.0ms | ActiveRecord: 0.0ms | Allocations: 196)


    Started POST "/connect_three" for ::1 at 2024-08-04 23:04:51 +0530
    Processing by ThirdPartyController#connect_three as */*
      Parameters: {"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891, "third_party"=>{"product"=>{"id"=>6, "name"=>"soap", "description"=>"good soap", "price"=>"50.0"}, "timestamp"=>1722792891}}
    Completed 200 OK in 0ms (Views: 0.0ms | ActiveRecord: 0.0ms | Allocations: 196)


      (0.6ms)  COMMIT
      ↳ app/controllers/products_controller.rb:11:in `create'
    Completed 201 Created in 68ms (Views: 0.2ms | ActiveRecord: 5.7ms | Allocations: 21482)

