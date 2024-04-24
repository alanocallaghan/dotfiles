# require("devtools")
# require("tracer")
# if (require("prettycode")) {
#   prettycode::prettycode()
# }
# if (requireNamespace("rlang")) {
#   options(error = rlang::entrace)
# }
#require("BiocManager")
options(mc.cores = parallel::detectCores()-2)
options(Ncpus = parallel::detectCores()-2)

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

options(usethis.protocol = "ssh")
options(usethis.full_name = "Alan O'Callaghan")
options(reprex.advertise = FALSE)

options(vsc.use_httpgd = TRUE)

## https://github.com/r-lib/testthat/issues/92
test <- function(...) devtools::test(..., reporter = testthat::ProgressReporter$new(show_praise = FALSE))

# https://github.com/r-lib/cli/issues/441
options(cli.hyperlink=FALSE)

options(max.print=100)
options(styler.cache_root = "styler")


# credentials::set_github_pat()
