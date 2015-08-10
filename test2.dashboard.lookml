- dashboard: test2
  title: Test2
  layout: tile
  tile_size: 100

#  filters:

  elements:

  - name: schedule_events
  title: Schedule Events
  type: looker_column
  model: akamai_logs_lml
  explore: akamai_feed_sample
  dimensions: [akamai_feed_sample.requesttime1min]
  measures: [akamai_feed_sample.count]
  filters:
    akamai_feed_sample.urlendpoint: '"scheduleev"'
  sorts: [akamai_feed_sample.requesttime1min]
  limit: 1440
  stacking: ''
  show_value_labels: false
  x_axis_gridlines: false
  y_axis_gridlines: true
  show_view_names: true
  show_y_axis_labels: true
  show_y_axis_ticks: true
  y_axis_tick_density: default
  y_axis_tick_density_custom: 5
  show_x_axis_label: true
  show_x_axis_ticks: false
  x_axis_scale: auto
  show_null_labels: false
