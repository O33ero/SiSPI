#### Задание 07

##### Осуществить кодирование данных с помощью кода Хэмминга (4,3) для информационной последовательности 0101.

**Примечание**. В условии возможно опечатка, и, скорее всего, имеется ввиду код $(7, 4)$. Тогда $n=7,m=4$.

Количество контрольных разрядов $k$ должно быть выбрано так, чтобы удовлетворялось неравенство:

$$
k \ge \log_2(k+m+1)
$$

- $m$ – количество информационных символов в сообщении; 
- $n$ - количество символов в сообщении. Числа $m$ и $n$ берутся из маркировки $(n, m)$.

$3≥log_2⁡(3+4+1)$, следовательно, $k=3$.

Проверочные биты располагаются на позициях, равным степеням двойки в порядке возрастания: первый проверочный бит на позиции 1, второй проверочный бит на позиции 2, третий проверочный бит на позиции 4.

| Номер позиции | 7 | 6 | 5 | 4 | 3 | 2 | 1 |
|:-------------:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|Значение|$i_4=0$|$i_3=1$|$i_2=0$|$k_3$|$i_1=1$|$k_2$|$k_1$|

Определим, какие группы информационных бит контролируют проверочные биты:

- Номер позиции $i_1$ равен 3, значит, $3=2^0+2^1=1+2$, поэтому информационный бит контролируется битами $k_1$ и $k_2$;

- Номер позиции $i_2$ равен 5, значит, $5=2^0+2^2=1+4$, поэтому информационный бит контролируется битами $k_1$ и $k_3$;

- Номер позиции $i_3$ равен 6, значит, $6=2^1+2^2=2+4$, поэтому информационный бит контролируется битами $k_2$ и $k_3$;

- Номер позиции $i_4$ равен 7, значит, $7=2^0+2^1+2^2=1+2+4$, поэтому информационный бит контролируется битами $k_1$, $k_2$ и $k_3$.

Рассчитаем значения проверочных символов: 

$$
k_1= i_1 \oplus i_2 \oplus i_4=1 \oplus 0 \oplus 0=1
$$

$$
k_2= i_1 \oplus i_3 \oplus i_4=1 \oplus 1 \oplus 0=0
$$

$$
k_3= i_2 \oplus i_3 \oplus i_4=0 \oplus 1 \oplus 0=1
$$

Таким образом, закодированная последовательность имеет вид: **0101101**.