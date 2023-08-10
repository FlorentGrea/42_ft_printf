#include <libftprintf.h>

void	ft_flag_prec(t_flags flags)
{
	while (flags.prec-- > 0)
		ft_putchar_fd('0', 1);
}
