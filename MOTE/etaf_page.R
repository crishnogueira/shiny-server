#fluid row
fluidRow( #open fluid row
  
  #input
  column(4, 
         style = "background-color: #E8E8E8",
         
         #change title
         div(style="display: inline-black; vertical-align:top; text-align:center; width: 100%;",
            strong("Eta - F")),
         
         #input boxes here
         div(style="display: inline-block;vertical-align:top; width: 200px;",
             strong("df (Model):"), 
             textInput("etaFdfmod", NULL, width = 60)),
         
         div(style="display: inline-block;vertical-align:top; width: 200px;",
             strong("df (Error):"), 
             textInput("etaFdferr", NULL, width = 60)),
         
         textInput("etaFf", "F:", width = 60),
         
         textInput("etaFalpha", "Alpha:", width = 60, placeholder = ".05"),
         
         submitButton("Calculate")
         ), #close column
  
  #output
  column(8,
          tabsetPanel(
            tabPanel("Summary", htmlOutput("ETAFsummary")),
            tabPanel("Code", withMathJax(), 
                     HTML(markdown::markdownToHTML(knit("etaf_code.Rmd", quiet = T)))),
            tabPanel("Help", HTML("<iframe width=\"560\" height=\"315\" 
                                 src=\"https://www.youtube.com/embed/40XnVCphLFA\" 
                                  frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>"))
          
            ) #close tabsetPanel
        ) #close Column
  ) #close fluid row