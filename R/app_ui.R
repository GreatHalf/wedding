#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
#' 
titleStyle <- "font-family: \'MrsEavesItalic\'; font-size:64px; text-decoration-color:#4b0082;"
app_ui <- function(request) {
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    
    # Your application UI logic 
    fluidPage(title = NULL,
               
               tabPanel(
                 title = "Willkommen",
                 h1(strong(tags$u("Willkommen")), style = titleStyle), 
                 mod_tab_couple_ui("tab_couple_ui_1")
               ),
               
               tabPanel(
                 title = "Teilnahme bestätigen",
                 h1(strong(tags$u("Teilnahme bestätigen")), style = titleStyle),
                 if (Sys.getenv("USE_PREFILLED_DATA_GUEST") == "no") {
                   mod_tab_confirmation_text_ui("tab_confirmation_ui_1") # if you want to let your guests writte their name
                 } else {
                   
                   mod_tab_confirmation_ui("tab_confirmation_ui_1") # if you want to use a pre-filled google sheets with the names of your guests
                 }
               ),
              
              tabPanel(
                title = "Unterkunft",
                h1(strong(tags$u("Unterkunft")), style = titleStyle),
                mod_tab_accommodation_ui("tab_accommodation_ui_1")
              ),
               
               tabPanel(
                 title = "Tagesprogramm",
                 h1(strong(tags$u("Tagesprogramm")), style = titleStyle),
                 mod_tab_schedule_ui("tab_schedule_ui_1")
               ),
               
               tabPanel(
                 title = "Veranstaltungsorte",
                 h1(strong(tags$u("Veranstaltungsorte")), style = titleStyle),
                 mod_tab_place_ui("tab_place_ui_1")
               ),
               
               
               
               tabPanel(
                 title = "Trauzeugen",
                 h1(strong(tags$u("Trauzeugen"), style = titleStyle)),
                 mod_tab_witnesses_ui("tab_witnesses_ui_1")
               ),
               
               tabPanel(
                 title = "Sehenswürdigkeiten",
                 h1(strong(tags$u("Sehenswürdigkeiten")), style = titleStyle),
                 mod_tab_covid_ui("tab_covid_ui_1")
               ),
               
               tabPanel(
                 title = "Admin",
                 h1(strong(tags$u("Admin")), style = titleStyle),
                 mod_hidden_tab_preparations_ui("hidden_tab_preparations_ui_1")
               ),
               
               collapsible = TRUE
               
               )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @importFrom shinymanager set_labels
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
  
  set_labels(
    language = "en",
    "Please authenticate" = "Hochzeitsseite von Magnus & Malena",
    "Username:" = "Benutzername (für alle gleich):",
    "Password:" = "Passwort (für alle gleich):",
    "Login" = "Login",
    "Username or password are incorrect" = "Benutzername oder Passwort ist falscsh"
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'wedding',
    ),
    tags$link(href = "www/custom_app_style.css", rel = "stylesheet", type = "text/css"),
    tags$link(href = "www/custom_logging_style.css", rel = "stylesheet", type = "text/css")
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

