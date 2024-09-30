# Replace these paths with your actual paths
home_path <- "/Users/josue/GitHub/econometrics/01_regression.qmd"
quarto_path <- "/Users/josue/GitHub/josue-rodriguez.github.io/posts/2024-08-test/index.qmd"

# Create the symbolic link
file.symlink(from = quarto_path, to = home_path)