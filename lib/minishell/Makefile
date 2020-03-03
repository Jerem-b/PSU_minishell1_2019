##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## compile the lib
##

SRC =	cpy_env.c\
		my_strlen.c\
		get_command.c\
		fill_command.c\
		get_pwd.c\
		my_putstr.c\
		my_strcmp.c\
		switch_command.c\
		my_env.c\
		my_exit.c\
		my_atoi.c\
		my_cd.c\
		change_path.c\
		my_setenv.c\
		my_unsetenv.c\
		build_in_command.c\

OBJ     =       $(SRC:.c=.o)

NAME    =       libminishell.a

all:    $(NAME)
	cp minishell.h ../../include/

$(NAME):        $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ): $(SRC)
	gcc -c -g $(SRC) 

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all