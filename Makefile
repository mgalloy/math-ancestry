.PHONY: all clean

DOT=dot
NAME=math-ancestry

all: $(NAME).pdf

$(NAME).pdf: $(NAME).dot
	$(DOT) $(NAME).dot -Tpdf -o $(NAME).pdf

clean:
	rm -f $(NAME).pdf
