library(tidyverse)


plot_subtitle <- "Plot Subtitle"
level_colors <- c("#78c679", "#d9f0a3", "#F56CA9", "#F5D0DC", "#53DCF5", "#B8E7F4")


 


demo_data <- readRDS("EP15A3_plot_demo_data_simple.RDS")



plot <- demo_data |> 
  mutate(x_axis = paste0(sample_no, "_", cv_type )) |> 
  mutate(x_axis = factor(x_axis, 
                         levels =   c("Level1_r",  "Level1_wl","Level2_r", "Level2_wl","Level3_r",  "Level3_wl"),
                         labels =   c("Level1_r",  "Level1_wl","Level2_r", "Level2_wl","Level3_r",  "Level3_wl"), ordered = TRUE)) |> 
  ggplot(aes(x=rev(x_axis))) + # rev() Keep lower level at top 
  geom_col(aes(y = limits, fill = x_axis ), alpha =0.6) + 
  geom_col(aes(y = claim, fill = x_axis ), alpha =0.8) + 
  scale_x_discrete(labels = c("CVr", "CVwl", "CVr", "CVwl", "CVr", "CVwl")) +
  scale_fill_manual(values = level_colors ,labels = c("Level 1", "Level 1", "Level 2", "Level 2", "Level 3", "Level 3")) +
  geom_errorbar(aes(   ymin = act , ymax = (act) ),  linewidth = 2) + 
  ylab("CV%") + xlab("") + labs(subtitle = plot_subtitle) +
  facet_wrap(.~test_name_unit     , scales ="free", nrow = 2) + # nrow can be choosen acccording to the need of the plot
  theme_bw() + 
  coord_flip()  +
  theme(legend.position="bottom", 
        legend.box = "vertical", 
        legend.title = element_blank(),
        plot.subtitle=element_text(size=13) ) +
  guides(fill=guide_legend(nrow=1, byrow=TRUE))


plot

