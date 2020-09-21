#include <unistd.h>
#include <stdio.h>
#include <errno.h>

size_t		ft_strlen(const char *s);
char *ft_strcpy(char *dest, const char *src);
int ft_strcmp(const char *s1, const char *s2);
int ft_write(int handle, void *buf, int count);

int	main (void)
{
	printf("%ld\n", ft_strlen("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"));
	char dest[20];
	char src[20] = "Hello worlddd";

	printf("%s\n", ft_strcpy(dest, src));
	printf("%d\n", ft_strcmp("a", "a"));
	//errno = 0;
	ft_write(-40, "F", 1);
	//printf("err - %d\n", errno);
}
