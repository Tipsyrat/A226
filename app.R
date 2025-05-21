library(shiny)

ui <- navbarPage("Learning Journey on Human-macaque issue",
                 tabPanel("Introduction",
                          fluidPage(
                            titlePanel("Welcome to the Learning Journey on Human-macaque issue"),
                            p("Singapore’s ambition to become a City in Nature has resulted in green spaces that are deeply integrated into our urban landscape. At MacRitchie Reservoir and the neighbouring Westlake Garden Estate, forest ecosystems sit right beside homes, recreational facilities, and park infrastructure. This creates a unique setting to observe how humans and wildlife interact in shared environments."),
                            tags$p("This learning journey invites you to explore how natural and built systems intersect across six key stations. You will observe how land-use planning, infrastructure, stakeholder involvement, and resident behaviour shape the presence and impact of native wildlife — particularly long-tailed macaques,", tags$em("Macaca fascicularis"),"."),
                            h4("Field Conduct"),
                            tags$ul(
                              tags$li("Keep your volume low at all times — this protects the natural soundscape and avoids disturbing residents."),
                              tags$li("Do not enter private property or take photos of residents or homes without permission."),
                              tags$li("Be respectful to park users, residents, and any agency staff in the area."),
                              tags$li("Follow your facilitator closely and avoid crowding narrow paths or entrances.")
                            ),
                            h4(tags$p("\U0001F412 Safety Tips for Encounters with", tags$em("Macaca fascicularis"),".")),
                            p("If you encounter macaques during your walk, remember that they are wild animals and should be observed from a safe distance. Avoid any action that might provoke them or attract their attention unnecessarily."),
                            h5("\u2705 Do:"),
                            tags$ul(
                              tags$li("Stay calm and quiet — move slowly and avoid sudden movements."),
                              tags$li("Keep a respectful distance (at least 2 metres)."),
                              tags$li("Observe quietly without making prolonged or direct eye contact.")
                            ),
                            h5("\u274C Do Not:"),
                            tags$ul(
                              tags$li("Do not stare at or bare your teeth toward macaques — both are perceived as aggressive or threatening gestures."),
                              tags$li("Do not carry visible food or drinks — macaques associate these with opportunities to grab or steal."),
                              tags$li("Do not eat, drink, or unwrap packaging in front of them."),
                              tags$li("Do not carry plastic bags, as they are strongly associated with food and may provoke snatching behaviour."),
                              tags$li("Do not feed macaques under any circumstances — this reinforces bold or aggressive behaviours toward humans."),
                              tags$li("Do not shout at, chase, or throw objects at macaques — these may escalate the situation.")
                            ),
                            h4("Navigating the stations:"),
                            p("To navigate the routes open the map below in another browser tab."),
                            tags$ul(
                              tags$li("The map will show all six stations and suggested walking routes."),
                              tags$li("Click on the map markers to view station descriptions if you’re using a mobile device.")
                            ),
                            br(),
                            a("Open Map in a New Tab", href = "https://www.google.com/maps/d/u/3/viewer?mid=1UDcl1AcL5JGfOCzwegzqb7X0di48dQM", 
                              target = "_blank", class = "btn btn-primary")
                          )
                 ),
                 
                 
                 tabPanel("Station 1",
                          fluidPage(
                            titlePanel("Station 1: Shared Spaces"),
                            p("This station is located within the visitor zone of MacRitchie Reservoir, a highly frequented area blending recreational infrastructure with natural surroundings. Managed by PUB and NParks, this site once included an open-concept food kiosk that attracted wildlife — especially macaques. Management changes were later made to reduce conflict."),
                            h4("Match the agency to its role"),
                            checkboxGroupInput("s1_agency", "Which agency is responsible for biodiversity and vegetation?", 
                                               choices = c("PUB", "NParks", "Private Operator", "NEA")),
                            actionButton("s1_submit", "Submit Answer"),
                            verbatimTextOutput("s1_feedback"),
                            textAreaInput("s1_reflect", "Reflect: What visual cues can you find about past conflicts (e.g. warnings, changes in design)?", "", width = "100%")
                          )
                 ),
                 
                 tabPanel("Station 2",
                          fluidPage(
                            titlePanel("Station 2: Stakeholder Zones"),
                            p("This station sits at the boundary between forest, water, and recreational spaces. Facilities are managed by different parties: PUB, NParks, and private canoe operators. Consider how shared use and responsibilities may influence wildlife activity and management challenges."),
                            h4("Who should respond to this scenario?"),
                            p("Scenario: A troop of macaques is seen near the kayak shed rummaging through trash."),
                            checkboxGroupInput("s2_response", "Select appropriate stakeholders:", 
                                               choices = c("NParks", "PUB", "Private Canoe Club", "NEA")),
                            actionButton("s2_submit", "Submit Answer"),
                            verbatimTextOutput("s2_feedback"),
                            textAreaInput("s2_reflect", "Reflect: How do the differing responsibilities among stakeholders affect overall wildlife management?", "", width = "100%")
                          )
                 ),
                 
                 tabPanel("Station 3",
                          fluidPage(
                            titlePanel("Station 3: Ecosystem Services"),
                            p("Pause here at the forest edge and take note of your surroundings. Do you feel a difference in temperature, air movement, or humidity compared to more built-up areas? The cooling effect, cleaner air, and natural shade you experience are not just pleasant — they are examples of ecosystem services."),
                            p("Forests support human well-being in many ways. Some benefits are tangible — known as ecological goods — such as timber or fruits. Others are intangible services, like regulating temperature, purifying air, supporting biodiversity, and offering recreational space."),
                            p("This station encourages you to experience these services first-hand and consider their value to the surrounding community. Can you distinguish between forest 'goods' and 'services'?"),
                            h4("Classify the following as goods or services"),
                            checkboxGroupInput("s3_items", "Select all that are ecosystem services:", 
                                               choices = c("Timber", "Cooling shade", "Air purification", "Fruits")),
                            actionButton("s3_submit", "Submit Answer"),
                            verbatimTextOutput("s3_feedback"),
                            textAreaInput("s3_reflect", "Reflect: What ecosystem services did you notice today?", "", width = "100%")
                          )
                 ),
                 
                 
                 tabPanel("Station 4",
                          fluidPage(
                            titlePanel("Station 4: Wildlife Spotting"),
                            p("Take a slow walk through the area and pay close attention to signs of wildlife. You might spot birds or insects, hear animal calls, notice scats or tracks, or find signs of rooting and feeding. These subtle clues reveal how rich and active this forest ecosystem is."),
                            p("Interestingly, only a few species — like macaques and wild boars — are frequently involved in conflict with humans. Why do some animals interact with people, while most stay hidden?"),
                            p("This station invites you to observe, record, and reflect on the traits that help certain species adapt to urbanised spaces. Consider factors like diet flexibility, mobility, curiosity, boldness, and tolerance of human presence."),
                            textInput("s4_species", "What animals did you see or hear?"),
                            selectInput("s4_conflict", "Does this species tend to come into conflict with humans?", 
                                        choices = c("Yes", "No", "Not Sure")),
                            actionButton("s4_submit", "Log Observation"),
                            tableOutput("s4_log"),
                            textAreaInput("s4_reflect", "Reflect: What characteristics make a species more likely to become a conflict species (e.g. generalist diet, boldness, high mobility)?", "", width = "100%")
                          )
                 ),
                 
                 
                 tabPanel("Station 5",
                          fluidPage(
                            titlePanel("Station 5: Barriers and Fencing"),
                            p("This station is where forest meets neighbourhood — a zone where wildlife encounters are most likely. Observe the variety of fences and barriers separating homes from the forest. Eldercare facilities often use basic chain-link fencing, while private homes tend to have sturdier, custom-built barriers."),
                            p("These differences affect how easily animals — especially macaques — can enter human spaces. Pay attention to the design of fences, window grills, and openings. Macaques are agile and dexterous, and can squeeze through surprisingly small gaps. Try estimating the maximum gap size that still prevents entry."),
                            numericInput("s5_gap", "Enter fence gap width in cm:", value = 10),
                            actionButton("s5_submit", "Check if macaque-proof"),
                            verbatimTextOutput("s5_feedback"),
                            textAreaInput("s5_reflect", "Reflect: How do physical barriers differ by socioeconomic context?", "", width = "100%")
                          )
                 ),
                 
                 tabPanel("Station 6",
                          fluidPage(
                            titlePanel("Station 6: Bin Design"),
                            p("In this final station, you'll examine a crucial but often underestimated element of human-wildlife conflict management: the design of rubbish bins. Bins that allow access to food waste can attract wildlife — especially macaques — and encourage repeated, problematic behaviour."),
                            p("Observe the different types of bins in this area. Each design reflects a different set of trade-offs between cost, usability, and effectiveness:"),
                            tags$ul(
                              tags$li(strong("Standard NEA-issued bins:"), " Widely deployed and cost-effective, but often less secure against persistent animals."),
                              tags$li(strong("NParks–NEA collaborative bins:"), " Rely on proper resident use — lids must be closed and waste fully contained."),
                              tags$li(strong("PUB–NParks bins:"), " Highly tamper-resistant and robust, but costly, less common, and less convenient for bulkier waste.")
                            ),
                            p("These variations illustrate how infrastructure design, budget limitations, and public behaviour all interact to influence the success of wildlife-proof systems."),
                            sliderInput("s6_cost", "Cost", min = 1, max = 10, value = 5),
                            sliderInput("s6_durability", "Durability", min = 1, max = 10, value = 5),
                            sliderInput("s6_security", "Animal Resistance", min = 1, max = 10, value = 5),
                            actionButton("s6_submit", "Evaluate Design"),
                            verbatimTextOutput("s6_feedback"),
                            textAreaInput("s6_reflect", "Reflect: In your view, what makes a rubbish bin suitable for areas with frequent wildlife activity?", "", width = "100%")
                          )
                 )
                 
)

