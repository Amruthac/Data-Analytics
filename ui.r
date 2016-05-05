
library(shiny)



fluidPage(
  # Application title
  titlePanel("Flight Delay Reasons"),
  
  sidebarLayout(
    # Sidebar with a slider and selection inputs
    sidebarPanel(
      
      sliderInput("Weather",
                  "Weather:",
                  min = 0,  max = 631, value = 15),
      sliderInput("NAS",
                  "NAS:",
                  min = 0,  max = 755,  value = 100),
      sliderInput("Security",
                  "Security:",
                  min = 0,  max = 233, value = 15),
      sliderInput("Carrier",
                  "Carrier:",
                  min = 0,  max = 1568,  value = 100),
      sliderInput("LA",
                  "Late Aircraft:",
                  min = 0,  max = 607,  value = 100)
    ),
    
    # Show flight delay
    mainPanel(
     
      
  
    tabsetPanel(type = "tabs", 
                tabPanel("Total Delay", plotOutput("plot")), 
                ##tabPanel("Summary",img(src="Arrival_monthly_delay.png",align="right")), 
                tabPanel("Average Monthly Delay", img(src='Arrival_monthly_delay.png', align = "left")),
                tabPanel("Monthly Departure Delay", img(src='Monthly_Departure_delay.png', align = "left")),
                tabPanel("Weekly Delay", img(src='Weekly_Delay.png', align = "left"),br(),br(),img(src='Arrival_weekly_delay.png', align = "left")),
                tabPanel("Time of Day", img(src='timeofday.png', align = "left"),br(),br(),img(src='timeofday2.png', align = "left"))
)
      
    )
  )
)
