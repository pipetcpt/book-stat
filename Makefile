pdf:
	cp references/임상시험의_통계_원칙.pdf docs/stat.pdf

gitbook:
	Rscript --quiet _render.R "bookdown::gitbook"

epub:
	Rscript --quiet _render.R "bookdown::epub_book"

all:
	Rscript --quiet _render.R

html:
	Rscript -e "rmarkdown::render('README.Rmd')"

book:
	Rscript -e "bookdown::render_book('index.Rmd', encoding = 'UTF-8')"

word2:
	Rscript -e "bookdown::render_book('index.Rmd', output_format = 'bookdown::word_document2', encoding = 'UTF-8')"

index:
	Rscript -e "rmarkdown::render('index.Rmd', encoding = 'UTF-8')"

word:
	Rscript -e "rmarkdown::render('index.Rmd', output_format = 'word_document', encoding = 'UTF-8')"

