# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: casubmar <casubmar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/18 14:34:23 by casubmar          #+#    #+#              #
#    Updated: 2020/09/18 15:27:33 by casubmar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
FILES =			ft_strlen.s \
				ft_strcpy.s \
				ft_strcmp.s \
				ft_write.s
OBJS = $(FILES:.s=.o)
FLAGS = -Wall -Werror -Wextra
LIBC = ar rcs

.PHONY: all bonus clean fclean re test


all: $(NAME)

$(NAME): ${OBJS}
	@${LIBC} $(NAME) $(OBJS)

%.o: %.s
	@nasm -f elf64 -o $@ $<

clean:
	/bin/rm -f $(OBJS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

test: all
	@gcc $(FLAGS) main.c -L. -lasm -o test $(NAME)
	@./test
	@rm test