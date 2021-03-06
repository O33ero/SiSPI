### Раздел 4

#### Вопрос 01

##### Основы помехоустойчивого кодирования.

**Задача кодера источника** — представить подлежащие передаче данные в максимально компактной и, по возможности, неискаженной форме (эффективное кодирование). 

Если в канале есть помехи, то при приеме кодовых символов могут произойти ошибки, тогда кодовые комбинации (полученные при эффективном кодировании) будут декодированы неправильно!

Задача - повышение верности передачи. Один из путей ее решения – помехоустойчивое (канальное) кодирование. 

**Помехоустойчивыми (корректирующими) кодами** называются коды, обеспечивающие автоматическое обнаружение и/или исправление ошибок в кодовых комбинациях. Такая возможность обеспечивается целенаправленным введением избыточности в передаваемые сообщения.

При кодировании источника **избыточность уменьшается** или полностью устраняется (достигается увеличение скорости передачи информации за счёт уменьшения средней длины кодовых слов). 

При помехоустойчивом кодировании в передаваемые сообщения **вводится избыточность**. За счет этого появляется возможность обнаруживать ошибки и даже исправлять их.