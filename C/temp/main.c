/*
 *
 * 　　┏┓　　　┏┓+ +
 * 　┏┛┻━━━┛┻┓ + +
 * 　┃　　　　　　　┃ 　
 * 　┃　　　━　　　┃ ++ + + +
 *  ████━████ ┃+
 * 　┃　　　　　　　┃ +
 * 　┃　　　┻　　　┃
 * 　┃　　　　　　　┃ + +
 * 　┗━┓　　　┏━┛
 * 　　　┃　　　┃　　　　　　　　　　　
 * 　　　┃　　　┃ + + + +
 * 　　　┃　　　┃
 * 　　　┃　　　┃ +  神兽保佑
 * 　　　┃　　　┃    代码无bug　　
 * 　　　┃　　　┃　　+　　　　　　　　　
 * 　　　┃　 　　┗━━━┓ + +
 * 　　　┃ 　　　　　　　┣┓
 * 　　　┃ 　　　　　　　┏┛
 * 　　　┗┓┓┏━┳┓┏┛ + + + +
 * 　　　　┃┫┫　┃┫┫
 * 　　　　┗┻┛　┗┻┛+ + + +
 *
 *
 * @file           :
 * @brief          : This is a brief description.
 * @details        :  This is the detail description.
 * @Author         : zirun
 * @version        : v1.0
 * @Date           : 2022-03-27 13:49:17
 * @LastEditors    : zirun
 * @LastEditTime   : 2022-03-27 13:49:18
 * @FilePath       : \C\temp\main.c
 */
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
int main(void)
{
    int cs_convert_value = 0;

    uint32_t cs_adc_value = 0;
    int32_t test = -1;
    cs_adc_value = (uint32_t)test;
    if (cs_adc_value & 0x800000) {
        //            cs_convert_value = -(int)((~(cs_adc_value & 0x7fffff)) & 0x7fffff);
        cs_convert_value = -(int)(((~cs_adc_value) + 1) & 0x7fffff);
    } else {
        cs_convert_value = cs_adc_value;
    }
    printf("cs_adc_value:%x  convert :%x %d\r\n", cs_adc_value, cs_convert_value, cs_convert_value);
}
