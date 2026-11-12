# Consumer check for the registered gazahomes 0.0.1 release.
# Run with Rscript --vanilla verify-install.R; uses only a temporary library.
main <- function() {
  repo <- "https://sulaimanallouh.r-universe.dev"
  name <- "gazahomes"
  version <- "0.0.1"
  expected_source <- "49e1d516ff6be971ffc5c9c2371434249c5869d7"
  wait <- as.integer(Sys.getenv("GAZAHOMES_WAIT_SECONDS", "0"))
  stopifnot(!is.na(wait), wait >= 0L, wait <= 1800L)
  if (name %in% loadedNamespaces()) stop("Run this check in a fresh R session.")
  work <- tempfile("gazahomes-universe-")
  dir.create(work)
  on.exit(unlink(work, recursive = TRUE), add = TRUE)
  lib <- file.path(work, "library")
  dir.create(lib)
  index <- file.path(work, "PACKAGES.gz")
  index_has_release <- function() {
    n <- utils::download.file(paste0(repo, "/src/contrib/PACKAGES.gz"), index,
                              method = "libcurl", mode = "wb", quiet = TRUE)
    if (n != 0L) return(FALSE)
    con <- gzfile(index, "rt")
    on.exit(close(con))
    entries <- read.dcf(con, fields = c("Package", "Version"))
    any(entries[, "Package"] == name & entries[, "Version"] == version, na.rm = TRUE)
  }
  deadline <- Sys.time() + wait
  repeat {
    if (isTRUE(tryCatch(index_has_release(), error = function(e) FALSE))) break
    if (Sys.time() >= deadline) stop("Could not verify gazahomes 0.0.1 in the public source index.")
    Sys.sleep(min(30, max(0, as.numeric(difftime(deadline, Sys.time(), units = "secs")))))
  }
  utils::install.packages(name, lib = lib, repos = repo, type = "source", dependencies = FALSE)
  pkg <- file.path(lib, name)
  desc <- read.dcf(file.path(pkg, "DESCRIPTION"))
  stopifnot(desc[1L, "Package"] == name, desc[1L, "Version"] == version)
  if ("RemoteSha" %in% colnames(desc)) stopifnot(desc[1L, "RemoteSha"] == expected_source)
  ns <- loadNamespace(name, lib.loc = lib)
  stopifnot(normalizePath(getNamespaceInfo(ns, "path")) == normalizePath(pkg))
  x <- getExportedValue(name, "check_indicators")()
  stopifnot(nrow(x) == 9L, all(x$ok))
  q <- x[x$indicator_id == "drinking_storage_below250", ]
  stopifnot(nrow(q) == 1L, q$numerator == 265, q$denominator == 279,
            q$excluded_unknown == 23, q$reported_pct == 95)
  cat("R_UNIVERSE_INSTALL=PASS\n", "REPOSITORY=", repo,
      "\nPACKAGE_VERSION=", version, "\nR_VERSION=", as.character(getRversion()),
      "\nAGGREGATE_ROWS=9\nQ37=265/279; unknown=23\n", sep = "")
}
main()
