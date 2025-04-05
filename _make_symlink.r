# Replace these paths with your actual paths
home_path <- "/Users/josue/GitHub/blogposts/02_matrix_ols.qmd"
quarto_path <- "/Users/josue/GitHub/josue-rodriguez.github.io/posts/2024-11-16-matrix-ols/index.qmd"

# Create the symbolic link
file.symlink(from = home_path, to = quarto_path)
