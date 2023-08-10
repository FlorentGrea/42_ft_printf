#include <libftprintf.h>

const char	*g_hash[] = {"0x", "0x", "0X", "0"};

void	ft_flag_hash(char format)
{
	char	*form;
	char	*good_hash;

	form = "pxXo";
	good_hash = (char *)g_hash[ft_strchr(form, format) - form];
	if (ft_strchr(form, format))
		ft_putstr_fd(good_hash, 1);
}
