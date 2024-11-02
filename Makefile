NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror -I .

SRC =	srcs/ft_printf srcs/hexa srcs/nbrs srcs/utils

HEAD		= ./includes/	

SRCS = $(addsuffix .c, ${SRC})
OBJS = $(addsuffix .o, ${SRC})

all: ${NAME}

${NAME}: ${OBJS}
	@echo "✅ Compilation des fichiers sources"
	@ar -rcs ${NAME} ${OBJS}
	@echo "✅ Bibliothèque créée"

.c.o:
	@${CC} ${CFLAGS} -c -I ${HEAD} $< -o ${<:.c=.o}

clean:
	@rm -rf ${OBJS}
	@echo "✅ Suppression des fichiers sources"

fclean: clean
	@rm -rf ${NAME}
	@echo "✅ Suppression de la bibliothèque"

re: fclean all

.PHONY : all clean fclean re bonus
