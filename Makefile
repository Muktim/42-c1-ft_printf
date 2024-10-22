# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mcoskune <mcoskune@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/13 14:18:02 by mcoskune          #+#    #+#              #
#    Updated: 2024/05/10 10:47:29 by mcoskune         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs
SRC = ft_printf_c \
      ft_printf_di \
      ft_printf_p \
      ft_printf_s \
      ft_printf_u \
      ft_printf_xx \
      ft_printf

SRCS = $(addsuffix .c, $(SRC))

OBJS = $(SRCS:.c=.o)

LIBFT_PATH = ./libft
LIBFT = $(LIBFT_PATH)/libft.a

$(NAME): $(LIBFT) $(OBJS)
	@cp $(LIBFT) $(NAME)
	@$(AR) $(NAME) $(OBJS)

all: $(NAME)

$(LIBFT):
	@make -C $(LIBFT_PATH) all

clean:
	@make -C $(LIBFT_PATH) clean
	@rm -rf $(OBJS)

fclean: clean
	@make -C $(LIBFT_PATH) fclean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
