# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vrichese <vrichese@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 00:40:25 by vrichese          #+#    #+#              #
#    Updated: 2019/11/15 00:40:25 by vrichese         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME				=: elon_mask.filler

SOURCE_DIR			=: source
INCLUDE_DIR			=: include
PRINTF_DIR			=: ft_printf
LIBFT_DIR			=: libft
BIN_DIR				=: bin

SOURCE				=: fi_main.c

INCLUDE				=: filler.h

OBJ					=: $(SOURCE:.c=.o)
OBJ_WITH_DIR		=: $(addprefix $(BIN_DIR), $(OBJ))

FLAGS				=: -O3 -Wall -Wextra -Werror

vpath %.c $(SOURCE_DIR)
vpath %.h $(INCLUDE_DIR)
vpath %.o $(BIN_DIR)
vpath %.a $(PRINTF_DIR) $(LIBFT_DIR)

$PRINTF				=: libftprintf.a
$LIBFT				=: libft.a

all: $(NAME)

$(NAME): $(OBJ) $(L)