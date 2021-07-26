# functions to work with recipes.
extract_all_possible_tags <- function(location = "content/"){
  files <- all_markdown_files(location = location)
  unique(unname(unlist(purrr::map(files, extract_tags))))
}

all_markdown_files <- function(location){
  fs::dir_ls(path = location, recurse = TRUE, glob = "*index.md")
}
extract_yaml_only <- function(filepath){
  lines1 <- readr::read_lines(filepath)
  markings <- which(lines1 == "---")
  lines1[markings[1]:markings[2]]
}  

#' extract_tags("content/recipes/wortel-linzensoep/index.md")
extract_tags <- function(filepath){
  extract_x(filepath, "tags")
}


extract_x <- function(filepath, x){
  result <- yaml::read_yaml(text=extract_yaml_only(filepath))
  result[[x]]
}

no_pictures <- function(filepath){
  files <- all_markdown_files(location = filepath)
  results <- purrr::map(files, extract_x, x="image")
  nullers = purrr::map_lgl(results, is.null)
  no_image <- results[nullers]
  names(no_image)
}


voedingswaarden <- function(filepath){
  
}