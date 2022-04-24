/**
 * cp.c -- перемещение текущей строки (где стоит курсор) перед предыдущей
 *
 * Павлов Максим 22107
 *
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "common.h"
#include "text.h"
#include "_text.h"

void cp(text txt)
{
    /* Проверяем, имеется ли текст */
    if (txt == NULL || txt->length == 0) {
        fprintf(stderr, "There are already no any lines in the text!\n");
        return;
    }

    /* Текст ненулевой длины должен содержать хотя бы одну строку */
    assert(txt->begin != NULL && txt->end != NULL);

    /* Стартуем с начальной строки текста */
    node *current = txt->begin;
    char s[MAXLINE] = " ";
    short Flag_error = 0;
    /* Бежим до строки с курсором */
    while (current) {
        if (txt->cursor->line == current) {
           if (current != txt->begin) {
               strcpy(s, current->contents);
               strcpy(current->contents, current->previous->contents);
	       strcpy(current->previous->contents, s);
           }
           else {
           fprintf(stderr, "Can't move a row.\n");
               Flag_error = 1;
	       break;
	   }
        }
        current = current->next;
    }
    if (!Flag_error) {
    	show(txt);
    }
}













