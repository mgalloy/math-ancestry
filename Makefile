.PHONY: all clean

DOT=dot
NAME=math-ancestry

all: $(NAME).pdf $(NAME).png

$(NAME).pdf: $(NAME).dot
	$(DOT) $(NAME).dot -Tpdf -o $(NAME).pdf

$(NAME).png: $(NAME).dot
	$(DOT) $(NAME).dot -Tpng -o $(NAME).png

clean:
	rm -f $(NAME).pdf
