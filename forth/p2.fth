variable limit 4000000 limit ! \ 上限
variable result  0 result !       \ 存储偶数项的总和
variable first   1 first !        \ 第一个斐波那契数
variable second  2 second !       \ 第二个斐波那契数

\ 代码段
: _start                          \ 定义主程序的入口
    do                            \ 开始循环，从0到limit-1
        second @                  \ 将第二个斐波那契数压入栈
        dup 2 mod 0= if           \ 判断是否为偶数
            result @ +             \ 如果是偶数，将其加到result中
            result !               \ 更新result
        then                       \ 结束if语句
        first @ second @ +         \ 计算下一个斐波那契数
        first !                   \ 更新第一个斐波那契数
        second @ swap !           \ 更新第二个斐波那契数
        limit @ over > not        \ 判断是否达到上限，如果未达到则继续循环
    loop                          \ 结束循环

    ." Sum of even Fibonacci terms below 4 million: " result @ .  \ 输出结果
;

\ 运行程序
_start