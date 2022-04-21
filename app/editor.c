/**
 * editor.c -- строковый текстовый редактор
 * 
 * Copyright (c) 2017, Alexander Borodin <aborod@petrsu.ru>
 *
 * This code is licensed under a MIT-style license.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "text/text.h"
#include "common.h"

#define MAXLINE 255

int main()
{
    char *cmd;
    char *arg;
    char *arg2;
    char cmdline[MAXLINE + 1];

    /* Создаем объект для представления текста */
    text txt = create_text();

    /* Цикл обработки команд */
    while (1) {
        printf("ed > ");

        /* Получаем команду */
        fgets(cmdline, MAXLINE, stdin);

        /* Извлекаем имя команды */
        if ((cmd = strtok(cmdline, " \n")) == NULL) {
            continue;
        }

        /* Распознаем поддерживаемую команду */

        /* Завершаем работу редактора */
        if (strcmp(cmd, "quit") == 0 || strcmp(cmd, "q") == 0) {
            fprintf(stderr, "Bye!\n");
            break;
        }

        /* Загружаем содержимое файла, заданного параметром */
        if (strcmp(cmd, "load") == 0 || strcmp(cmd, "l") == 0) {
            if ((arg = strtok(NULL, " \n")) == NULL) {
                fprintf(stderr, "Usage: load filename\n");
            } else {
                load(txt, arg);
            }
            continue;
        }

        /* Выводим текст */
        if (strcmp(cmd, "show") == 0 || strcmp(cmd, "sw") == 0) {
            show(txt);
            continue;
        }

	/* Сохранение содержимого в файл */
        if (strcmp(cmd, "save") == 0 || strcmp(cmd, "sv") == 0)
        {
            if ((arg = strtok(NULL, " \n")) == NULL)
            {
                fprintf(stderr, "Usage: upload filename\n");
            }
            else
            {
                save(txt, arg);
            }
            continue;
        }

        /* Перемещение курсора по строкам и символам */
        if (strcmp(cmd, "position") == 0 || strcmp(cmd, "pos") == 0 || strcmp(cmd, "p") == 0)
        {
            if ((arg = strtok(NULL, " \n")) == NULL ||
             (arg2 = strtok(NULL, " \n")) == NULL)
            {
                fprintf(stderr, "Not enough arguments\n");
            }
            else
            {
                int line = atoi(arg);
                int pos = atoi(arg2);
                move_cursor(txt, line, pos);
                show(txt);
            }
            continue;
        }

	/*  Вывод текста в прямом порядке следования строк без ведущих пробелов */
	if (strcmp(cmd, "showtrimmedfromstart") == 0 || strcmp(cmd, "swtfs") == 0)
	{
	    /* Применяем функцию к каждой строке текста */
            show_without_tabulation(txt);
	    continue;
	}

	/* Удаление всех символов после курсора в строке с курсором  */
        if (strcmp(cmd, "rle") == 0)
        {
            rle(txt);
	    show(txt);
            continue;
        }

	/* Перемещение строки с курсором перед предыдущей  */
        if (strcmp(cmd, "cp") == 0)
        {
            cp(txt);
            continue;
        }


        /* Если команда не известна */
        fprintf(stderr, "Unknown command: %s\n", cmd);
    }

    return 0;
}
