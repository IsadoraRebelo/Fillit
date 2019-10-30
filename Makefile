# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: dfreire <dfreire@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2019/03/05 10:45:18 by ihering-       #+#    #+#                 #
#    Updated: 2019/10/30 11:09:17 by ihering-      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = fillit
SRC = ./srcs/open_file.c ./srcs/validate_tetriminos.c\
	./srcs/list_tetriminos.c ./srcs/solver.c\
	./srcs/print_solution.c ./srcs/main.c
HEADER = ./srcs

BLUE_1 = \033[38;5;123m
BLUE_2 = \033[38;5;159m
BLUE_3 = \033[38;5;195m
RED:="\033[1;31m"
RESET = \033[0m

all: $(NAME)

$(NAME):
		@make -C ./libft
		@gcc -o $(NAME) $(SRC) -I$(HEADER) -L ./libft/ -lft -Wall -Wextra -Werror
		@echo "$(BLUE_1)Fillit Redy$(RESET)"

clean:
		@make -C ./libft/ clean
		@echo "$(BLUE_3)Making it all clean and tidy$(RESET)"

fclean: clean
		@rm -f $(NAME)
		@make -C ./libft/ fclean
		@echo "$(BLUE_2)Making it all super clean and super tidy$(RESET)"

re: fclean all
