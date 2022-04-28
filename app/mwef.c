#include <stdio.h>
#include "common.h"
#include "text/_text.h"
#include "text/text.h"


text mwef(text txt) {
  int pos = txt->cursor->position;
  node *current = txt->begin;
  int i;
  int count = pos;
  int flag = 0;

  while(current) {
    if (txt->cursor->line == current) {
      flag = 1;
      break;
    }
    current = current->next;
  }
  if (flag == 0) {
      printf("No cursor in the text");
      return txt;
  }
  char *contents = current->contents;

  /* Цикл с поиском слова */
  for (i=pos; contents[i] != '\n'; i++) {
      /* Проверка на конец слова и кол-во выведенных символов */
      if ((contents[i] == ' ') && (count > 0))
          break;

      /* Проверка на букву */
      if (((int)contents[i] >= (int)'a') && (int)(contents[i] <= (int)'z')) {
          count++;
      }
      if (((int)contents[i] >= (int)'A') && ((int)contents[i] <= (int)'Z')) {
          count++;
      }
  }

  txt->cursor->position = count;

  return txt;
}
