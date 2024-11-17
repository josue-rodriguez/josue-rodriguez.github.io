# Replace these paths with your actual paths
home_path <- "/Users/josue/GitHub/econometrics/02_matrix_ols.qmd"
quarto_path <- "/Users/josue/GitHub/josue-rodriguez.github.io/posts/2024-11-11-matrix-ols/index.qmd"

# Create the symbolic link
file.symlink(from = home_path, to = quarto_path)
