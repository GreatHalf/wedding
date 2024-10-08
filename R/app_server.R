#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom readr read_csv cols col_character col_integer
#' 
#' @noRd
app_server <- function( input, output, session ) {
  
  credentials <- data.frame(
    user = Sys.getenv("LOGIN_USER"), # mandatory
    password = Sys.getenv("PWD_USER"), # mandatory
    admin = FALSE,
    stringsAsFactors = FALSE
  )
  
  # call the server part
  # check_credentials returns a function to authenticate users
  res_auth <- shinymanager::secure_server(
    check_credentials = shinymanager::check_credentials(credentials)
  )
  
  output$auth_output <- renderPrint({
    reactiveValuesToList(res_auth)
  })
  
  # Reactive values
  r_global <- reactiveValues()
    
  # Data on google drive
  # googledrive::drive_auth(cache = ".secrets", 
  #                         email =  "magnus.halbe@web.de") # Sys.getenv("GOOGLE_MAIL"))
  
  temp_dir <- "saved/"
  
  # googledrive::drive_download("data_expenses", path = file.path(temp_dir, "data_expenses.csv"), overwrite = TRUE) 
  data_expenses <- read_csv(file.path(temp_dir, "data_expenses.csv"), locale = locale(decimal_mark = ","))
  r_global$data_expenses <- data_expenses
  
  # if (Sys.getenv("USE_PREFILLED_DATA_GUEST") == "no") {
  #   googledrive::drive_download("data_guests_not_pre_filled", path = file.path(temp_dir, "data_guests.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  # } else {
  #   googledrive::drive_download("data_guests", path = file.path(temp_dir, "data_guests.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  # }
  data_guests <- read_csv(file.path(temp_dir, "/data_guests.csv"), 
                          locale = locale(decimal_mark = ","),
                          col_types = cols(table = col_integer(),
                                           .default = col_character()))
  r_global$data_guests <- data_guests
  
  # Your application server logic 
  mod_tab_couple_server("tab_couple_ui_1", r_global = r_global)
  if (Sys.getenv("USE_PREFILLED_DATA_GUEST") == "no") {
    mod_tab_confirmation_text_server("tab_confirmation_ui_1", r_global = r_global) # if you want to let your guests writte their name
  } else {
    mod_tab_confirmation_server("tab_confirmation_ui_1", r_global = r_global) # if you want to use a pre-filled google sheets with the names of your guests
  }
  mod_tab_schedule_server("tab_schedule_ui_1", r_global = r_global)
  mod_tab_place_server("tab_place_ui_1", r_global = r_global)
  mod_tab_accommodation_server("tab_accommodation_ui_1", r_global = r_global)
  mod_tab_covid_server("tab_covid_ui_1", r_global = r_global)
  mod_tab_witnesses_server("tab_witnesses_ui_1", r_global = r_global)
  mod_hidden_tab_preparations_server("hidden_tab_preparations_ui_1", r_global = r_global)
  
}
