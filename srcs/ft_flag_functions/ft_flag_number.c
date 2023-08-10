#include <libftprintf.h>

int	ft_flag_number(t_flags flags, int size)
{
	int	ret;

	ret = flags.nbr - size;
	while (flags.nbr-- > size)
		ft_putchar_fd(' ', 1);
	return (ret);
}
