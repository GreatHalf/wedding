#' tab_place UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_place_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
    
    tags$br(style = "line-height: 80px"),
    
    fluidRow(
      
      
      column(
        offset = 1,
        width = 10,
        align = "center",
        leafletOutput(
          outputId = ns("carte_belle_noe"),
          # height = 341,
          # width = 512
        )
      )
    ),
    
    fluidRow(
      
      column(
        width = 10,
        offset = 1,
        tags$p("Schlosskapelle Schloss Gottorf", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
        tags$p(
          tags$a("OG, Schloßinsel 1, 24837 Schleswig",
                 href = "https://maps.app.goo.gl/fsEW6GL41z1BNomC6",
                 target = "_blank"), style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        ),
    ),
    
    
    fluidRow(
      column(
        width = 8,
        offset = 1,
        align = "center",
        tags$div(img(src = "www/parken_plus_obergeschoss.jpg"), style = "width: 100%; padding: 0;")
      )
    ),
    
    fluidRow(
      column(
        width = 8,
        offset = 1,
        align = "center",
        tags$div(img(src = "www/elbschloss_mini.jpg"), style = "width: 100%; padding: 0;")
      )
    ),
    

    fluidRow(
      
      column(
        offset = 1,
        width = 5,
        tags$br(style = "line-height: 45px"),
        tags$p("Eventsaal Silberstedt", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:3px; text-align: center"),
        tags$p(
          tags$a("Hollingstedter Str. 2, 24887 Silberstedt",
                 href = "https://maps.app.goo.gl/FCUFQXRKKKhw8WLq6",
                 target = "_blank"), style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
      ),
      
      column(
        width = 5,
        tags$br(style = "line-height: 45px"),
        tags$p("Campotel Nord-Ostsee", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:3px; text-align: center"),
        tags$p(
          tags$a("Hollingstedter Str. 2, 24887 Silberstedt",
                 href = "https://maps.app.goo.gl/XjGeuqHgRHZUrX5o6",
                 target = "_blank"), style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
      )
      
    )
 
  )
}
    
#' tab_place Server Functions
#'
#' @noRd 
mod_tab_place_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
    
    output$carte_belle_noe <- renderLeaflet({
      data_markers_all <- tibble(
        latitude = c(54.51165139620888,  54.51425991597091, 54.514787225498246),
        longitude = c(9.540358734912754, 9.361138180276006, 9.360414134719612),
        name = c(
          "<b>Schlosskapelle Schloss Gottorf</b>",
          "<b>Eventsaal Silberstedt</b>(Feier)",
          "<b>Campotel</b>(Unterkunft)"
        )
      )
      
      get_map_wedding(
        data_markers = data_markers_all,
        icon_markers = "heart",
        zoom = 10
      )
                            
    })
 
  })
}
    
## To be copied in the UI
# mod_tab_place_ui("tab_place_ui_1")
    
## To be copied in the server
# mod_tab_place_server("tab_place_ui_1")
