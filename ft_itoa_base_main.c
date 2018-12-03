/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_base_main.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccepre <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/16 14:06:04 by ccepre            #+#    #+#             */
/*   Updated: 2018/11/30 12:13:52 by ccepre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>
#include <stdlib.h>

int main(int ac, char **av)
{
	char *base;

	if (ac != 3)
	{
		printf("wrong number of arg : [long long int nb] [char *base]");
		return (1);
	}
	printf("%lld\n", ft_atoi(av[1])); 
	printf("%s", ft_itoa_base(ft_atoi(av[1]), av[2]));
	return (0);
}
