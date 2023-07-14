view: service_calls {
  sql_table_name: `Test.service_calls` ;;

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }
  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }
  dimension_group: call_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.call_timestamp ;;
  }
  dimension: callcode {
    type: string
    sql: ${TABLE}.callcode ;;
  }
  dimension: calldescription {
    type: string
    sql: ${TABLE}.calldescription ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: council_district {
    type: number
    sql: ${TABLE}.council_district ;;
  }
  dimension: dispatchtime {
    type: number
    sql: ${TABLE}.dispatchtime ;;
  }
  dimension: incident_address {
    type: string
    sql: ${TABLE}.incident_address ;;
  }
  dimension: incident_id {
    type: number
    sql: ${TABLE}.incident_id ;;
  }
  dimension: intaketime {
    type: number
    sql: ${TABLE}.intaketime ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }
  dimension: object_id {
    type: number
    sql: ${TABLE}.ObjectId ;;
  }
  dimension: officerinitiated {
    type: yesno
    sql: ${TABLE}.officerinitiated ;;
  }
  dimension: precinct_sca {
    type: string
    sql: ${TABLE}.precinct_sca ;;
  }
  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }
  dimension: respondingunit {
    type: string
    sql: ${TABLE}.respondingunit ;;
  }
  dimension: time_on_scene {
    type: number
    sql: ${TABLE}.time_on_scene ;;
  }
  dimension: totalresponsetime {
    type: number
    sql: ${TABLE}.totalresponsetime ;;
  }
  dimension: totaltime {
    type: number
    sql: ${TABLE}.totaltime ;;
  }
  dimension: traveltime {
    type: number
    sql: ${TABLE}.traveltime ;;
  }
  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }
  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
  dimension: map_lat_long_location {
      type: location
      sql_latitude:${latitude} ;;
      sql_longitude:${longitude} ;;
    }
  measure: count {
    type: count
  }
}
