/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_dtoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccepre <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/07 10:43:58 by ccepre            #+#    #+#             */
/*   Updated: 2018/12/07 10:44:06 by ccepre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <float.h>

static long double	left_size(long double n, int *count)
{
	*count = 0;
	while (n >= 10)
	{
		n = n / 10;
		(*count)++;
	}
	return (n);
}

char				*ft_dtoa(long double n, int precision)
{
	int		count[1];
	char	*result;
	int		i;
	int		sign;

	sign = n < 0 ? 1 : 0;
	n = n < 0 ? -n : n;
	n = left_size(n, count);
	if (!(result = (char*)malloc(*count + precision + 3 + sign)))
		return (NULL);
	i = -1;
	if (sign == 1)
		result[++i] = '-';
	if (precision != -1 && precision < 20 && n < DBL_MAX && n > DBL_MIN)
		n = (double)n;
	while (n > 0 && (precision == -1 || *count > -precision -1))
	{
		result[++i] = (int)n + '0';
		n = n - (int)n;
		n = n * 10;
		if (!(--(*count) + 1))
			result[++i] = '.';
	}
	result[++i] = 0;
	return (result);
}
