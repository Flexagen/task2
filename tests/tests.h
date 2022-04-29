#ifndef EQTEST_H
#define EQTEST_H
#include <gtest/gtest.h>
#include <gmock/gmock-matchers.h>
#include <string>
#include <fstream>

<<<<<<< HEAD
char *input_file = INPUTDIR "/input.txt";

=======
char *filename = "input.txt";
>>>>>>> 4464965e598cfcf55cce50462223e10fa00ce4f9
extern "C"{
#include "../app/text/text.h"
#include "../app/text/_text.h"
#include "../app/common.h"
}

TEST(t1, t){
EXPECT_EQ(input_file, "../input/input.txt");
}

/*
 * Тесты функций из индивидуальных заданий:
 */

TEST(Showtrimmedfromstart, test)
{
    /*
     * Отображение текста без ведущих символов табуляции.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt,"	Hello World");
    append_line(txt, "    Hello");
    append_line(txt, "   World");
    append_line(txt, "		World Hello");

    testing::internal::CaptureStdout();
    show_without_tabulation(txt);
    std::string output = testing::internal::GetCapturedStdout();

    // читаем ожидаемые строки из файла input.txt
    char *filename = (char *)malloc(sizeof(char) * 1024);
    sprintf(filename, "%s/input.txt", INPUTDIR);
    std::ifstream f(filename);
    free(filename);
    std::string content;
    content.assign( (std::istreambuf_iterator<char>(f) ),
                    (std::istreambuf_iterator<char>()    ) );
    content[content.length()-1] = '|';
    content += "\n";
    EXPECT_EQ(output, content);
}

TEST(rle, positive_test)
{
    /*
     * Удаление всех символов в строке после курсора.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt, "Example text.");

    // подключаем захват вывода
    testing::internal::CaptureStdout();
    move_cursor(txt, 0, 0);
    rle(txt);
    show(txt);

    //получаем результат - удаление прошло успешно и символ курсора.
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "RLE successed!\n|\n");
    remove_all(txt);
}

TEST(rle, emply_data)
{
    /*
     * Удаление всех символов в строке после курсора.
     * Негативный тест.
     * Передаваемые параметры - пустая структура txt и NULL.
     */

    text txt = create_text();

    // подключаем захват вывода
    testing::internal::CaptureStderr();
    rle(NULL);
    rle(txt);

    //получаем результат
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "There are already no any lines in the text!\nThere are already no any lines in the text!\n");
    remove_all(txt);
}

TEST(cp, positive_test)
{
    /*
     * Перемещение строки с курсором перед предыдущей.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt,"Example text in line 1.");
    append_line(txt,"Example text in line 2.");

    testing::internal::CaptureStdout();
    cp(txt);

    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Example text in line 2.\nExample text in line 1.|\n");
}

TEST(cp, emply_data)
{
    /*
     * Перемещение строки с курсором перед предыдущей.
     * Негативный тест.
     * Передаваемые параметры - пустая структура txt и NULL.
     */

    text txt = create_text();

    testing::internal::CaptureStderr();
    cp(NULL);
    cp(txt);
    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "There are already no any lines in the text!\nThere are already no any lines in the text!\n");
}

TEST(cp, one_line_in_text)
{
    /*
     * Перемещение строки с курсором перед предыдущей.
     * Негативный тест.
     * Запуск функции в крайней точке - первой строке.
     */

    text txt = create_text();
    append_line(txt, "Example text.");

    testing::internal::CaptureStderr();
    cp(txt);

    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "Can't move a row.\n");
}

