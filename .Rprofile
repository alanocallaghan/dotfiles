require("devtools")
require("tracer")
if (require("prettycode")) {
  prettycode::prettycode()
}
if (requireNamespace("rlang")) {
  options(error = rlang::entrace)
}
require("BiocManager")
## Recommended by devtools...
.First <- function() {

  options(
    browserNLdisabled = TRUE,
    deparse.max.lines = 2)

}

tryCatch(
  {
    options(
      width = as.integer(Sys.getenv("COLUMNS")))
    },
  error = function(err) {
    write(
        paste(
            "Can't get your terminal width. Put ``export COLUMNS'' in your",
            ".bashrc. Or something. Setting width to 120 chars",
            stderr()
        )
    )
    options(width = 120)}
)


options(menu.graphics = FALSE)

local({
    r <- getOption("repos");
    r["CRAN"] <- "https://cloud.r-project.org/"; 
    options(repos = r)
})

options(
  devtools.desc.author = 'person("Alan", "O\'Callaghan", 
    email = "alan.ocallaghan@outlook.com",
    role = c("aut", "cre"))'
)

customCommands <- new.env()

#assign("qq", structure("no", class = "quitterclass"), envir = customCommands)
#assign("print.quitterclass", function(quitter) {
#  message(" * quitting, not saving workspace")
#  base::quit(quitter[1L])
#}, envir = customCommands)

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

