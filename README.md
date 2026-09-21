# IEEE LaTeX Template

A collaborative IEEE-style LaTeX template for writing and reviewing academic papers in GitHub Codespaces.

## Use This Repository as a Template

1. Open this repository on GitHub.
2. Select **Use this template** and choose **Create a new repository**.
3. Give the new repository a name and select its visibility.
4. Create the repository.
5. Open the new repository and select **Code > Create codespace on main**.

The Codespace automatically installs LaTeX, `latexmk`, and the LaTeX Workshop extension. No LaTeX installation is required on your local computer.

## Project Structure

```text
.
├── .devcontainer/
│   └── devcontainer.json     # GitHub Codespaces configuration
├── sections/
│   ├── 01_abstract.tex       # Abstract and keywords
│   ├── 02_introduction.tex   # Introduction
│   ├── 03_methodology.tex    # Methodology
│   ├── 04_results.tex        # Results
│   └── 05_conclusion.tex     # Conclusion
├── images/
│   └── sample-figure.svg      # Replaceable sample image
├── IEEEtran.cls              # IEEE-style document class
├── references.bib            # BibTeX bibliography
├── main.tex                  # Main document entry point
└── .gitignore                # Ignored LaTeX build files
```

## Write the Paper

1. Open `main.tex` and update the title, authors, affiliations, and email addresses.
2. Replace the placeholder text in the files under `sections/`.
3. Add figures, tables, equations, and references where needed.
4. Save `main.tex`. LaTeX Workshop compiles the document automatically.
5. Open the generated PDF from the LaTeX Workshop panel or the VS Code tab.

Keep `main.tex` responsible for document configuration and ordering. Keep the paper content in the relevant section files.

### Figures and Images

Keep image assets in `images/`. The introduction contains a one-column figure example, and the results section contains a two-column `figure*` example. Replace the placeholders with `\includegraphics` when adding a PNG, JPG, or PDF image:

```latex
\includegraphics[width=\columnwidth]{images/your-image}
```

Use `figure` for one-column figures and `figure*` for figures spanning both columns.

### References

Add sources to the existing `references.bib` file using BibTeX entries. The bibliography is already enabled in `main.tex`:

```latex
\bibliographystyle{IEEEtran}
\bibliography{references}
```

Use citations in the text with `\cite{referenceKey}`.

## Collaborate with GitHub

Use one branch per change or contribution. Do not edit `main` directly.

```bash
git checkout -b section/introduction
git add sections/02_introduction.tex
git commit -m "Write introduction"
git push -u origin section/introduction
```

Then open a pull request on GitHub.

### Collaboration Guidelines

- Assign each contributor a section or task before editing.
- Pull the latest `main` branch before starting new work.
- Keep commits focused and use clear commit messages.
- Do not commit generated files such as `.aux`, `.log`, `.pdf`, or `.synctex.gz`.
- Use pull requests for review and discussion.
- Resolve merge conflicts in the source `.tex` files, then compile the document again.
- Merge only after the document compiles and the changes have been reviewed.

## Starting a New Writing Session

In GitHub Codespaces:

```bash
git checkout main
git pull origin main
git checkout -b section/your-task
```

After making changes, compile the document, review the PDF, commit your work, push the branch, and create a pull request.
