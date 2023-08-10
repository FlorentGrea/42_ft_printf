#include <libft.h>

int 	ft_atoi(const char *str)
{
	int	ret;
	int	neg;

	ret = 0;
	if (!str)
		return (0);
	while (ft_isspace(*str))
		str++;
	if (*str == '-')
		neg = -1;
	else
		neg = 1;
	if (*str == '-' || *str == '+')
		str++;
	while (ft_isdigit(*str))
		ret = (ret * 10) + (*str++ - 48);
	return (ret * neg);
}
