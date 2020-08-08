SSH_USER = mblackwell@ness.mattblackwell.org
DOCUMENT_ROOT = /var/www/gov51.mattblackwell.org/
PUBLIC_DIR = public/
BIB = /Users/mblackwell/workland/mbbibtex/mb.bib
CSL = apsa
OUTPUTDIR = public_html
HTML_FILES := $(patsubst %.Rmd, %.html ,$(wildcard *.Rmd))

.PHONY : all

all: deploy

clean:
	rm -rf public/
	rm -f content/*.html
	rm -f content/assignment/*.html
	rm -f content/class/*.html
	rm -f content/reading/*.html
	rm -f content/reference/*.html
	rm -f content/schedule/*.html
	rm -f content/syllabus/*.html

build:
	Rscript -e "blogdown::build_site()"

serve: build
	Rscript -e "blogdown::serve_site()"

deploy: build
	rsync --exclude='.DS_Store' -Prvzce 'ssh -p 22' $(PUBLIC_DIR) $(SSH_USER):$(DOCUMENT_ROOT) --delete-after
