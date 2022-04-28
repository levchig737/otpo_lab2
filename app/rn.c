#include <stdio.h>
#include <stdio.h>
#include <string.h>
#include <stddef.h>
#include "common.h"
#include "text/text.h"
#include "text/_text.h"

text rn(text txt, unsigned long number)
{
    node *nd;
    node *next_str;
    node *prev_str;
    UNUSED(next_str);
    UNUSED(prev_str);

    unsigned long lenght = txt->length;

    if ((nd = (node *) malloc(sizeof(node))) == NULL) {
        fprintf(stderr, "Not enough memory!\n");
        exit(EXIT_FAILURE);
    }

    /* Проверка на число, чтобы оно было >0 и <= кол-во строк */

    /* траблы с двойным free после повторного load */


    unsigned long k = 1;
    node *current = txt->begin;

    /* Перемещение к строке number */
    while(current) {
      if (k == number) {
        if (number != lenght)
            next_str = current->next;

        if (number != 1)
            prev_str = current->previous;

        break;
      }
      current = current->next;
      k++;
    }

    if (number == 1) {
        free(current);
//        txt->begin = current->next;
        return txt;
    }
    if (number == lenght) {
        free(current);
//        current = current->previous;

        return txt;
    }
    free(current);
//    current = current->next;
//    current->previous = prev_str;
//    current = prev_str;
//    current->next = next_str;

    return txt;
}
