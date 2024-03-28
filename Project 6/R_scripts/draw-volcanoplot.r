library(tidyverse)
library(ggrepel)
library(ggtext)

df <- read.table("stdin", header=T, sep="\t", as.is=TRUE)

df %>% 
  filter(log2FoldChange > 2) %>%
  group_by(X) %>%
  summarize(max = max(padj))%>%
  arrange(max)

df$top5 <- NA

df$top5[df$X == "YER062C"] <- "YER062C"
df$top5[df$X == "YDR536W"] <- "YDR536W"
df$top5[df$X == "YHR094C"] <- "YHR094C"
df$top5[df$X == "YNL065W"] <- "YNL065W"
df$top5[df$X == "YNL112W"] <- "YNL112W"

df %>% 
  filter(log2FoldChange < -2) %>%
  group_by(X) %>%
  summarize(min = min(padj))%>%
  arrange(min)

df$top5[df$X == "YLR327C"] <- "YLR327C"
df$top5[df$X == "YKR097W"] <- "YKR097W"
df$top5[df$X == "YMR081C"] <- "YMR081C"
df$top5[df$X == "YDR342C"] <- "YDR342C"
df$top5[df$X == "YCR021C"] <- "YCR021C"

df$DAGE <- "NO"

df$DAGE[df$log2FoldChange > 2 & df$padj < 0.05] <- "X1"

df$DAGE[df$log2FoldChange < -2 & df$padj < 0.05] <- "X2"

df$DAGE[df$DAGE == "NO"] <- NA

plot <- ggplot(data = df, 
       aes(x = log2FoldChange,
           y = -log10(padj),
           label = top5, 
           col = DAGE)) +
  geom_point(size = 2) +
  theme_bw()+
  geom_vline(xintercept = c(-2, 2), col = "gray", linetype = 'dashed') +
  geom_hline(yintercept = c(-log10(0.05)), col = "gray", linetype = 'dashed')+
  geom_text_repel(max.overlaps = 30, 
                  show.legend = FALSE, 
                  parse = TRUE,
                  size = 5,
                  color = "black")+
  scale_color_manual(name = NULL,
                     values = c("lightgreen", 'violet', "grey"),
                     labels = c("**Upregulated**:<br>*p*-value<0.05 & Log2fc>2", 
                                "<br>**Downregulated**:<br>*p*-value<0.05 & Log2fc<-2",
                                "<br>**Not significant**<br>"))+
  scale_x_continuous(labels = ~sub("-", "\u2212", .x))+
  labs(x = "Log2fc",
       y = "−log10(*p*-value)")+
  theme(plot.title = element_markdown(size=22),
        legend.text = element_markdown(size=20),
        plot.caption = element_markdown(hjust = 0, size=22),
        axis.text = element_text(size=14),
        axis.title = element_text(size=16, vjust = 0),
        axis.title.y = element_markdown())+ 
  guides(colour = guide_legend(override.aes = list(size=3.5)))


ggsave("volcano_plot.png", plot, height = 8, width = 10, dpi = 600)