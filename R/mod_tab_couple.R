#' tab_couple UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @importFrom shinyWidgets setBackgroundImage 
mod_tab_couple_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
    
    # parent container
    tags$div(class = "landing-wrapper",
             
             # Image fond d'écran
             tags$div(# class = "landing-block background-content",
                      align = "center",
                      img(src = glue::glue("www/", "paarfoto.jpg")),
                               tags$h1("Magnus & Malena heiraten", style = "font-family: 'Bauer Bodoni Std 1'; letter-spacing:10px"),
                               # tags$p("heiraten", style = "font-family: 'Old script'; font-size:50px; letter-spacing:5px"),
                               tags$br(),
                               tags$p("25.04.2025", style = "font-family: 'Bauer Bodoni Std 1'; font-size:50px; letter-spacing:10px"),
                       # textOutput(
                       #   outputId = ns("decompte_vie_commune")
                       # ),
                      span(
                        textOutput(
                          outputId = ns("decompte_mariage")
                        ),
                        style = "font-family: 'Bauer Bodoni Std 1'; 
                        font-size:20px; 
                        letter-spacing:5px; 
                        color: #4b0082;
                        text-align: center" 
                      )
              )
             
             # Décomptes
             # span(
             #   
             #   style = "font-family: 'Bauer Bodoni Std 1'; 
             #            font-size:20px; 
             #            letter-spacing:5px; 
             #            color: white;
             #            text-align: center" 
             #   ),
             
              
    )
  )
  
}
    
#' tab_couple Server Functions
#'
#' @noRd 
mod_tab_couple_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
    
    # output$decompte_vie_commune <- renderText({
    #   
    #   get_count_countdown_moments(start_moment = "2015-04-19 04:00:00",
    #                               end_moment = now(tzone = "Europe/Paris"),
    #                               text = "depuis leur rencontre",
    #                               time_zone = "Europe/Paris",
    #                               language = "de")
    #   
    # })
    
    output$decompte_mariage <- renderText({

      get_count_countdown_moments(start_moment = now(tzone = "Europe/Paris"),
                                  end_moment = "2025-04-25 15:00:00",
                                  text = " bis zur Hochzeit",
                                  time_zone = "Europe/Paris",
                                  language = "de")
    })
    
  })
}
    
## To be copied in the UI
# mod_tab_couple_ui("tab_couple_ui_1")
    
## To be copied in the server
# mod_tab_couple_server("tab_couple_ui_1")