TEST(cp, all_position_cursor_to_cp)
{
    /*
     * Перемещение строки с курсором перед предыдущей.
     * Проверка работы функции во всех возможных позициях строки с курсором.
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 2, 0);

    testing::internal::CaptureStdout();
    cp(txt);

    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Example text in line 2.\n|Example text in line 1.\nExample text in line 3.\n");

    testing::internal::CaptureStdout();
    move_cursor(txt, 3, 0);
    cp(txt);

    output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Example text in line 2.\nExample text in line 3.\n|Example text in line 1.\n");

    testing::internal::CaptureStderr();
    move_cursor(txt, 1, 0);
    cp(txt);

    output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "Can't move a row.\n");
}

/*
 * Тесты основных функций (show, load, save, move_cursor):
 */

TEST(Show_text, test)
{
    /*
     * Отображение текста.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");

    // подключаем захват вывода
    testing::internal::CaptureStdout();
    move_cursor(txt, 0, 0);
    show(txt);

    //получаем результат
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "|Example text in line 1.\n");
    remove_all(txt);
}

TEST(Load_file, default_load)
{
    text txt = create_text();
    testing::internal::CaptureStdout();
    load(txt, input_file);
    show(txt);
    std::string output = testing::internal::GetCapturedStdout();

    // читаем ожидаемые строки из файла input.txt
    char *filename = (char *)malloc(sizeof(char) * 1024);
    sprintf(filename, "%s/input.txt", INPUTDIR);
    std::ifstream f(filename);
    free(filename);
    std::string content;
    content.assign( (std::istreambuf_iterator<char>(f) ),
                    (std::istreambuf_iterator<char>()    ) );
    content[content.length()-1] = '|';
    content += "\n";
    EXPECT_EQ(output, content);
}


TEST(Load_file, wrong_file_name)
{
    /*
     * Загрузка текста из файла.
     * Негативный тест.
     * Несуществующее имя файла.
     */

    text txt = create_text();

    // подключаем захват вывода
    testing::internal::CaptureStdout();
    load(txt, "wrong_name.txt");
    remove_all(txt);

    //получаем результат
    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "The file wrong_name.txt cannot be opened\n");
}

TEST (Save_file, default_save)
{
    /*
     * Тест на сохранения файла.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt, "Example text in line.");

    testing::internal::CaptureStdout();
    save(txt, "example_result.txt");
    remove_all(txt);

    std::string output = testing::internal::GetCapturedStdout();
    EXPECT_EQ(output, "Save file successeed!\n");
}

TEST (Save_file, emply_txt_structure)
{
    /*
     * Тест на сохранения файла.
     * Негативный тест.
     * Передаваемые параметры - пустая структура txt, NULL, пустое имя файла.
     */

    text txt = create_text();

    testing::internal::CaptureStderr();
    save(txt, "test_save.txt");
    save(NULL, "test_save.txt");
    append_line(txt, "Example text.");
    save(txt, NULL);
    save(txt, "");

    std::string output = testing::internal::GetCapturedStderr();
    EXPECT_EQ(output, "The text doesn't exist\nThe text doesn't exist\nFile (null) can't be opened\nFile  can't be opened\n");
    remove_all(txt);
}

TEST(Cursor_position, default_arguments)
{
    /*
     * Тест перемещения курсора.
     * Позитивный тест.
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 0, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 0;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, 0);
    remove_all(txt);
}

TEST(Cursor_position, mistake_line_argument_small)
{
    /*
     * Тест перемещения курсора.
     * Негативный тест.
     * Попытка поставить курсор в отрицательную строку.
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, -10, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 1;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, 1);
    remove_all(txt);
}

TEST(Cursor_position, mistake_line_argument_large)
{
    /*
     * Тест перемещения курсора.
     * Негативный тест.
     * Попытка поставить курсор в несуществующую строку (слишком большую).
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 100, 0);
    EXPECT_EQ(txt->cursor->position, 0);
    int k = 1;
    node *current = txt->begin;
    while(current != txt->cursor->line)
    {
        k++;
        current = current->next;
    }
    EXPECT_EQ(k, txt->length);
    remove_all(txt);
}

TEST(Cursor_position, mistake_pos_argument_small)
{
    /*
     * Тест перемещения курсора.
     * Негативный тест.
     * Попытка поставить курсор перед символом на отрицательной позиции.
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 2, -10);
    EXPECT_EQ(txt->cursor->position, 0);
    remove_all(txt);
}

TEST(Cursor_position, mistake_pos_argument_large)
{
    /*
     * Тест перемещения курсора.
     * Негативный тест.
     * Попытка поставить курсор перед несуществующим символом (под очень польшим номером).
     */

    text txt = create_text();
    append_line(txt, "Example text in line 1.");
    append_line(txt, "Example text in line 2.");
    append_line(txt, "Example text in line 3.");
    move_cursor(txt, 1, 100);
    EXPECT_EQ(txt->cursor->position, 0);
    remove_all(txt);
}

/*
 * Тесты базовых функций (append_line, create_text, process_forward_remove_all):
 */


#endif // EQTEST_H
