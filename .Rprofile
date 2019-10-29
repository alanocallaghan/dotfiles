#require("devtools")
#require("tracer")
#if (require("prettycode")) {
#  prettycode::prettycode()
#}
#if (requireNamespace("rlang")) {
#  options(error = rlang::entrace)
#}
#require("BiocManager")

options(mc.cores = parallel::detectCores())
## Recommended by devtools...
.First <- function() {
  options(
    browserNLdisabled = TRUE,
    deparse.max.lines = 2)
}


## No GUI menus
options(menu.graphics = FALSE)

## Set mirror
local({
    r <- getOption("repos");
    r["CRAN"] <- "https://cloud.r-project.org/"; 
    options(repos = r)
})

## Set author for R packages
options(
  devtools.desc.author = 'person("Alan", "O\'Callaghan", 
    email = "alan.ocallaghan@outlook.com",
    role = c("aut", "cre"))'
)

customCommands <- new.env()

assign("qq", structure("no", class = "quitterclass"), envir = customCommands)
assign("print.quitterclass", function(quitter) {
  message(" * quitting, not saving workspace")
  base::quit(quitter[1L])
}, envir = customCommands)

assign("dd", structure("", class = "debuggerclass"), envir = customCommands)
assign("print.debuggerclass", function(debugger) {
  if (!identical(getOption("error"), as.call(list(utils::recover)))) {
    options(error = recover)
    message(" * debugging is now ON - option error set to recover")
  } else {
    options(error = NULL)
    message(" * debugging is now OFF - option error set to NULL")
  }
}, envir = customCommands)

attach(customCommands)

#if (require("ggplot2")) {
#  t <- theme_bw()
#  t$plot.title <- element_text(hjust = 0.5)
#  theme_set(t)
#}

options(usethis.protocol = "ssh")
