TARGETS=example.pdf example_lecturer.pdf exercise.ipynb solution.ipynb
ORG2PDF=../bin/org2pdf
ORG2IPYNB=../bin/org2ipynb

default: $(TARGETS)

clean:
	rm -f *.tex *.pdf *.ipynb *.*~

%.pdf: %.org
	$(ORG2PDF) $< -H header.org -o $@

%_lecturer.pdf: %.org
	$(ORG2PDF) $< -H header_lecturer.org -o $@

exercise.ipynb: nb_exercise.org
	$(ORG2IPYNB) $< -E solution -H header_exercise.org -o $@

solution.ipynb: nb_exercise.org
	$(ORG2IPYNB) $< -H header_solution.org -o $@
