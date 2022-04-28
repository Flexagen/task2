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

void rle(text txt)
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

    /* Бежим до строки с курсором */
    while (current) {
        if (txt->cursor->line == current) {
	    unsigned int len_line = strlen(current->contents);
	    int Flag = 0;
	    for (unsigned int i = 0; i <= len_line; i++) {
            	if ((int)i == txt->cursor->position) {
		    Flag = 1;
		}
		if (Flag == 1) {
		   current->contents[i] = '\0';
		}
	    }
	}
        current = current->next;
    }
    fprintf(stdout, "RLE successed!\n");
}
