#include <libftprintf.h>

int	ft_flag_min(t_flags flags, int size)
{
	int	ret;

	ret = flags.min - size;
	while (flags.min-- > size)
		ft_putchar_fd(' ', 1);
	return (ret);
}
