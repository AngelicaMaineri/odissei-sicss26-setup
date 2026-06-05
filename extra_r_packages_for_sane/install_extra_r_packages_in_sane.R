# The following code installs extra R packages for SICSS 2026.
# It is meant to be run within the SANE environment.

pkg_main_folder_path <- "S:/scripts/extra_r_packages_for_sane/downloaded_r_packages"
pkg_cran_folder_path <- file.path(pkg_main_folder_path, "cran")
pkg_source_folder_path <- file.path(pkg_main_folder_path, "source")

# Install the CRAN binary packages first
files <- list.files(
  pkg_cran_folder_path,
  pattern = "\\.zip$",
  full.names = TRUE
)

install.packages(
  files,
  repos = NULL,
  type = "win.binary"
)

# Install the `dsl` package from its unzipped folder, which is only available as a source package
dsl_source_dir <- file.path(pkg_source_folder_path, "dsl-master")

install.packages(
  dsl_source_dir,
  repos = NULL,
  type = "source"
)