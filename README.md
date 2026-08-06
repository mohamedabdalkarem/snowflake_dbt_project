# Snowflake dbt Project

A dbt project built on Snowflake for transforming raw e-commerce data (customers, orders, products, order items) into clean, analysis-ready models.

## Project status

**Current stage: staging layer**

- Raw source data (`Data_Files/customers.csv`, `orders.csv`, `products.csv`, `order_items.csv`) is loaded into Snowflake under the `raw` schema and declared in [`models/example/sources.yml`](models/example/sources.yml) as the `raw_data` source.
- Staging models have been created in [`models/staging/`](models/staging/) to clean and standardize each source table:
  - `stg_customers` — renames `id` → `customer_id`, `name` → `customer_name`
  - `stg_orders` — renames `id` → `order_id`, `status` → `order_status`
  - `stg_products` — renames `id` → `product_id`, `name` → `product_name`, `category` → `product_category`, `price` → `product_price`
  - `stg_order_items` — renames `id` → `item_id`, adds a calculated `total_price` column (`quantity * unit_price`)
- Staging models are materialized as views; marts (once added) will be materialized as tables (see [`dbt_project.yml`](dbt_project.yml)).

**Not yet started:**
- Marts / mart-layer models (`models/marts/`)
- Tests and documentation (schema `.yml` files with column tests/descriptions)
- Seeds, snapshots, and macros

## Using the project

Try running the following commands:
- `dbt run`
- `dbt test`

### Resources
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
