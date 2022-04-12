CFLAGS := -std=c11 -c -xc -mthumb -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -I./.eide/deps -I./lib/cmsis -I./src -I./hal/STM32F10x_StdPeriph_Driver -I./hal/STM32F10x_StdPeriph_Driver/src -I./hal/STM32F10x_StdPeriph_Driver/inc -DUSE_STDPERIPH_DRIVER -DSTM32F10X_MD
CXXFLAGS := -std=c++14 -c -xc++ -mthumb -mcpu=cortex-m3 -Og -Wall -g -ffunction-sections -fdata-sections -I./.eide/deps -I./lib/cmsis -I./src -I./hal/STM32F10x_StdPeriph_Driver -I./hal/STM32F10x_StdPeriph_Driver/src -I./hal/STM32F10x_StdPeriph_Driver/inc -DUSE_STDPERIPH_DRIVER -DSTM32F10X_MD
ASMFLAGS := -c -x assembler-with-cpp -mthumb -mcpu=cortex-m3 -g -ffunction-sections -fdata-sections -I./.eide/deps -I./lib/cmsis -I./src -I./hal/STM32F10x_StdPeriph_Driver -I./hal/STM32F10x_StdPeriph_Driver/src -I./hal/STM32F10x_StdPeriph_Driver/inc
LDFLAGS := -mthumb -mcpu=cortex-m3 -T "e:/我的坚果云/学习/study_code/vscode_embedded/vscode_stm32f1_test/stm32f1x_64KB_flash.ld" --specs=nosys.specs --specs=nano.specs -Wl,--gc-sections -Wl,--print-memory-usage -Wl,-Map=./build/Debug/vscode_stm32f1_test.map
LDLIBS := -lm