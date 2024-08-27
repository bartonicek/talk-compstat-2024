
devtools::install_github("bartonicek/plotscaper")

library(plotscaper)
imdb <- read.csv("imdb1000.csv")
dplyr::glimpse(imdb)

scene <- create_schema(imdb) |> render()

scene
scene |> add_scatterplot(c("runtime", "votes"), list(queries = c("title")))
scene |> add_barplot(c("director")) 
scene |> add_fluctplot(c("genre1", "genre2")) 
scene |> add_histogram(c("runtime"))

create_schema(ggplot2::diamonds) |>
  add_scatterplot(c("carat", "price")) |>
  add_barplot(c("color")) |>
  render()


