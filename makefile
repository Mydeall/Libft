# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccepre <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/08 15:43:12 by ccepre            #+#    #+#              #
#    Updated: 2019/03/06 11:20:36 by ccepre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

LIB_PATH = .
PRINTF_PATH = ./ft_printf
INC_PATH = ./includes


LIB_NAME = ft_itoa.c\
		   ft_memchr.c\
		   get_next_line.c\
		   ft_putendl_fd.c\
		   ft_strcpy.c\
		   ft_strmap.c\
		   ft_strsplit.c\
		   ft_lstadd.c\
		   ft_memcmp.c\
		   ft_putnbr.c\
		   ft_strdel.c\
		   ft_strmapi.c\
		   ft_strstr.c\
		   ft_atoi.c\
		   ft_lstdel.c\
		   ft_memcpy.c\
		   ft_putnbr_fd.c\
		   ft_strdup.c\
		   ft_strncat.c\
		   ft_strsub.c\
		   ft_bzero.c\
		   ft_lstdelone.c\
		   ft_memdel.c\
		   ft_putstr.c\
		   ft_strequ.c\
		   ft_strncmp.c\
		   ft_strtrim.c\
		   ft_isalnum.c\
		   ft_lstiter.c\
		   ft_memmove.c\
		   ft_putstr_fd.c\
		   ft_striter.c\
		   ft_strncpy.c\
		   ft_strtrimchar.c\
		   ft_isalpha.c\
		   ft_lstmap.c\
		   ft_memset.c\
		   ft_strcat.c\
		   ft_striteri.c\
		   ft_strnequ.c\
		   ft_tolower.c\
		   ft_isascii.c\
		   ft_lstnew.c\
		   ft_putchar.c\
		   ft_strchr.c\
		   ft_strjoin.c\
		   ft_strnew.c\
		   ft_toupper.c\
		   ft_isdigit.c\
		   ft_memalloc.c\
		   ft_putchar_fd.c\
		   ft_strclr.c\
		   ft_strlcat.c\
		   ft_strnstr.c\
		   ft_isprint.c\
		   ft_memccpy.c\
		   ft_putendl.c\
		   ft_strcmp.c\
		   ft_strlen.c\
		   ft_strrchr.c\
		   ft_strtrimchar.c\
		   ft_putstrtab.c\
		   ft_putinttab.c\
		   ft_strjointab.c\
		   ft_lstlen.c\
		   ft_lstradd.c\
		   ft_putlst_str.c\
		   ft_pow.c\
		   ft_itoa_base.c\
		   ft_itoa_base_signed.c\
		   ft_dputnbr.c \
		   ft_dtoa.c \
		   ft_abs.c \
		   ft_freetab.c \

PRINTF_NAME = ft_printf.c \
		   lst_functions.c \
		   ft_stack_applier.c \
		   ft_format.c \
		   ft_modifier.c \
		   ft_conversion.c \
		   ft_precision.c \
		   ft_attributs.c \
		   ft_width.c \
		   ft_parser.c \
		   ft_struct_fct.c

INC_NAME = ft_printf.h \
		   libft.h \
		   get_next_line.h

LIB = $(addprefix $(LIB_PATH)/, $(LIB_NAME))
PRINTF = $(addprefix $(PRINTF_PATH)/, $(PRINTF_NAME))
INC = $(addprefix $(INC_PATH)/, $(INC_NAME))

OBJS_LIB = $(LIB:.c=.o)
OBJS_PRINTF = $(PRINTF:.c=.o)

all : $(NAME)

%.o : %.c $(INC)
	gcc $(FLAGS) -c $< -o $@ -I $(INC_PATH)

.PHONY : clean fclean re

$(NAME) : $(OBJS_LIB) $(OBJS_PRINTF)
	ar rc $(NAME) $(OBJS_LIB) $(OBJS_PRINTF)
	ranlib $(NAME)

clean :
	rm -f $(OBJS_LIB) $(OBJS_PRINTF)

fclean : clean
	rm -f $(NAME)

re : fclean all
