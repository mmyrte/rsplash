## usethis namespace: start
#' @importFrom Rcpp sourceCpp
## usethis namespace: end
NULL

## usethis namespace: start
#' @useDynLib rsplash, .registration = TRUE
## usethis namespace: end
NULL

.onLoad <- function(libname, pkgname) {
  # Make sure xts namespace is loaded when your package is loaded.
  # This does not attach xts to the search path (unlike Depends),
  # but it registers the xts class so saved xts objects in data/ will be restored correctly.
  if (!requireNamespace("xts", quietly = TRUE)) {
    packageStartupMessage(
      "Package 'xts' is required to restore data objects with xts classes."
    )
  }
}
