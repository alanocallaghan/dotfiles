options(mc.cores = parallel::detectCores())
options(Ncpus = parallel::detectCores())

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
