#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

void open(char* str, int n, char* filename)
{
    FILE *input;
    input = fopen(filename, "r");
    if (input == NULL) {
        printf("Årror: there is no such file in directory");
        str = NULL;
        return;
    }
    fgets(str, n, input);
}

void generate(char* str, int n)
{
    for (int i = 0; i < n - 1; ++i)
    {
        str[i] = 32 + (rand() % 95);
    }
}

int main(int argc, char* argv[])
{
    clock_t beg_time = clock();
    const int N = 10000;
    char str[N];
    FILE* output_file;
    if (argc == 1)
    {
        generate(str, N);
        output_file = fopen("Ranom_output.txt", "w");
    } else if (argc == 2) {
        open(str, N, argv[1]);
        if (str == NULL) {
            return 0;
        }
        output_file = fopen("File_output.txt", "w");
    } else {
        printf("Årror: too many args");
        return 0;
    }
    char str_table[N][100];
    int str_table_counter = 0;
    int c = 0;
    while (str[c] != '\0')
    {
        int cur_str_count = 0;
        int word_len = 0;
        while ((str[c] >= 48) && (str[c] <= 57))
        {
            ++c;
        }
        while (((str[c] >= 48) && (str[c] <= 57)) || ((str[c] >= 65) && (str[c] <= 90)) || ((str[c] >= 97) && (str[c] <= 122)))
        {
            str_table[str_table_counter][cur_str_count] = str[c];
            ++cur_str_count;
            ++c;
            ++word_len;
        }
        if (word_len > 0)
        {
            ++str_table_counter;
        }
        ++c;
    }
    char word_table[N][100];
    int int_table[N];
    int word_table_size = 0;
    for (int i = 0; i < str_table_counter; ++i)
    {
        int flag = 0;
        for (int j = 0; j < word_table_size; ++j)
        {
            if (strcmp(word_table[j], str_table[i]) == 0)
            {
                flag = 1;
                ++int_table[j];
            }
        }
        if (flag == 0)
        {
            strcpy(word_table[word_table_size], str_table[i]);
            ++int_table[word_table_size];
            ++word_table_size;
        }
    }
    for (int i = 0; i < word_table_size; ++i)
    {
        fprintf(output_file, "%d %s\n", int_table[i], word_table[i]);
    }
    clock_t end_time = clock();
    printf("Operating time of the program: %f\n", (double)(end_time - beg_time) / CLOCKS_PER_SEC);
    return 0;
}
