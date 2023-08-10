
NAME = libftprintf.a

CC = cc
C_FLAGS = -Wall -Wextra -Werror

LFT_PATH = ./libraries/libft/
LFT_INC_PATH = ./libraries/libft/includes/
OBJ_PATH = ./objs/
INC_PATH = ./includes/
SRC_PATH = ./srcs/
SRC_FRT_PATH = ft_format_functions/
SRC_FLG_PATH = ft_flag_functions/
SRC_FLG_H_PATH = ft_h_flag/
SRC_FLG_HH_PATH = ft_hh_flag/
SRC_UTL_PATH = utils/
SRC_DBL_PATH = double/

LFT_NAME = libft.a
OBJ_NAME = $(SRC_NAME:.c=.o)
INC_NAME = libftprintf.h
SRC_NAME = ft_printf.c \
	   utils/ft_search.c utils/ft_round_dbl.c \
	   utils/double/ft_getdbl.c utils/double/ft_getdbl_exponent.c \
	   utils/double/ft_getdbl_fraction.c \
	   utils/double/ft_dbl_case_f.c utils/double/ft_dbl_case_e.c \
	   ft_format_functions/ft_format_c.c ft_format_functions/ft_format_s.c \
	   ft_format_functions/ft_format_int.c ft_format_functions/ft_format_uint.c  \
	   ft_format_functions/ft_format_percent.c ft_format_functions/ft_format_f.c \
	   ft_format_functions/ft_format_e.c ft_format_functions/ft_format_g.c\
	   ft_format_functions/ft_format_n.c \
	   ft_flag_functions/ft_flag_min.c ft_flag_functions/ft_flag_number.c \
	   ft_flag_functions/ft_flag_asterisk.c ft_flag_functions/ft_flag_hash.c \
	   ft_flag_functions/ft_flag_plus.c ft_flag_functions/ft_flag_spc.c \
	   ft_flag_functions/ft_flag_zero.c ft_flag_functions/ft_flag_prec.c \
	   ft_flag_functions/ft_h_flag/ft_format_h_int.c \
	   ft_flag_functions/ft_h_flag/ft_format_h_uint.c \
	   ft_flag_functions/ft_hh_flag/ft_format_hh_int.c \
	   ft_flag_functions/ft_hh_flag/ft_format_hh_uint.c

LFT = $(addprefix $(LFT_PATH),$(LFT_NAME))
SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH), $(OBJ_NAME))
INC = $(addprefix -I,$(INC_PATH)) $(addprefix -I,$(LFT_INC_PATH))

all: $(NAME)

$(NAME): $(OBJ)
	@make -C $(LFT_PATH)
	@cp $(LFT) $@
	@ar rcs $@ $(OBJ)
	@ranlib $@
	@echo "Obj folder & files created"
	@echo "Executable created"
	@echo "Compilation finished"

$(OBJ): | $(OBJ_PATH)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@$(CC) $(C_FLAGS) $(INC) -o $@ -c $<

$(OBJ_PATH):
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_FRT_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_FLG_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_FLG_PATH)$(SRC_FLG_H_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_FLG_PATH)$(SRC_FLG_HH_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_UTL_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)$(SRC_UTL_PATH)$(SRC_DBL_PATH) 2> /dev/null || true

clean:
	@make clean -C $(LFT_PATH)
	@rm -rf $(OBJ_PATH) 2> /dev/null || true
	@echo "Obj folder & files suppressed"

fclean: clean
	@make fclean -C $(LFT_PATH)
	@rm -f $(NAME)
	@echo "Executable suppressed"

re: fclean
	@$(MAKE) all

bonus: all

norme:
	@norminette -R CheckForbiddenSourceHeader $(SRC)
	@echo "C files norme check finished"
	@norminette -R CheckDefine $(INC_PATH)
	@echo "Header files norme check finished"
