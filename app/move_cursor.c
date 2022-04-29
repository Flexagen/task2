#include <stdio.h>
#include "common.h"
#include "_text.h"
#include "text.h"

void move_cursor(text txt, int line, int pos)
{
    int k = 1;
    node *current = txt->begin;

    if (line > 0)
    {
      int l = (int)txt->length;
        if (line > l)
            line = l;

        while(current)
        {
            if (k == line)
            {
                txt->cursor->line = current;
                if (pos >= 0 && pos <= (int)strnlen(current->contents, strlen(current->contents)))
                {
                    txt->cursor->position = pos;
                }
                else
                {
                    txt->cursor->position = 0;
                }
                break;
            }
            current = current->next;
            k ++;
        }
    }
    else
    {
        if (pos >= 0 && pos <= (int)strnlen(current->contents, strlen(current->contents)))
        {
            txt->cursor->position = pos;
        }
        else
        {
            txt->cursor->position = 0;
        }
        txt->cursor->line = current;
    }
}
