#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "common.h"
#include "text/text.h"
#include "text/_text.h"

static void showtrimmedfromstart (int index, const char *contents, int cursor,const void *data);

/**
 * Выводит содержимое указанного файла на экран без ведущих пробелов и табов.
 */
void show_without_tabulation(text txt)
{
    /* Применяем функцию show_line к каждой строке текста */
    process_forward(txt, showtrimmedfromstart, NULL);
}

/**
 * Выводит содержимое указанного файла на экран без ведущих пробелов и табов.
 */
static void showtrimmedfromstart (int index, const char *contents, int cursor, const void *data)
{
    /* Функция обработчик всегда получает существующую строку */
    assert(contents != NULL);

    /* Декларируем неиспользуемые параметры */
    UNUSED(index);
    UNUSED(data);

    int data_len = (int)strnlen(contents, strlen(contents)) - 1;
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
