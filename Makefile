# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: dfreire <dfreire@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2019/03/05 10:45:18 by ihering-       #+#    #+#                 #
#    Updated: 2019/10/29 13:34:14 by ihering-      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = fillit
SRC = ./srcs/open_file.c ./srcs/validate_tetriminos.c\
	./srcs/list_tetriminos.c ./srcs/solver.c\
	./srcs/print_solution.c ./srcs/main.c
HEADER = ./srcs

all: $(NAME)

$(NAME):
		make -C ./libft
		gcc -o $(NAME) $(SRC) -I$(HEADER) -L ./libft/ -lft -Wall -Wextra -Werror

clean:
		make -C ./libft/ clean

fclean: clean
		rm -f $(NAME)
		make -C ./libft/ fclean

re: fclean all
