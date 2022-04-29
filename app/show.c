/**
 * show.c -- реализует команду вывода хранимого текста на экран
 *
 * Copyright (c) 2017, Alexander Borodin <aborod@petrsu.ru>
 *
 * This code is licensed under a MIT-style license.
 */

#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "common.h"
#include "text.h"
#include "_text.h"


static void show_line(int index, const char *contents, int cursor,const void *data);

/**
 * Выводит содержимое указанного файла на экран
 */
void show(text txt)
{
    /* Применяем функцию show_line к каждой строке текста */
    process_forward(txt, show_line, NULL);
}

/**
 * Выводит содержимое указанного файла на экран
 */
static void show_line(int index, const char *contents, int cursor, const void *data)
{
    /* Функция обработчик всегда получает существующую строку */
    assert(contents != NULL);
    
    /* Декларируем неиспользуемые параметры */
    UNUSED(index);
    UNUSED(data);

    int data_len = (int)strnlen(contents, strlen(contents)) - 1;
    int len = data_len > cursor ? data_len : cursor;

    if (cursor != -1)
    {
        for (int i = 0; i <= len; i++)
        {
            if (i == cursor)
            {
                fprintf(stdout, "|");
            }
            if (i <= data_len)
            {
                fprintf(stdout,"%c", contents[i]);
            }
            else if (i < len)
            { 
                fprintf(stdout," ");
            }
        }
    }
    else
    {
        /* Выводим строку на экран */
        printf("%s", contents);
    }
    printf("\n");
}
