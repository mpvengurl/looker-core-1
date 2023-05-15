# The name of this view in Looker is "Service Calls"
view: service_calls {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Test.service_calls`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Agency" in Explore.

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: block_id {
    type: number
    sql: ${TABLE}.block_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: call_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
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

  measure: count {
    type: count
    drill_fields: []
  }
}
