/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fi_main.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vrichese <vrichese@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/15 14:55:10 by vrichese          #+#    #+#             */
/*   Updated: 2019/11/15 17:23:51 by vrichese         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "filler.h"

int main(int argc, char **argv)
{
	if (argc > 1)
		ft_printf("Your arg is: %s\n", argv[1]);
	ft_printf("Let's get started\n");
}