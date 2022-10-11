reticulate::use_miniconda("reptilia")
demo_server <- arrow::load_flight_server("demo_flight_server")
server <- demo_server$DemoFlightServer(port = 8089)
server$serve()
