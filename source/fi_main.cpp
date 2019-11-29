/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fi_main.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vrichese <vrichese@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/15 14:55:10 by vrichese          #+#    #+#             */
/*   Updated: 2019/11/29 15:30:23 by vrichese         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "filler.hpp"

int main(int argc, char **argv)
{
	if (argc > 1)
		std::cout << "Your arg is: " << argv[1] << std::endl;
	std::cout << "Let's get started\n";
}
