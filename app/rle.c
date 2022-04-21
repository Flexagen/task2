/**
 * rle.c -- реализует удаление всех символов от курсора до конца строки
 *
 * Павлов Максим 22107
 *
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "common.h"
#include "text/text.h"
#include "text/_text.h"

void rle(text txt){
   printf("%p %i \n",txt->cursor->line, txt->cursor->position);
   
}

/**
 * Выводит содержимое указанного файла на экран без ведущих пробелов и табов.
 */
static void showtrimmedfromstart (int index, char *contents, int cursor, void *data)
{
    /* Функция обработчик всегда получает существующую строку */
    assert(contents != NULL);

    /* Декларируем неиспользуемые параметры */
    UNUSED(index);
    UNUSED(data);

    int data_len = strlen(contents) - 1;
    int len = data_len > cursor ? data_len : cursor;

    int flag = 0;
    for (int i = 0; i <= len; i++)
    {
        if (i == cursor) {
            printf("|");
        }
        if (i <= data_len ) {
	    if (contents[i] != ' ' && contents[i] != '\t') {
	        flag = 1;
	    }
            if (flag == 1) {
	        printf("%c", contents[i]);
	    }
        }
        else if (i < len) { 
            printf(" ");
        }
    }
    printf("\n");
}

