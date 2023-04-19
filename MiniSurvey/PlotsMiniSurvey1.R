library(bayestestR)
library(tidyverse)
library(hrbrthemes)

# Large Anker
for (i in seq(-1.9, 2.1, .4)){

ggplot(data.frame(x = c(-3.5, 3.5)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(i, 1),
                aes(colour = "Jahrgang 2019\n(ohne Lockdown)"), size = 1.5) +
  stat_function(fun = dnorm, args = list(0, 1),
                aes(colour = "Jahrgang 2020\n(8 Wochen Lockdown)"), size = 1.5) +
  ggtitle("Effekt des Lockdowns", "Lernzuwachs von 350.000 Grundschülerinnen") +
  labs(colour = "Gruppen") +
  xlab("Lernzuwachs in 5 Monaten") +
  ylab("»Häufigkeit«") +
  scale_color_viridis_d() +
  theme_ipsum() +
  theme(axis.text.y = element_blank(),
        axis.text.x = element_blank(),
        legend.position = "bottom")

ggsave(paste("MiniSurvey/LAeffectplot", 
             gsub("\\.", "", i), # remove "."
             ".svg", sep = ""),
       device = "svg",
       height = 12,
       width = 10,
       units = "cm")
}

# Small Anker
for (i in seq(-1.9, 2.1, .4)){
  
  ggplot(data.frame(x = c(-3.5, 3.5)), aes(x = x)) +
    stat_function(fun = dnorm, args = list(i, 1),
                  aes(colour = "Jahrgang 2019\n(ohne Lockdown)"), size = 1.5) +
    stat_function(fun = dnorm, args = list(0, 1),
                  aes(colour = "Jahrgang 2020\n(8 Wochen Lockdown)"), size = 1.5) +
    ggtitle("Effekt des Lockdowns", "Lernzuwachs von 150 Grundschülerinnen") +
    labs(colour = "Gruppen") +
    xlab("Lernzuwachs in 5 Monaten") +
    ylab("»Häufigkeit«") +
    scale_color_viridis_d() +
    theme_ipsum() +
    theme(axis.text.y = element_blank(),
          axis.text.x = element_blank(),
          legend.position = "bottom")
  
  ggsave(paste("MiniSurvey/SAeffectplot", 
               gsub("\\.", "", i), # remove "."
               ".svg", sep = ""),
         device = "svg",
         height = 12,
         width = 10,
         units = "cm")
}