server <- function(input, output, session) {
  
  output$s1_feedback <- renderText({
    req(input$s1_submit)
    if ("NParks" %in% input$s1_agency && length(input$s1_agency) == 1) {
      "Correct! NParks manages biodiversity."
    } else {
      "Not quite. Try again or discuss with your group."
    }
  })
  
  output$s2_feedback <- renderText({
    req(input$s2_submit)
    if (all(c("NParks", "Private Canoe Club") %in% input$s2_response)) {
      "Good call — both the land manager and facility operator should respond."
    } else {
      "Consider who manages land vs operations here."
    }
  })
  
  output$s3_feedback <- renderText({
    req(input$s3_submit)
    correct <- c("Cooling shade", "Air purification")
    if (all(correct %in% input$s3_items)) {
      "Well done! Those are ecosystem services."
    } else {
      "Revisit the definitions of goods vs services."
    }
  })
  
  sightings <- reactiveVal(data.frame(Species = character(), Conflict = character()))
  observeEvent(input$s4_submit, {
    new_row <- data.frame(Species = input$s4_species, Conflict = input$s4_conflict)
    sightings(rbind(sightings(), new_row))
  })
  output$s4_log <- renderTable({
    sightings()
  })
  
  output$s5_feedback <- renderText({
    req(input$s5_submit)
    if (input$s5_gap < 5) {
      "Yes, this would be considered macaque-proof."
    } else {
      "Too wide — macaques can squeeze through these gaps."
    }
  })
  
  output$s6_feedback <- renderText({
    req(input$s6_submit)
    score <- mean(c(input$s6_cost, input$s6_durability, input$s6_security))
    if (score >= 7) {
      "This bin is likely highly effective but may be costly."
    } else if (score >= 4) {
      "Moderately effective — balance cost and features."
    } else {
      "This design may not perform well in conflict zones."
    }
  })
}

shinyApp(ui, server)
