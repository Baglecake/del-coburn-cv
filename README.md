# del-coburn-cv

A professional academic CV template using LaTeX.

## Structure

```
del-coburn-cv/
├── main.tex                   # Main document file
├── academic-cv.cls            # Custom LaTeX class for CV formatting
├── cv/                        # CV content sections
│   ├── professional_summary.tex
│   ├── education.tex
│   ├── awards.tex
│   ├── research_experience.tex
│   ├── publications.tex
│   ├── academic_engagements.tex
│   ├── fellowships.tex
│   ├── teaching.tex
│   └── references.tex
├── .gitignore
└── README.md
```

## Usage

### Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Required packages: geometry, titlesec, enumitem, hyperref, xcolor

### Building the CV

To compile the CV to PDF:

```bash
pdflatex main.tex
```

For better cross-reference resolution, run twice:

```bash
pdflatex main.tex
pdflatex main.tex
```

### Customization

1. **Personal Information**: Edit the header section in `main.tex` with your name, email, website, and phone number.

2. **CV Sections**: Edit the individual `.tex` files in the `cv/` directory:
   - `professional_summary.tex` - Brief professional summary
   - `education.tex` - Academic degrees and institutions
   - `research_experience.tex` - Research positions and projects
   - `publications.tex` - Published works (journals, conferences, etc.)
   - `awards.tex` - Awards and honors received
   - `fellowships.tex` - Fellowships and grants
   - `teaching.tex` - Teaching experience and courses
   - `academic_engagements.tex` - Presentations, service, memberships
   - `references.tex` - Academic or professional references

3. **Formatting**: Modify `academic-cv.cls` to change fonts, colors, spacing, or overall layout.

### Tips

- Each section file contains commented examples to guide you
- Use the `\cventry{title}{date}{location}{description}` command for structured entries
- Remove or comment out sections you don't need by editing `main.tex`
- The generated PDF will exclude page numbers and use a clean, professional layout

## License

This template is provided as-is for academic use.