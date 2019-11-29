# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vrichese <vrichese@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 00:40:25 by vrichese          #+#    #+#              #
#    Updated: 2019/11/29 15:29:05 by vrichese         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME				:= elon_mask.filler

SOURCE_DIR			:= source/
INCLUDE_DIR			:= include/
PRINTF_DIR			:= ft_printf/
GNL_DIR				:= get_next_line/
LIBFT_DIR			:= $(GNL_DIR)libft/
BIN_DIR				:= bin/

SOURCE				:= fi_main.cpp

INCLUDE				:= filler.hpp

OBJ					:= $(SOURCE:.cpp=.o)
OBJ_WITH_DIR		:= $(addprefix $(BIN_DIR), $(OBJ))

COMPILER			:= g++

FLAGS				:= -std=c++14 -Wall -Wextra -Werror

vpath %.cpp $(SOURCE_DIR)
vpath %.cpp $(GNL_DIR)source
vpath %.hpp $(INCLUDE_DIR)
vpath %.o $(BIN_DIR)
vpath %.a $(PRINTF_DIR) $(LIBFT_DIR)

PRINTF				:= libftprintf.a
LIBFT				:= libft.a
GET_NEXT_LINE		:= get_next_line.c

all: $(NAME)

$(NAME): $(OBJ)
	$(COMPILER) $(FLAGS) $(OBJ_WITH_DIR) -o $@

$(OBJ):%.o:%.cpp $(INCLUDE) | $(BIN_DIR)
	$(COMPILER) $(FLAGS) -I $(INCLUDE_DIR) -c $< -o $(BIN_DIR)$@

$(BIN_DIR):
	mkdir -p $@

$(LIBFT):
	make -C $(LIBFT_DIR)

$(PRINTF):
	make -C $(PRINTF_DIR)

clean:
	rm -rf $(OBJ_WITH_DIR)
	rm -rf $(BIN_DIR)
	make -C $(LIBFT_DIR) clean
	make -C $(PRINTF_DIR) clean

fclean: clean
	rm -rf $(NAME)
	make -C $(LIBFT_DIR) fclean
	make -C $(PRINTF_DIR) fclean

re: fclean all

.PHONY: clean fclean re
#.SILENT: all $(NAME) $(OBJ) $(BIN_DIR) $(LIBFT) $(PRINTF) clean fclean re;
