
library(plotly)


shinyServer(function(input, output, session) {
   
  output$plot <- renderPlot({
      
       
      del<-matrix(nrow=5,ncol=1)
      
      car_del<-1.02*input$Carrier+0.96*input$Weather +0.8*input$NAS+input$Security+1.03*input$LA
       
      del[1,1]<-(0.96*input$Weather)
      del[2,1]<-(0.8*input$NAS)
      del[3,1]<-input$Security
      del[4,1]<-(1.02*input$Carrier)
      del[5,1]<-(1.03*input$LA)
      
       
       
       #barplot with delay reasons
       barplot(del, main="Flight Delay",
               xlab="Delay Proportion", col=c("gray0","chocolate2","chartreuse3","deeppink3","darkolivegreen3")
               )
       
       
       
       
       
       
    
  })
  
  
})