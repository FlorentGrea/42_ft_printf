#ifndef LIBFT_H
# define LIBFT_H

# include <unistd.h>
# include <stdlib.h>

void	*ft_memset(void *b, int c, size_t len);
void	ft_bzero(void *s, size_t n);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memmove(void *dst, const void *src, size_t len);

int		ft_isdigit(int c);
int		ft_isspace(int c);

char	*ft_strchr(const char *s, int c);
int		ft_atoi(const char *str);
size_t	ft_strlen(const char *s);

void	*ft_calloc(size_t count, size_t size);

void	ft_putchar_fd(char c, int fd);
void	ft_putstr_fd(char *s, int fd);
void	ft_putnbr_fd(int n, int fd);

#endif
