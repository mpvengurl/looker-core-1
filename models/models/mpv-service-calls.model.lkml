connection: "mpv-looker-core-mpv-only-bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: mpv-service-calls_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mpv-service-calls_default_datagroup

explore: service_calls {}

