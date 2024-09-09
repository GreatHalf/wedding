#' tab_covid UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_covid_ui <- function(id){
  
  ns <- NS(id)
  
  tagList(
    
    tags$br(style = "line-height: 80px"),
    
    fluidRow(
      
      
      column(
        width = 10,
        align = "center",
        tags$p("Die Region entdecken", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
        tags$p("Hoch im Norden lockt an der Schlei eine Kleinstadt mit
        besonderem Flair. Das liegt an der Lage und Geschichte der
        Stadt.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$p("Wenn man nach einem Ort sucht, der das Ende der Wikingerzeit
einläutete, dann könnte man am südlichen Ufer der Schlei fündig
werden. Im Jahr 1066 wurde die Stadt Haithabu, ein Zentrum für
kulturellen Austausch und vor allem für Handel, vollständig
zerstört und dann aufgegeben. Das Volk der Wikinger zog sich
zurück und verschwand vollständig.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
        tags$p("Erst mit dem Untergang der Wikinger-Metropole konnte eine
andere Stadt aufsteigen und ihren Platz einnehmen: Schleswig.
Ob nun als 'Sliesthorp' erstmals 804 n.Chr. oder als 'Sliaswich'
in der zweiten Hälfte des 11. Jahrhunderts: Die Forschung ist
sich uneinig, wie Schleswig früher hieß. Klar ist nur, dass die
Stadt ein wichtiges Zentrum für Handel und Kultur wurde.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
      
      #
      tags$p("Das Wikinger Museum Haithabu", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
      tags$p("Hier können Groß und Klein viel über das Wikingerleben lernen.
Nicht nur das Museum selbst, sondern auch die Wikingerhäuser
am Haddebyer Noor versetzen einen zurück in die Zeit der
Wikinger an der Schlei.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),

    #
    tags$p("Danewerk und Danewerkmuseum", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
    tags$p("Das Danewerk und der frühstädtische Handelsplatz Haithabu im
nördlichen Schleswig-Holstein gehören zu den bedeutendsten
archäologischen Zeugnissen Nordeuropas. Hier verbanden sich
menschengemachte Strukturen und zeitgenössische Naturlandschaft untrennbar mit der einzigartigen geografischen Lage.
Seit Juni 2018 zählt diese Landschaft zum Weltkulturerbe der
UNESCO. Im Danewerkmuseum gibt es eine interessante Ausstellung zur Deutsch-Dänischen Geschichte und alles Wissens-
werte rund ums Thema Welterbe.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
    #
    tags$p("Schloss Gottorf", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
    tags$p("Es begrüßt einen bereits am Ortseingang: Das majestätische
Schloss Gottorf auf der Schlossinsel. Hier befinden sich das
Museum für Ärchaologie und das Museum für Kunst- und
Kulturgeschichte sowie der Skulpturenpark rund ums Schloss.
Höhepunkte sind das Nydamboot aus dem 4. Jahrhundert und die 
bis zu 2.500 Jahre alten Moorleichen aus Windeby, Rendswühren 
und Damendorf. Beeindruckend ist auch die riesige Garten-
anlage, die mit ihrem barocken Charme zum Schlendern einlädt.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
    #
    tags$p("Barockgarten und Globushaus", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
    tags$p("Im Barockgarten am Schloss Gottorf blüht es stets kunterbunt.
Unterschiedliche Blumen- und Pflanzenarten kann man hier
bestaunen. Im Garten befindet sich auch das Globushaus mit dem
Gottorfer Globus. Dieser ist begehbar und man kann innerhalb
weniger Minuten eine Weltreise unternehmen.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center"),
    #
    tags$p("Bibelgarten", style = "font-family: \'Bauer Bodoni Std 1\'; letter-spacing:3px; text-align: center"),
    tags$p("Neben dem Schloss sollte man sich auch die St.-Johannis-
Klosteranlage unbedingt ansehen. Das mehr als 800 Jahre alte 
ehemalige Benediktinerinnen-Kloster gilt als eines der 
besterhaltenen Kloster aus dem Mittelalter in Schleswig-
Holstein. Der historische 'Bibelgarten', in dem Pflanzen, die in 
der Bibel vorkommen, wachsen, kann auch besucht werden. Das 
Kloster kann frei betreten werden, nur für die Kirche muss man 
sich einer Führung anschließen.", style = "font-family: \'MrsEavesItalic\'; letter-spacing:3px; text-align: center")
    )
    )
  )
  
}
    
#' tab_covid Server Functions
#'
#' @noRd 
mod_tab_covid_server <- function(id, r_global){
  
  moduleServer( id, function(input, output, session){
    
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_tab_covid_ui("onglet_covid_ui_1")
    
## To be copied in the server
# mod_tab_covid_server("onglet_covid_ui_1")
