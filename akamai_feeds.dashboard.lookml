- dashboard: akamai_feeds_analysis
  title: Akamai Feeds Analysis
  layout: grid
  rows:
  - height: 160
    elements: [schedule_events]
  - height: 160
    elements: [schedule]
  - height: 160
    elements: [ondemand_discovery] 
  - height: 160
    elements: [search] 
  - height: 160
    elements: [suggestions]
  - height: 160
    elements: [mini_guide] 
  - height: 160
    elements: [present_following]     
  - height: 160
    elements: [guide]

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

  - name: schedule
    title: Schedule
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"schedule/?"'
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
  
  - name: ondemand_discovery
    title: OnDemand discovery
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.ondemand: '"1"'
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
  
  - name: search
    title: Search
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"search/?q="'
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
  
  - name: suggestions
    title: Suggestions
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"suggestion"'
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
  
  - name: mini_guide
    title: Mini guide
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"schedule/?"'
      akamai_feed_sample.urllen: <136
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
  
  - name: present_following
    title: Present_Following
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"schedule/?"'
      akamai_feed_sample.urllen: '>600'
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
  
  - name: guide
    title: Guide
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.url: '%language=%'
      akamai_feed_sample.urlendpoint: '"schedule/?"'
      akamai_feed_sample.urllen: '[136, 600]'
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
  
  - name: programmes
    title: Programmes
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"programmes"'
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
  
  - name: summaries
    title: Summaries
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"summaries/"'
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
  
  - name: ondemands
    title: OnDemands
    type: looker_column
    model: akamai_logs_lml
    explore: akamai_feed_sample
    dimensions: [akamai_feed_sample.requesttime1min]
    measures: [akamai_feed_sample.count]
    filters:
      akamai_feed_sample.urlendpoint: '"ondemands/"'
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
  
  
  