#include <libftprintf.h>

char	*ft_search(const char *s, char *pos)
{
	while (*(--s) != '%')
		if (*s == *pos)
			return ((char *)s);
	return (0);
}
