#' tab_schedule UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_schedule_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
 
    tags$div(class = "landing-block foreground-content",
             tags$div(class = "foreground-text",
                      tags$br(style = "line-height: 80px"),
                      tags$p("Trauung im Rathaus", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("11:30 Uhr ", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Gotischer Saal | 1. OG, Rathausmarkt 1, 24837 Schleswig", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Engster Kreis | Eingeladen sind nur die Eltern, Trauzeugen, Brüder und deren Partnerinnen", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$br(style = "line-height: 80px"),
                      tags$p("Mittagessen", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("12:30 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Schleswig", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Engster Kreis | Eingeladen sind nur die Eltern, Trauzeugen, Brüder und deren Partnerinnen", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$br(style = "line-height: 80px"),
                      tags$p("Kirchliche Trauung", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("15:00 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Schlosskapelle Schloss Gottorf | 1. OG, Schloßinsel 1, 24837 Schleswig", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eingeladen sind alle Gäste", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$br(style = "line-height: 80px"),
                      tags$p("Foto-Termin", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("16:00 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Barockgarten Schloss Gottorf | Königsallee 9, 24837 Schleswig", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eingeladen sind alle Gäste", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      
                      tags$br(style = "line-height: 80px"),
                      tags$p("Freizeit", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("Während das Brautpaar für die letzten Fotos posiert, kann gerne die Umgebung erkundet oder im Campotel eingecheckt werden", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      
                      tags$br(style = "line-height: 80px"),
                      tags$p("Sektempfang", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("17:30 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eventsaal Silberstedt | Hollingstedter Str. 2, 24887 Silberstedt", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eingeladen sind alle Gäste", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      
                      tags$br(style = "line-height: 80px"),
                      tags$p("Abendessen", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("18:30 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eventsaal Silberstedt | Hollingstedter Str. 2, 24887 Silberstedt", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eingeladen sind alle Gäste", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      
                      tags$br(style = "line-height: 80px"),
                      tags$p("Hochzeitstorte", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
                      tags$p("24:00 Uhr", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eventsaal Silberstedt | Hollingstedter Str. 2, 24887 Silberstedt", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
                      tags$p("Eingeladen sind alle Gäste", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
             )
    )
    
  )
}
    
#' tab_schedule Server Functions
#'
#' @noRd 
mod_tab_schedule_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tab_schedule_ui("tab_schedule_ui_1")
    
## To be copied in the server
# mod_tab_schedule_server("tab_schedule_ui_1")
