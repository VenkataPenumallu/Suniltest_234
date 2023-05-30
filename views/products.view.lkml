view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    link: {
      label: "Dress"
      url: "https://www.google.com/search?q=dress&rlz=1CAZVTZ_enIN979IN979&oq=dress&aqs=chrome..69i57j0i433i512l3j0i131i433i512j46i131i340i433i512l2j0i433i512l2j0i512.1820j0j7&sourceid=chrome&ie=UTF-8"
      icon_url: "https://screenshot.googleplex.com/BXxPyWkgqJmKtNv"
    }
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price  ;;
  }

  measure: rp {
    type: number
    sql: 0-${retail_price} ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
