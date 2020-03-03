##
## EPITECH PROJECT, 2019
## MAKEFILE
## File description:
## Makefile
##

SRC	=	src/main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	mysh

CC	=	gcc

CFLAGS += -g

LIBS += -L./lib/minishell -lminishell -I./include -lm

all:	$(NAME)
$(NAME):	$(OBJ)
	make -C lib/minishell/
	@$(CC) -o $(NAME) $(OBJ) $(LIBS) $(CFLAGS)
clean:
	make -C lib/minishell/ clean
	@rm -rf *.o
fclean:	clean
	make -C lib/minishell/ fclean
	@rm -rf $(NAME)
re: fclean all
