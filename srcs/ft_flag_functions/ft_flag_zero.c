#include <libftprintf.h>

void	ft_flag_zero(t_flags flags)
{
	while (flags.zero-- > 0)
		ft_putchar_fd('0', 1);
}
