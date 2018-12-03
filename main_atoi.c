/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_atoi.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccepre <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/30 11:29:26 by ccepre            #+#    #+#             */
/*   Updated: 2018/11/30 13:31:33 by ccepre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

int main(int ac, char **av)
{
	if (ac != 2)
		printf("need 1 arg");
	printf("main : %lld\n", ft_atoi(av[1]));
	printf("real : %lld", atoi(av[1]));
	return (0);
}
