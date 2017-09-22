connection: "thelook"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: order_items {
  join: orders {
    relationship: many_to_one
    sql_on: ${order_items.order_id}=${orders.id} ;;
  }
  join: users {
    relationship: many_to_one
    sql_on: ${orders.user_id}=${users.id} ;;
  }
}

#   joins:
#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: all_types

# - explore: order_items
#   joins:
#     - join: orders
#       type: left_outer
#       sql_on: ${order_items.order_id} = ${orders.id}
#       relationship: many_to_one

#     - join: users
#       type: left_outer
#       sql_on: ${orders.user_id} = ${users.id}
#       relationship: many_to_one


# - explore: temp

# - explore: users
