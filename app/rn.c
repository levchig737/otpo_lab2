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
    if ((number < 1) || (number > lenght)) {
        fprintf(stderr, "Incorrect data!\n");
        return txt;
    }

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

    free(current);

    if (txt->cursor->line == current) {
        if (k != lenght) {
            txt->cursor->line = next_str;
        }
        else {
            txt->cursor->line = prev_str;
        }
    }

    if ((number == 1) && (number == lenght)) {
        txt->begin = NULL;
        txt->end = NULL;
        txt->cursor->line = NULL;
        txt->length = 0;
    }

    if (number == 1) {
        txt->begin = current->next;
        txt->length = lenght - 1;
        return txt;
    }

    if (number == lenght) {
        current = current->previous;
        current->next = NULL;
        txt->length = lenght - 1;
        return txt;
    }

    current = current->next;
    current->previous = prev_str;
    current = current->previous;
    current->next = next_str;
    txt->length = lenght - 1;
    return txt;
}
