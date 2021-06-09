ggplot(data = iris,aes(x = Sepal.Length, y =Sepal.Width, color = Species)) + geom_point(size = 3)+
  scale_color_pearl(discrete = T,palette = "Lightning Bolt") +
  labs(x = "Sepal Length",
       y = "Sepal Width",
       color = "Specie",
       title = "Relationship between Sepal length and Sepal width",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Lightning Bolt")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 4.jpeg',width = 30,height = 13,units = "cm")

ggplot(data = iris,aes(x = Sepal.Length, y =Sepal.Width, color = Species)) + geom_point(size = 3)+
  scale_color_pearl(discrete = T,palette = "Gigaton") +
  labs(x = "Sepal Length",
       y = "Sepal Width",
       color = "Specie",
       title = "Relationship between Sepal length and Sepal width",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Gigaton")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 3.jpeg',width = 30,height = 13,units = "cm")

ggplot(data = as.data.frame(chickwts),aes(y = weight,x=feed,color = feed, size = weight)) +
  geom_point() + scale_color_pearl(palette = "Pearl Jam",discrete = T) + theme_bw()

ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar(color = "black", size = 0.25) + scale_fill_pearl(palette = "No Code") +
  labs(x = "Car manufacturer",
       y = "Count of observations",
       color = "Manufacturer",
       title = "Observations per car manufacturer",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: No Code")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     # legend.position = "bottom",
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 2.jpeg',width = 30,height = 13,units = "cm")

ggplot(mpg,aes(x = displ,y = cty, color = class)) + geom_point(size = 3) +
  scale_color_pearl(palette = "Backspacer") +
  labs(x = "Engine displacement (Ltrs)",
       y = "City miles per gallon (CMPG)",
       color = "Type of car",
       title = "CMPG comparisson across engine displacement",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Backspacer")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 1.jpeg',width = 30,height = 13,units = "cm")

ggplot(mpg,aes(x = displ,y = cty, color = class)) + geom_point(size = 3) +
  scale_color_pearl(palette = "Pearl Jam") +
  labs(x = "Engine displacement (Ltrs)",
       y = "City miles per gallon (CMPG)",
       color = "Type of car",
       title = "CMPG comparisson across engine displacement",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Pearl Jam")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 5.jpeg',width = 30,height = 13,units = "cm")

ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar(color = "black", size = 0.25) + scale_fill_pearl(palette = "Yield") +
  labs(x = "Car manufacturer",
       y = "Count of observations",
       color = "Manufacturer",
       title = "Observations per car manufacturer",
       caption = "Color palettes based on PeaRlJam Package",
       subtitle = "PeaRlJam color palette: Yield")+
  theme_bw() + theme(plot.title = element_text(hjust = 0.5,size = 13),
                     plot.subtitle = element_text(hjust = 0.5,size = 13),
                     axis.title = element_text(size = 12),
                     legend.text = element_text(size = 10),
                     legend.title = element_text(size = 11),
                     # legend.position = "bottom",
                     legend.box="vertical",
                     legend.margin=margin())
ggsave(filename = 'man/Figures/Figure 6.jpeg',width = 30,height = 13,units = "cm")
