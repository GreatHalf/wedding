#' tab_witnesses UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_witnesses_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
 
    tags$br(style = "line-height: 20px"),
    
    fluidRow(
      
      column(
        
        width = 6, 
        
        align = "center",
        
        style = "border-right:1px solid",
        
        tags$p("Trauzeugin", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
        
        tags$br(style = "line-height: 20px"),
        
        tags$div(img(src = "www/wedding-dress.png"), style = "text-align: center"),
        
        tags$br(style = "line-height: 20px"),
        
        fluidRow(
          
          column(
            width = 12,
            tags$p("Annika Schönhoff", style = "font-family: \'MrsEavesItalic\'; font-size: 25px; letter-spacing:3px; text-align: center"),
            tags$br(style = "line-height: 10px")
            )
          
          # column(
          #   width = 4,
          #   tags$p("C\u00e9cile", style = "font-family: \'MrsEavesItalic\'; font-size: 25px; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("- Trou d\'chatte -", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("C\'est qui ? La plus vieille copine de la mari\u00e9e, celle avec laquelle elle a fait les 400 coups. C\'est aussi la marraine d\'Isaure.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("Sa particularit\u00e9 ? Sa jambe se casse facilement. Elle parle le Nonii Stutaig.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
          # ),
          # 
          # column(
          #   width = 4,
          #   tags$p("Annabelle", style = "font-family: \'MrsEavesItalic\'; font-size: 25px; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("- Nana -", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("C\'est qui ? L\'alcolite de l\'\u00e9cole d\'ing\u00e9, celle avec laquelle la mari\u00e9e est partie en Tha\u00eflande remuer les bo\u00eetes de Bangkok.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
          #   tags$br(style = "line-height: 10px"),
          #   tags$p("Sa particularit\u00e9 ? Elle a des soucis avec le fromage. Elle chante le jingle de Showroomprive.com comme une d\u00e9esse.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
          # )
          
        )
      ), 
      
      column(
        
        width = 6, 
        
        align = "center",
        
        tags$p("Trauzeuge", style = "font-family: \'Bauer Bodoni Std 1\'; font-size: 30px; letter-spacing:5px; text-align: center"),
        
        tags$br(style = "line-height: 20px"),
        
        tags$div(img(src = "www/wedding-suit.png"), style = "text-align: center"),
        
        tags$br(style = "line-height: 20px"),
        
        fluidRow(
          
          column(
            width = 12,
            tags$p("Sven Stauden", style = "font-family: \'MrsEavesItalic\'; font-size: 25px; letter-spacing:3px; text-align: center"),
            tags$br(style = "line-height: 10px")
          )
        )
      )
    )
  )
}
    
#' tab_witnesses Server Functions
#'
#' @noRd 
mod_tab_witnesses_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tab_witnesses_ui("tab_witnesses_ui_1")
    
## To be copied in the server
# mod_tab_witnesses_server("tab_witnesses_ui_1")
