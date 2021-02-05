TARGETS=example.pdf example_lecturer.pdf
ORG2PDF=../bin/org2pdf

default: $(TARGETS)

clean:
	rm *.tex *.pdf

%.pdf: %.org
	$(ORG2PDF) $< header.org $@

%_lecturer.pdf: %.org
	$(ORG2PDF) $< header_lecturer.org $@
