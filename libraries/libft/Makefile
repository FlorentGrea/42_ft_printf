
NAME = libft.a

CC = cc
C_FLAGS = -Wall -Wextra -Werror

OBJ_PATH = ./objs/
INC_PATH = ./includes/
SRC_PATH = ./srcs/

OBJ_NAME = $(SRC_NAME:.c=.o)
INC_NAME = libft.h
SRC_NAME = ft_atoi.c ft_bzero.c ft_calloc.c ft_isdigit.c ft_isspace.c \
		   ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
		   ft_putnbr_fd.c ft_putstr_fd.c ft_strchr.c ft_strlen.c

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH), $(OBJ_NAME))
INC = $(addprefix -I,$(INC_PATH))

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $@ $(OBJ)
	@ranlib $@
	@echo "Obj folder & files created"
	@echo "Executable created"
	@echo "Compilation finished"

$(OBJ): | $(OBJ_PATH)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@$(CC) $(C_FLAGS) $(INC) -o $@ -c $<

$(OBJ_PATH):
	@mkdir $(OBJ_PATH) 2> /dev/null || true

clean:
	@rm -rf $(OBJ_PATH)	2> /dev/null || true
	@echo "Obj folder & files suppressed"

fclean: clean
	@rm -f $(NAME)
	@echo "Executable suppressed"

re: fclean
	@$(MAKE) all

norme:
	@norminette -R CheckForbiddenSourceHeader $(SRC)
	@echo "C files norme check finished"
	@norminette -R CheckDefine $(INC_PATH)
	@echo "Header files norme check finished"
