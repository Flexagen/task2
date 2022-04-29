/**
 * common.h -- прототипы функций реализации команд редактора
 * 
 * Copyright (c) 2017, Alexander Borodin <aborod@petrsu.ru>
 *
 * This code is licensed under a MIT-style license.
 */

#ifndef COMMON_H
#define COMMON_H

#include "text/text.h"

/* Декларирует неиспользуемый аргумент,
 * корректно подавляя предупреждение вида "unused parameter" */
#define UNUSED(x) (void)(x)

/**
 * Выводит содержимое указанного файла на экран
 */
void show(text txt);
void show_without_tabulation(text txt);

/**
 * Загружает содержимое указанного файла
 */
void load(text txt, const char *filename);

void save(text txt, char *filename);

void move_cursor(text txt, int line, int pos);

void rle(text txt);

void cp(text txt);
#endif
