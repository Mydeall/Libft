/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_ft_putchar.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ccepre <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/30 13:09:39 by ccepre            #+#    #+#             */
/*   Updated: 2018/11/30 13:40:53 by ccepre           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int main(int ac, char **av)
{
	int c = L'Ã¸';

	printf("%d\n", c);
	printf("%c\n", c);
	printf("----------------------\n");
	ft_putchar(c);
	printf("\n%lld\n",c) ;
	return (0);
}
