#include <libftprintf.h>

int	ft_format_percent(t_printf data, t_flags flags, va_list ap)
{
	ap = (void *)ap;
	if (flags.nbr > 1)
		data.ret += ft_flag_number(flags, 1);
	if (flags.zero > 1 && flags.min == 0)
	{
		flags.zero -= 1;
		ft_flag_zero(flags);
		data.ret += flags.zero;
	}
	ft_putchar_fd('%', 1);
	if (flags.min > 1)
		data.ret += ft_flag_min(flags, 1);
	return (data.ret + 1);
}
