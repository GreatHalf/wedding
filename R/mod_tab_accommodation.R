#' tab_accommodation UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @importFrom tibble tibble
mod_tab_accommodation_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
    
    leafletOutput(
      outputId = ns("carte_hebergements")
    ),
    
    tags$br(style = "line-height: 80px"),
    
    fluidRow(
      
      column(
        width = 6, 
        tags$p("Campotel Nord-Ostsee", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 25px; letter-spacing:3px; text-align: center"),
        tags$br(style = "line-height: 20px"),
        tags$p("0 km, 1 Minute zu Fuß", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$br(style = "line-height: 20px"),
        tags$p("https://www.campotel-nordostsee.de/ ", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center"),
        tags$p("Hinweise zur Buchung:", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center"),
        tags$p("Bitte bei der Buchung angeben:", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center"),
        tags$p("Magnus Halbe und Malena Krüger", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$p("Hochzeit am 25.04.2025", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$br(style = "line-height: 20px"),
        tags$p("Durch die Angabe erfolgt eine bessere Zuordnung und es kann wahlweise auch nur eine Nacht gebucht werden. Die Buchung erfolgt bitte persönlich über die Webseite.", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center")
        ),
      
      column(
        width = 6, 
        tags$p("Hotel & Restaurant Schimmelreiter, Hauptstraße 58-60, 24887 Silberstedt", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 25px; letter-spacing:3px; text-align: center"),
        tags$br(style = "line-height: 20px"),
        tags$p("\u00c0 1.1 km, 3 Minuten im Auto", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$br(style = "line-height: 20px"),
        tags$p("https://schimmelreiter-silberstedt.de/ ", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center"),
        tags$p("Wesentlich teurer.", style = "font-family: \'MrsEavesItalic\'; font-weight: bold; letter-spacing:3px; text-align: center")
      )
    )

  )
}
    
#' tab_accommodation Server Functions
#'
#' @noRd 
mod_tab_accommodation_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
    data_hebergements <- tibble(
      name = c(
        "<b>Campotel</b><br/>200m entfernt",
        "<b>Hotel & Restaurant Schimmelreiter</b><br/> 1,1 km entfernt"
      ),
      longitude = c(9.360414134719612, 9.370415157372763)
    )
    # schimmelreiter: 54.51880316589025,  9.370415157372763
    output$carte_hebergements <- renderLeaflet({
      data_markers_accomodation <- tibble(
        latitude = c(54.514787225498246),
        longitude = c(9.360414134719612),
        name = c(
          "<b>Campotel</b><br/>200m entfernt"
        )
      )
        
      get_map_wedding(
        data_markers = data_markers_accomodation,
        icon_markers = "home", 
        zoom = 12
      )

    })
    
  })
}
    
## To be copied in the UI
# mod_tab_accommodation_ui("tab_accommodation_ui_1")
    
## To be copied in the server
# mod_tab_accommodation_server("tab_accommodation_ui_1")
