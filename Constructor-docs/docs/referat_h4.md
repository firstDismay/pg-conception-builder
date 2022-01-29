# Конструктор концепций

![](https://github.com/firstDismay/Conception-Builder/blob/main/resources/schematics/Pic_about.png?raw=true)



<h1 align="center"> Реферат 
<h2 align="center">программный комплекс
<h1 align="center"> Конструктор концепций
<h3 align="center"> (Версия 2.0)



<h3 align="right"> Авторы: 
<h3 align="right"> Иванов Дмитрий Юрьевич 
<h3 align="right"> Набоков Сергей Анатольевич 
<h3 align="center"> 2020 год

<h1 align="left"> Введение


<h5 align="left"> Мы живем в мире победивших лириков и биржевой экономики беспощадно попирающих физические 
основы мироздания, в мире, где систематизация данных в общем случае сводится к автоматизации 
операций, связанных с движением средств и материально технических ресурсов от сырья через складские 
запасы к конечному продукту плюс бухгалтерский учет и налоговая отчётность, при этом огромный пласт 
задач по систематизации и учету технических, технологических, научных, социальных, природных 
процессов или процессов производства в собственном небольшом деле, остается далеко за гранью 
понимания вышеописанных систем. Это темная область, где безраздельно правит Excel и 
однопользовательские СУБД с низким порогом вхождения пользователей. Бесчисленное множество 
разрозненных данных, сведенных в электронные таблицы в попытках систематизировать, учесть, 
сохранить, сопоставить и повторить или не повторить, подготовить и передать из одной системы в другую, 
найти лучшее решение из множества доступных вариантов. Все это опыт необходимый в любом деле, 
который нужно сохранить и использовать, чтобы получить новый опыт, ибо только так можно достичь 
совершенства. 

<h1 align="left"> Конструктор концепций описание
<h5 align="left"> Конструктор концепций - представляет собой двухуровневый клиент-серверный, многопользовательский 
программный комплекс, обеспечивающий управление структурированной базой данных, посредством 
предопределенного программного интерфейса - API БД. Структурированная БД обеспечивает возможность 
конструирования древовидных иерархических структур - Концепций, создаваемых архитекторами 
(проектировщиками), систематизирующими данные произвольной предметной области в соответствии с 
принципами объектно-ориентированного подхода. Конструктор концепций обеспечивает среду для 
существования, модификации и взаимодействия с пользователями не ограниченному количеству 
Концепций на протяжении всего жизненного цикла. Предопределенная архитектура индексированного 
табличного пространства структурированной БД, совместно с API БД обеспечивает высокий уровень 
производительности для процессов доступа к данным Концепций. 
В качестве СУБД используется PostgreSQL. Комплекс состоит из следующих архитектурных элементов: 

1. **Структурированная БД** - база данных, созданная в СУБД PostgreSQL (не содержит начальных 
данных);
2. **Промежуточный API БД** - пакет функций, сформированный преимущественно на языке PL/pgSQL, 
обеспечивающий ведение структурированного каталога БД, сохранение целостности данных в 
рамках принятой идеологии, с учетом действующих ограничений и правил конкретного 
архитектурного решения, применяемого в отдельно взятой Концепции;
3. **Библиотека доступа (Менеджер данных)** - программная оболочка клиентского приложения 
написанная на C# и обеспечивающая решение вопросов сетевого взаимодействия с сервером СУДБ. 
Для построения менеджера данных использована библиотека NPGSQL. Менеджер данных 
прозрачно обеспечивает полностью асинхронное взаимодействие с БД, посредством внутреннего 
пула соединений, обеспечивающего сохранение контекста команд в асинхронном режиме;
4. **Конструктор концепций** - графический, пользовательский интерфейс, написанный на C# и 
обеспечивающий возможности визуального конструирования для архитектора концепций в 
соответствии с требованиями предметной области.
<h1 align="left"> Назначение
<h5 align="left"> Конструктор концепций предназначен для ручного или автоматизированного конструирования объектных 
иерархических структур - Концепций, систематизирующих данные произвольной предметной области в 
соответствии с принципами объектно-ориентированного подхода, в рамках выработанной архитектором 
(проектировщиком) идеологии или схемы классификации. 
<h5 align="left"> Основываясь на общепринятых принципах ООП, архитектор определяет критерии систематизации 
предметной области, основные взаимодействующие сущности, порядок их взаимного расположения и 
иерархию отношений, после определения базовых принципов описания предметной области в 
конструкторе концепций создается требуемая структура - Концепция, при этом принятые архитектором 
правила взаимодействия элементов Концепции, заданные на этапе конструирования становятся жесткими 
правилами организации данных, идеологическая целостность которых обеспечивается на уровне API БД. 

*Простой пример:*
*Рассмотрим элементарный пример, коробок спичек. Для реализации коробка спичек необходимо 
определить две ключевых сущности — это сам коробок и, собственно, спички. Для коробка так же 
необходимо определить критерий вместимости, количество спичек, которое в него возможно 
поместить и, если мы не желаем использовать коробок не по назначению необходимо указать что 
коробок может содержать только спички. Определив указанные правила в конструкторе концепций, 
мы получим объект коробок, который может содержать указанное количество спичек и ничего более. 
Таким образом конечный пользователь осуществляющий ввод и модификацию данных в рамках 
действующей концепции не сможет обойти правила, жестко заданные архитектором на этапе 
визуального конструирования.*

<h5 align="left"> Конструктор концепций инкапсулирует сложность разработки БД в многопользовательской среде, 
скрывает вопросы открытия и поддержания сессий, взаимодействия с табличными пространствами, 
снижая тем самым интеллектуальный порог вхождения в область создания и ведения сложных 
многопользовательских БД. Архитектор Концепции, должен владеть базовыми знаниями ООП и быть 
экспертом в систематизируемой предметной области. Этих навыков достаточно для создания Концепции 
любой сложности. Работа в конфигураторе концепции позволяет систематизировать собственные знания 
эксперта в предметной области и охватить весь круг вопросов, следуя по наикратчайшему пути реализации 
задуманного решения. Многопользовательская среда Конструктора обеспечивает возможность 
одновременной работы нескольких пользователей над созданием одной Концепции, систематизирующей 
данные предметной области, что существенно повышает качество конечного результата. 
<h5 align="left"> В последствии при необходимости, для реализации целевого графического интерфейса Концепции могут 
быть привлечены профессиональные программисты. При этом извечный вопрос “чего все-таки хотел 
пользователь?” на данном этапе будет иметь достаточно качественный и вполне осязаемый ответ. 
<h1 align="left"> Основные принципы 
<h5 align="left"> Создание базы данных, обеспечивающей хранение данных в соответствии с требованиями определенной 
предметной области с учетом всех возможных аспектов и тонкостей было и остается достаточно сложной 
задачей. При необходимости обеспечить возможность расширения и модификации системы хранения, 
подразумевающую внесение заранее не определенных изменений, возникающих в процессе эксплуатации 
БД и вызванных изменениями в самой предметной области или изменениями требований к структуре 
представления данных, делают эту задачу еще более сложной. При необходимости сохранения 
исторической ретроспективы, обеспечивающей преемственность данных, существующих в различных 
временных срезах и имеющих различия в структурах представления делает данную задачу практически не 
выполнимой. 
<h5 align="left">  По мнению авторов изменение требований к структурам БД является основным фактором, 
ограничивающим жизненный цикл решений и в тоже время двигателем для дальнейшего 
совершенствования способов представления данных, обеспечивающих создание новых, более гибких и 
приспособленных к быстро изменяющимся реалиям вариантов структурирования данных. Один из таких 
вариантов представлен в настоящем решении. 
<h5 align="left">  При создании конструктора концепций упор был сделан не на реализацию структуры хранения данных под 
определенную предметную область, а на создания системы хранения и модификации заранее 
неопределенных структур хранения данных, обеспечивающей их создание, модификацию, наполнение и 
ведение на протяжении всего жизненного цикла. Таким образом конструктор концепций находится на 
более высоком уровне абстракции по отношении к понятию Концепции и представляет собой среду, 
обеспечивающую существование неопределенного количества Концепций, на протяжении всего 
жизненного цикла, независимо от их внутреннего устройства. 
<h5 align="left"> Для обеспечения структурной целостности Концепций в среде реализован механизм хранения и 
поддержания правил организации данных на основе требований архитектора, для взаимодействия с 
Концепциями был разработан программный интерфейс (написанный преимущественно на языке 
PL/pgSQL), обеспечивающий все виды необходимого взаимодействия с элементами отдельных Концепций, 
в том числе: внесение, изменение, удаление данных, поиск, навигация и выполнение математических 
операция над родственными юнитами. 
<h1 align="left"> Основные понятия
<h5 align="left"> Для детального описания принципов работы Комплекса необходимо пояснить основные используемые 
понятия. Все сущности Конструктора концепция условно разделены на организационные юниты и 
объектные юниты. 
<h2 align="left"> Организационные юниты
<h5 align="left">

*Организационные юниты используются для создания древовидных структур, определяющих общую 
схему Концепции, и имеют трехуровневую архитектуру, состоящую из следующих компонентов:
*

**Прототипы шаблонов позиций** — это примитивы, определяющие базовую модель иерархического 
взаимодействия организационных юнитов, всего определено 6 прототипов шаблонов позиций. Каждый 
прототип определяет правила взаимного расположения, возможность размещения в качестве корневой 
структуры, возможность вложенности в самого себя, возможность вложенности позиций и возможности 
вложенности объектов. 

**Шаблоны позиций** — это примитивы, непосредственно наследующие от прототипов позиций в части 
модели иерархического поведения. Шаблоны позиций могут уточнять наследованную от прототипов 
модель поведения с помощью индивидуальных белых списков, исключая нежелательные в конкретном 
архитектурном решении взаимодействия. В шаблонах позиций могут определятся дополнительные строго 
типизированные произвольные свойства организационных юнитов. 

**Позиции** — это иерархически структурированные примитивы, непосредственно наследующие от шаблонов 
позиций в части модели иерархического поведения и свойств шаблонов позиций. Позиции могут 
непосредственно содержать объекты или включать их в качестве значений объектных свойств. 

**Объектные юниты**

*Объектные юниты являются основными носителями данных Концепции и имеют трехуровневую 
архитектуру, состоящую из следующих компонентов:*

**Группы** — это иерархически структурированные примитивы, определяющие организационную структуру 
классов Концепции и правила вложенности первого уровня, Группа - Шаблон, для Позиций допускающих 
вложение объектов. 

**Классы** — это иерархически структурированные примитивы, создаваемые в конечных группах, не 
содержащих другие группы. Класс, непосредственно содержащийся в группе, считается базовым Классом. 
Класс, содержащий другие Классы, считается абстрактным. Класс, порождающий Объекты, считается 
вещественным. В классах определяются правила вложенности второго уровня, Класс - Позиция, для 
Позиций допускающих вложение объектов. В классах могут определятся дополнительные строго 
типизированные произвольные свойства объектных юнитов. 

**Объекты** — это иерархически структурированные (на основе объектных свойств объектов) примитивы, 
непосредственно наследующие от классов и создаваемые в Позициях допускающих вложение объектов 
или в объектных свойствах объектов или позиций. Объект является основным и наиболее массовым 
носителем данных в Концепции. 

<h1 align="left"> Правила вложенности

<h5 align="left"> В основе поддержания организационной структуры Концепции лежат правила вложенности юнитов, 
определяющие общий замысел архитектора и ограничивающие возможности иерархического 
взаимодействия юнитов до пределов, обусловленных архитектурным решением. 

<h2 align="left"> Правила вложенности организационных юнитов

<h5 align="left"> Правила вложенности организационных юнитов имеют двухуровневою архитектуру: 

1. **Уровень прототипа позиции** - обусловлен выбранным прототипом шаблона позиции, а точнее его 
свойствами on_position и on_this, определяющими в принципе возможность вложения позиций в 
позицию шаблона, определенного на основе конкретного прототипа; 
2. **Уровень шаблона позиции** - обусловлен белым списком шаблона позиций, определяющим 
возможность вложения позиций указанных шаблонов в позиции настраиваемого шаблона; 

<h2 align="left"> Правила вложенности объектных юнитов

<h5 align="left"> Правила вложенности объектных юнитов имеют трехуровневою архитектуру: 

1. **Уровень прототипа позиции** - обусловлен выбранным прототипом шаблона позиции, а точнее его 
свойством on_object, определяющим в принципе возможность вложения объектов в позицию 
шаблона; 
2. **Уровень шаблона позиции** - обусловлен списком правил вложенности объектов “Группа - 
Шаблон”, определяющим возможность вложения объектов классов выбранных групп в позиции 
настраиваемого шаблона; 
3. **Уровень позиции** - обусловлен списком правил вложенности объектов “Класс- Позиция”, 
определяющим возможность вложения объектов классов в позиции; 

Иерархия правил вложенности имеет уточняющий характер, сложение правил осуществляется по “И”, 
правила уровней 1 и 2 являются обязательными для разрешения действия, правила уровня 3 носят 
ограничительный характер, при их отсутствии разрешение определяется сложением правил уровней 1 и 2. 

<h2 align="left"> Свойства

<h5 align="left"> В шаблонах позиций и классах могут произвольно определятся дополнительные строго типизированные 
свойства. Свойства могут быть определены как переопределяемые или не переопределяемые по значению 
в наследующих юнитах. Свойства шаблонов наследуются позициями. Свойства классов наследуются 
наследующими классами и порожденными от них объектами. 

*Простой пример:
При описании устройства полезно определить не переопределяемое по значению в объектах свойство 
“Модель” и переопределяемое свойство “Серийный номер”, в данном случае конечный пользователь, 
вносящий данные в БД, не сможет изменить данные о модели конкретного устройства, но сможет 
указать ее индивидуальный серийный номер.*

<h5 align="left"> Все свойства разделены на четыре основных типа: 

* **Пользовательское** - строго типизированное свойство с областью значений, определяемой 
выбранным типом данных свойства; 
* **Перечисление** - строго типизированное свойство с областью значений, определяемой 
предварительно созданным пользовательским перечислением; 
* **Объектное** - строго типизированное свойство с областью значений, определяемой выбранным 
абстрактным классом, в качестве значений объектного свойства выступают объекты классов, 
входящие в ветвь выбранного абстрактного класса - области значений. Объект, содержащий 
объектные свойства, считается Объектным агрегатом и подлежит исключительно единичному 
количественному учету; 
* **Ссылка** - строго типизированное свойство с областью значений, определяемой выбранной 
сущностью БД, в качестве значений ссылочного свойства выступают примитивы БД, относящиеся к 
указанной сущности. В настоящий монет доступны для связывания: пользователи, шаблоны 
позиций, свойства шаблонов позиций, позиции, свойства позиций, группы, классы, свойства 
классов, объекты и свойства объектов;

<h2 align="left"> Глобальные свойства

<h5 align="left"> Применение механизма наследования свойств позволяет автоматизировать работу со свойствами 
наследующих юнитов, однако разрозненные группы классов, содержащих идеологически родственные 
свойства, не могут быть автоматически сопоставлены в данном случае, в виду отсутствия четких критериев 
для связывания. Кроме того свойства определенные в позициях и объектах так же не могут быть 
сопоставлены между собой с использованием только механизма наследования. Для решения этой задачи 
были созданы глобальные свойства, назначение которых состоит в определении совместимости разных 
свойств и их последующей линковки. Все свойства сопоставленные с глобальным должны иметь 
одинаковое смысловое значение, совпадать по имени, описанию, типу свойства, области значений и типу 
данных. 

С глобальными свойствами в зависимости от их типа, области значений и типа данных возможно 
выполнение общих операций таких как математические действия, поиск и фильтрация по маске значения и 
т.п. 
<h1 align="left"> Куб метаданных

<h5 align="left"> Простота внесения изменений в существующие структуры данных порождает множество мелких 
изменений, вносимых архитекторами в структуру готовой Концепции. Для обеспечения исторической 
структурной целостности данных был создан “Куб метаданных” хранящий всё используемое 
существующими объектами множество мгновенных состояний классов Концепции - снимков классов. 
Каждый не удаленный из Концепции класс представлен активным состоянием (текущее состояние класса) 
используемым для порождения новых объектов и совокупностью мгновенных снимков, созданных при 
порождении существующих объектов. Таким образом все объекты несмотря на свои видимые различия 
оказывается связаны родственным классом и опираются каждый на свое мгновенное состояние. При 
необходимости любой объект может приведен к любому доступному состоянию класса. 
Таким образом, использование массива опорных снимков классов для поддержания состояния объектов 
позволяет разделить процессы модификации классов и наследования этих модификаций ранее 
созданными объектами, что обеспечивает сохранение исторической ретроспективы данных в структуре 
Концепции. 

*Простой пример:
Рассмотрим элементарный пример, изготовитель продукции изменил маркировку товара, при этом 
один и тот же по сути товар оказался с двумя маркировками до и после. Соответственно если просто 
изменить маркировку товара в классе, то все ранее внесенные товары так же получать данное 
изменение что может негативно сказаться на фискальной отчетности, возможности сопоставления 
печатных отчетов или заверенных документов, накладных и т.п. Если завести новый класс при наличии 
товара в виде складских запасов со старой маркировкой так же возникнут неудобства при 
сопоставлении экземпляров. “Куб метаданных” позволит мирно сосуществовать товарам одного вида 
с разными маркировками без каких либо, действий со стороны архитектора концепции, так как в 
данном случае каждый объект будет использовать свой снимок данных, содержащий сведения о 
маркировке, актуальные на момент создания объекта.*

<h1 align="left"> Библиотека документов
<h5 align="left"> Гибкая возможность реорганизации данных обеспечивает широкие возможности для сохранения сложной, 
многогранной информации, однако хранение информации пригодной для размещения в табличном 
пространстве БД существенно ограничивает возможности Концепций. Для полноценной Концепции 
необходимо файловое хранилище, обеспечивающее структурированное хранение электронных версий 
документов, связанных с данными Концепции. Существует множество вариантов агрегации СУБД и 
файловых серверов, однако все они требуют развертывания, настройки и администрирования 
дополнительного программного обеспечения, усложняющего сопровождение Комплекса. Использование 
системы хранения больших объектов СУБД PostreSQL так же имеет ряд недостатков, ограничивающих 
возможности и усложняющих планы резервного копирования, в том числе из-за увеличения размеров 
каталога СУБД. При создании каталога документов был разработан третий, промежуточный вариант на 
основе виртуальных таблиц, формируемых функциями API БД. Электронный документ при размещении в 
файловом каталоге обслуживаемом API БД, на стороне клиента преобразуется в байтовый массив и 
отправляется на сервер как значение ячейки таблицы bytea, при попадании на уровень API БД сервера 
байтовый массив перехватывается соответствующей функцией и сохраняется в структурированный 
файловый каталог за пределами каталога СУБД. Запрос файлов происходит в обратном направлении. 
Таким образом файловый обмен реализован без использования каталога СУБД и стороннего программного 
обеспечения, штатными функциями обмена данными СУБД PostreSQL, что существенно упрощает 
программирование файлового обмена в целевом программном интерфейсе готовой Концепции. 
<h1 align="left"> Служебные дополнения
<h2 align="left"> Правила пересчета объектов
<h5 align="left"> Количественный учет данных, одна из ключевых задач любой БД. Для решения это задачи в 
структурированной БД Конструктора концепций определены допустимые измеряемые величины: 
Для каждой измеряемой величины определены базовые правила пересчета, на основе базовых единиц 
измерения, при которых коэффициент пересчета величин равен единице. Все данные количественного 
учета объектов в таблицах БД хранятся исключительно в базовых величинах. Это обеспечивает 
возможность выполнения математических операций над количественными данными объектов, имеющими 
разные правила пересчета (с коэффициентами пересчета отличными от единицы) 
<h2 align="left"> Области значения свойств типа перечисления
<h5 align="left"> Пользовательские строго типизированные свойства практически полностью перекрывают потребность в 
создании определяемых пользователем свойств. Однако существуют ситуации, в которых требуется 
дополнительная формализация значений свойств до значений, выбираемых из выпадающего списка. 
Существует возможность поддерживать такие списки в ресурсах целевых клиентских приложений, однако 
это накладывает ряд существенных ограничений на клиентские приложения и усложняет стратегии их 
развертывания и обновления. Для преодоления вышеописанных недостатков Коструктор концепций 
предоставляет возможность создания перечислений и назначения существующих перечислений в качестве 
области значений свойств типа перечисление. 
<h1 align="left"> Экспорт данных в Excel
<h5 align="left"> Для реализации задачи экспорта данных используется библиотека python openpyxl задействованная в 
процедурах экспорта табличных данных на стороне сервера. Готовый двоичный файл Excel преобразуется в 
байтовый массив и передается клиенту как элемент виртуальной таблицы, на стороне сервера полученные 
данные сохраняются в файл экспорта. Использование данного метода существенно снижает требования к 
клиентскому хосту так как не требует наличие пакета офиса или установленных сторонних библиотек 
необходимых для обработки фалов Excel 
<h1 align="left"> Описание депонируемых материалов
<h5 align="left"> Депонируемые материалы состоят из пяти основных разделов: 

1. Графическое представление структурированного каталога БД, пакет схем; 
2. Исходные коды функций API БД на PL/pgSQL; 
3. Исходные коды клиентской библиотеки доступа (Менеджера данных), написанные на C#; 
4. Графическое представление экранных форм клиентского интерфейса (Конфигуратора концепций); 
5. Исходные коды графического клиентского интерфейса (Конфигуратора концепций), написанные на 
C#. 

<h1 align="left"> Список используемого стороннего ПО
<h5 align="left"> При создании Конструктора концепций использовано ПО сторонних авторов, распространяемое под 
общественной лицензией GNU или либеральными лицензиями для ПО с открытым исходным кодом, 
аналогичные лицензиям BSD или MIT. 
<h5 align="left">  

|Наименование ПО|Тип лицензирования|
| :----------------: | ------------------ |
| СУБД PostgreSQL  | Либеральная лицензия с открытым исходным кодом, аналогичная лицензиям BSD или MIT  |
| Библиотека доступа для платформы .Net Npgsql  | Находится под лицензией PostgreSQL, либеральной лицензией с открытым исходным кодом, одобренной OSI.Content Cell  |
 |Язык программирования Python|Python Software Foundation License (PSFL) — BSD-подобная пермиссивная лицензия на свободное ПО, совместимая с GNU General Public License (GPL)|
|.NET Framework |Регламентируется условиями лицензии ОС MS Windows. |
|openpyxl - библиотека Python| Лицензия MIT / Expat|

# Конструктор концепций

<img src="data:image/png;base64,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" />

<h1 align="center"> Реферат 
<h2 align="center">программный комплекс
<h1 align="center"> Конструктор концепций
<h3 align="center"> (Версия 2.0)



<h3 align="right"> Авторы: 
<h3 align="right"> Иванов Дмитрий Юрьевич 
<h3 align="right"> Набоков Сергей Анатольевич 
<h3 align="center"> 2020 год

<h1 align="left"> Введение


<h4 align="left"> Мы живем в мире победивших лириков и биржевой экономики беспощадно попирающих физические 
основы мироздания, в мире, где систематизация данных в общем случае сводится к автоматизации 
операций, связанных с движением средств и материально технических ресурсов от сырья через складские 
запасы к конечному продукту плюс бухгалтерский учет и налоговая отчётность, при этом огромный пласт 
задач по систематизации и учету технических, технологических, научных, социальных, природных 
процессов или процессов производства в собственном небольшом деле, остается далеко за гранью 
понимания вышеописанных систем. Это темная область, где безраздельно правит Excel и 
однопользовательские СУБД с низким порогом вхождения пользователей. Бесчисленное множество 
разрозненных данных, сведенных в электронные таблицы в попытках систематизировать, учесть, 
сохранить, сопоставить и повторить или не повторить, подготовить и передать из одной системы в другую, 
найти лучшее решение из множества доступных вариантов. Все это опыт необходимый в любом деле, 
который нужно сохранить и использовать, чтобы получить новый опыт, ибо только так можно достичь 
совершенства. 

<h1 align="left"> Конструктор концепций описание
<h4 align="left"> Конструктор концепций - представляет собой двухуровневый клиент-серверный, многопользовательский 
программный комплекс, обеспечивающий управление структурированной базой данных, посредством 
предопределенного программного интерфейса - API БД. Структурированная БД обеспечивает возможность 
конструирования древовидных иерархических структур - Концепций, создаваемых архитекторами 
(проектировщиками), систематизирующими данные произвольной предметной области в соответствии с 
принципами объектно-ориентированного подхода. Конструктор концепций обеспечивает среду для 
существования, модификации и взаимодействия с пользователями не ограниченному количеству 
Концепций на протяжении всего жизненного цикла. Предопределенная архитектура индексированного 
табличного пространства структурированной БД, совместно с API БД обеспечивает высокий уровень 
производительности для процессов доступа к данным Концепций. 
В качестве СУБД используется PostgreSQL. Комплекс состоит из следующих архитектурных элементов: 

1. **Структурированная БД** - база данных, созданная в СУБД PostgreSQL (не содержит начальных 
данных);
2. **Промежуточный API БД** - пакет функций, сформированный преимущественно на языке PL/pgSQL, 
обеспечивающий ведение структурированного каталога БД, сохранение целостности данных в 
рамках принятой идеологии, с учетом действующих ограничений и правил конкретного 
архитектурного решения, применяемого в отдельно взятой Концепции;
3. **Библиотека доступа (Менеджер данных)** - программная оболочка клиентского приложения 
написанная на C# и обеспечивающая решение вопросов сетевого взаимодействия с сервером СУДБ. 
Для построения менеджера данных использована библиотека NPGSQL. Менеджер данных 
прозрачно обеспечивает полностью асинхронное взаимодействие с БД, посредством внутреннего 
пула соединений, обеспечивающего сохранение контекста команд в асинхронном режиме;
4. **Конструктор концепций** - графический, пользовательский интерфейс, написанный на C# и 
обеспечивающий возможности визуального конструирования для архитектора концепций в 
соответствии с требованиями предметной области.
<h1 align="left"> Назначение
<h4 align="left"> Конструктор концепций предназначен для ручного или автоматизированного конструирования объектных 
иерархических структур - Концепций, систематизирующих данные произвольной предметной области в 
соответствии с принципами объектно-ориентированного подхода, в рамках выработанной архитектором 
(проектировщиком) идеологии или схемы классификации. 
<h4 align="left"> Основываясь на общепринятых принципах ООП, архитектор определяет критерии систематизации 
предметной области, основные взаимодействующие сущности, порядок их взаимного расположения и 
иерархию отношений, после определения базовых принципов описания предметной области в 
конструкторе концепций создается требуемая структура - Концепция, при этом принятые архитектором 
правила взаимодействия элементов Концепции, заданные на этапе конструирования становятся жесткими 
правилами организации данных, идеологическая целостность которых обеспечивается на уровне API БД. 

*Простой пример:*
*Рассмотрим элементарный пример, коробок спичек. Для реализации коробка спичек необходимо 
определить две ключевых сущности — это сам коробок и, собственно, спички. Для коробка так же 
необходимо определить критерий вместимости, количество спичек, которое в него возможно 
поместить и, если мы не желаем использовать коробок не по назначению необходимо указать что 
коробок может содержать только спички. Определив указанные правила в конструкторе концепций, 
мы получим объект коробок, который может содержать указанное количество спичек и ничего более. 
Таким образом конечный пользователь осуществляющий ввод и модификацию данных в рамках 
действующей концепции не сможет обойти правила, жестко заданные архитектором на этапе 
визуального конструирования.*

<h4 align="left"> Конструктор концепций инкапсулирует сложность разработки БД в многопользовательской среде, 
скрывает вопросы открытия и поддержания сессий, взаимодействия с табличными пространствами, 
снижая тем самым интеллектуальный порог вхождения в область создания и ведения сложных 
многопользовательских БД. Архитектор Концепции, должен владеть базовыми знаниями ООП и быть 
экспертом в систематизируемой предметной области. Этих навыков достаточно для создания Концепции 
любой сложности. Работа в конфигураторе концепции позволяет систематизировать собственные знания 
эксперта в предметной области и охватить весь круг вопросов, следуя по наикратчайшему пути реализации 
задуманного решения. Многопользовательская среда Конструктора обеспечивает возможность 
одновременной работы нескольких пользователей над созданием одной Концепции, систематизирующей 
данные предметной области, что существенно повышает качество конечного результата. 
<h4 align="left"> В последствии при необходимости, для реализации целевого графического интерфейса Концепции могут 
быть привлечены профессиональные программисты. При этом извечный вопрос “чего все-таки хотел 
пользователь?” на данном этапе будет иметь достаточно качественный и вполне осязаемый ответ. 
<h1 align="left"> Основные принципы 
<h4 align="left"> Создание базы данных, обеспечивающей хранение данных в соответствии с требованиями определенной 
предметной области с учетом всех возможных аспектов и тонкостей было и остается достаточно сложной 
задачей. При необходимости обеспечить возможность расширения и модификации системы хранения, 
подразумевающую внесение заранее не определенных изменений, возникающих в процессе эксплуатации 
БД и вызванных изменениями в самой предметной области или изменениями требований к структуре 
представления данных, делают эту задачу еще более сложной. При необходимости сохранения 
исторической ретроспективы, обеспечивающей преемственность данных, существующих в различных 
временных срезах и имеющих различия в структурах представления делает данную задачу практически не 
выполнимой. 
<h4 align="left">  По мнению авторов изменение требований к структурам БД является основным фактором, 
ограничивающим жизненный цикл решений и в тоже время двигателем для дальнейшего 
совершенствования способов представления данных, обеспечивающих создание новых, более гибких и 
приспособленных к быстро изменяющимся реалиям вариантов структурирования данных. Один из таких 
вариантов представлен в настоящем решении. 
<h4 align="left">  При создании конструктора концепций упор был сделан не на реализацию структуры хранения данных под 
определенную предметную область, а на создания системы хранения и модификации заранее 
неопределенных структур хранения данных, обеспечивающей их создание, модификацию, наполнение и 
ведение на протяжении всего жизненного цикла. Таким образом конструктор концепций находится на 
более высоком уровне абстракции по отношении к понятию Концепции и представляет собой среду, 
обеспечивающую существование неопределенного количества Концепций, на протяжении всего 
жизненного цикла, независимо от их внутреннего устройства. 
<h4 align="left"> Для обеспечения структурной целостности Концепций в среде реализован механизм хранения и 
поддержания правил организации данных на основе требований архитектора, для взаимодействия с 
Концепциями был разработан программный интерфейс (написанный преимущественно на языке 
PL/pgSQL), обеспечивающий все виды необходимого взаимодействия с элементами отдельных Концепций, 
в том числе: внесение, изменение, удаление данных, поиск, навигация и выполнение математических 
операция над родственными юнитами. 
<h1 align="left"> Основные понятия
<h4 align="left"> Для детального описания принципов работы Комплекса необходимо пояснить основные используемые 
понятия. Все сущности Конструктора концепция условно разделены на организационные юниты и 
объектные юниты. 
<h2 align="left"> Организационные юниты
<h4 align="left">

*Организационные юниты используются для создания древовидных структур, определяющих общую 
схему Концепции, и имеют трехуровневую архитектуру, состоящую из следующих компонентов:
*

**Прототипы шаблонов позиций** — это примитивы, определяющие базовую модель иерархического 
взаимодействия организационных юнитов, всего определено 6 прототипов шаблонов позиций. Каждый 
прототип определяет правила взаимного расположения, возможность размещения в качестве корневой 
структуры, возможность вложенности в самого себя, возможность вложенности позиций и возможности 
вложенности объектов. 

**Шаблоны позиций** — это примитивы, непосредственно наследующие от прототипов позиций в части 
модели иерархического поведения. Шаблоны позиций могут уточнять наследованную от прототипов 
модель поведения с помощью индивидуальных белых списков, исключая нежелательные в конкретном 
архитектурном решении взаимодействия. В шаблонах позиций могут определятся дополнительные строго 
типизированные произвольные свойства организационных юнитов. 

**Позиции** — это иерархически структурированные примитивы, непосредственно наследующие от шаблонов 
позиций в части модели иерархического поведения и свойств шаблонов позиций. Позиции могут 
непосредственно содержать объекты или включать их в качестве значений объектных свойств. 

**Объектные юниты**

*Объектные юниты являются основными носителями данных Концепции и имеют трехуровневую 
архитектуру, состоящую из следующих компонентов:*

**Группы** — это иерархически структурированные примитивы, определяющие организационную структуру 
классов Концепции и правила вложенности первого уровня, Группа - Шаблон, для Позиций допускающих 
вложение объектов. 

**Классы** — это иерархически структурированные примитивы, создаваемые в конечных группах, не 
содержащих другие группы. Класс, непосредственно содержащийся в группе, считается базовым Классом. 
Класс, содержащий другие Классы, считается абстрактным. Класс, порождающий Объекты, считается 
вещественным. В классах определяются правила вложенности второго уровня, Класс - Позиция, для 
Позиций допускающих вложение объектов. В классах могут определятся дополнительные строго 
типизированные произвольные свойства объектных юнитов. 

**Объекты** — это иерархически структурированные (на основе объектных свойств объектов) примитивы, 
непосредственно наследующие от классов и создаваемые в Позициях допускающих вложение объектов 
или в объектных свойствах объектов или позиций. Объект является основным и наиболее массовым 
носителем данных в Концепции. 

<h1 align="left"> Правила вложенности

<h4 align="left"> В основе поддержания организационной структуры Концепции лежат правила вложенности юнитов, 
определяющие общий замысел архитектора и ограничивающие возможности иерархического 
взаимодействия юнитов до пределов, обусловленных архитектурным решением. 

<h2 align="left"> Правила вложенности организационных юнитов

<h4 align="left"> Правила вложенности организационных юнитов имеют двухуровневою архитектуру: 

1. **Уровень прототипа позиции** - обусловлен выбранным прототипом шаблона позиции, а точнее его 
свойствами on_position и on_this, определяющими в принципе возможность вложения позиций в 
позицию шаблона, определенного на основе конкретного прототипа; 
2. **Уровень шаблона позиции** - обусловлен белым списком шаблона позиций, определяющим 
возможность вложения позиций указанных шаблонов в позиции настраиваемого шаблона; 

<h2 align="left"> Правила вложенности объектных юнитов

<h4 align="left"> Правила вложенности объектных юнитов имеют трехуровневою архитектуру: 

1. **Уровень прототипа позиции** - обусловлен выбранным прототипом шаблона позиции, а точнее его 
свойством on_object, определяющим в принципе возможность вложения объектов в позицию 
шаблона; 
2. **Уровень шаблона позиции** - обусловлен списком правил вложенности объектов “Группа - 
Шаблон”, определяющим возможность вложения объектов классов выбранных групп в позиции 
настраиваемого шаблона; 
3. **Уровень позиции** - обусловлен списком правил вложенности объектов “Класс- Позиция”, 
определяющим возможность вложения объектов классов в позиции; 

Иерархия правил вложенности имеет уточняющий характер, сложение правил осуществляется по “И”, 
правила уровней 1 и 2 являются обязательными для разрешения действия, правила уровня 3 носят 
ограничительный характер, при их отсутствии разрешение определяется сложением правил уровней 1 и 2. 

<h2 align="left"> Свойства

<h4 align="left"> В шаблонах позиций и классах могут произвольно определятся дополнительные строго типизированные 
свойства. Свойства могут быть определены как переопределяемые или не переопределяемые по значению 
в наследующих юнитах. Свойства шаблонов наследуются позициями. Свойства классов наследуются 
наследующими классами и порожденными от них объектами. 

*Простой пример:
При описании устройства полезно определить не переопределяемое по значению в объектах свойство 
“Модель” и переопределяемое свойство “Серийный номер”, в данном случае конечный пользователь, 
вносящий данные в БД, не сможет изменить данные о модели конкретного устройства, но сможет 
указать ее индивидуальный серийный номер.*

<h4 align="left"> Все свойства разделены на четыре основных типа: 

* **Пользовательское** - строго типизированное свойство с областью значений, определяемой 
выбранным типом данных свойства; 
* **Перечисление** - строго типизированное свойство с областью значений, определяемой 
предварительно созданным пользовательским перечислением; 
* **Объектное** - строго типизированное свойство с областью значений, определяемой выбранным 
абстрактным классом, в качестве значений объектного свойства выступают объекты классов, 
входящие в ветвь выбранного абстрактного класса - области значений. Объект, содержащий 
объектные свойства, считается Объектным агрегатом и подлежит исключительно единичному 
количественному учету; 
* **Ссылка** - строго типизированное свойство с областью значений, определяемой выбранной 
сущностью БД, в качестве значений ссылочного свойства выступают примитивы БД, относящиеся к 
указанной сущности. В настоящий монет доступны для связывания: пользователи, шаблоны 
позиций, свойства шаблонов позиций, позиции, свойства позиций, группы, классы, свойства 
классов, объекты и свойства объектов;

<h2 align="left"> Глобальные свойства

<h4 align="left"> Применение механизма наследования свойств позволяет автоматизировать работу со свойствами 
наследующих юнитов, однако разрозненные группы классов, содержащих идеологически родственные 
свойства, не могут быть автоматически сопоставлены в данном случае, в виду отсутствия четких критериев 
для связывания. Кроме того свойства определенные в позициях и объектах так же не могут быть 
сопоставлены между собой с использованием только механизма наследования. Для решения этой задачи 
были созданы глобальные свойства, назначение которых состоит в определении совместимости разных 
свойств и их последующей линковки. Все свойства сопоставленные с глобальным должны иметь 
одинаковое смысловое значение, совпадать по имени, описанию, типу свойства, области значений и типу 
данных. 

С глобальными свойствами в зависимости от их типа, области значений и типа данных возможно 
выполнение общих операций таких как математические действия, поиск и фильтрация по маске значения и 
т.п. 
<h1 align="left"> Куб метаданных

<h4 align="left"> Простота внесения изменений в существующие структуры данных порождает множество мелких 
изменений, вносимых архитекторами в структуру готовой Концепции. Для обеспечения исторической 
структурной целостности данных был создан “Куб метаданных” хранящий всё используемое 
существующими объектами множество мгновенных состояний классов Концепции - снимков классов. 
Каждый не удаленный из Концепции класс представлен активным состоянием (текущее состояние класса) 
используемым для порождения новых объектов и совокупностью мгновенных снимков, созданных при 
порождении существующих объектов. Таким образом все объекты несмотря на свои видимые различия 
оказывается связаны родственным классом и опираются каждый на свое мгновенное состояние. При 
необходимости любой объект может приведен к любому доступному состоянию класса. 
Таким образом, использование массива опорных снимков классов для поддержания состояния объектов 
позволяет разделить процессы модификации классов и наследования этих модификаций ранее 
созданными объектами, что обеспечивает сохранение исторической ретроспективы данных в структуре 
Концепции. 

*Простой пример:
Рассмотрим элементарный пример, изготовитель продукции изменил маркировку товара, при этом 
один и тот же по сути товар оказался с двумя маркировками до и после. Соответственно если просто 
изменить маркировку товара в классе, то все ранее внесенные товары так же получать данное 
изменение что может негативно сказаться на фискальной отчетности, возможности сопоставления 
печатных отчетов или заверенных документов, накладных и т.п. Если завести новый класс при наличии 
товара в виде складских запасов со старой маркировкой так же возникнут неудобства при 
сопоставлении экземпляров. “Куб метаданных” позволит мирно сосуществовать товарам одного вида 
с разными маркировками без каких либо, действий со стороны архитектора концепции, так как в 
данном случае каждый объект будет использовать свой снимок данных, содержащий сведения о 
маркировке, актуальные на момент создания объекта.*

<h1 align="left"> Библиотека документов
<h4 align="left"> Гибкая возможность реорганизации данных обеспечивает широкие возможности для сохранения сложной, 
многогранной информации, однако хранение информации пригодной для размещения в табличном 
пространстве БД существенно ограничивает возможности Концепций. Для полноценной Концепции 
необходимо файловое хранилище, обеспечивающее структурированное хранение электронных версий 
документов, связанных с данными Концепции. Существует множество вариантов агрегации СУБД и 
файловых серверов, однако все они требуют развертывания, настройки и администрирования 
дополнительного программного обеспечения, усложняющего сопровождение Комплекса. Использование 
системы хранения больших объектов СУБД PostreSQL так же имеет ряд недостатков, ограничивающих 
возможности и усложняющих планы резервного копирования, в том числе из-за увеличения размеров 
каталога СУБД. При создании каталога документов был разработан третий, промежуточный вариант на 
основе виртуальных таблиц, формируемых функциями API БД. Электронный документ при размещении в 
файловом каталоге обслуживаемом API БД, на стороне клиента преобразуется в байтовый массив и 
отправляется на сервер как значение ячейки таблицы bytea, при попадании на уровень API БД сервера 
байтовый массив перехватывается соответствующей функцией и сохраняется в структурированный 
файловый каталог за пределами каталога СУБД. Запрос файлов происходит в обратном направлении. 
Таким образом файловый обмен реализован без использования каталога СУБД и стороннего программного 
обеспечения, штатными функциями обмена данными СУБД PostreSQL, что существенно упрощает 
программирование файлового обмена в целевом программном интерфейсе готовой Концепции. 
<h1 align="left"> Служебные дополнения
<h2 align="left"> Правила пересчета объектов
<h4 align="left"> Количественный учет данных, одна из ключевых задач любой БД. Для решения это задачи в 
структурированной БД Конструктора концепций определены допустимые измеряемые величины: 
Для каждой измеряемой величины определены базовые правила пересчета, на основе базовых единиц 
измерения, при которых коэффициент пересчета величин равен единице. Все данные количественного 
учета объектов в таблицах БД хранятся исключительно в базовых величинах. Это обеспечивает 
возможность выполнения математических операций над количественными данными объектов, имеющими 
разные правила пересчета (с коэффициентами пересчета отличными от единицы) 
<h2 align="left"> Области значения свойств типа перечисления
<h4 align="left"> Пользовательские строго типизированные свойства практически полностью перекрывают потребность в 
создании определяемых пользователем свойств. Однако существуют ситуации, в которых требуется 
дополнительная формализация значений свойств до значений, выбираемых из выпадающего списка. 
Существует возможность поддерживать такие списки в ресурсах целевых клиентских приложений, однако 
это накладывает ряд существенных ограничений на клиентские приложения и усложняет стратегии их 
развертывания и обновления. Для преодоления вышеописанных недостатков Коструктор концепций 
предоставляет возможность создания перечислений и назначения существующих перечислений в качестве 
области значений свойств типа перечисление. 
<h1 align="left"> Экспорт данных в Excel
<h4 align="left"> Для реализации задачи экспорта данных используется библиотека python openpyxl задействованная в 
процедурах экспорта табличных данных на стороне сервера. Готовый двоичный файл Excel преобразуется в 
байтовый массив и передается клиенту как элемент виртуальной таблицы, на стороне сервера полученные 
данные сохраняются в файл экспорта. Использование данного метода существенно снижает требования к 
клиентскому хосту так как не требует наличие пакета офиса или установленных сторонних библиотек 
необходимых для обработки фалов Excel 
<h1 align="left"> Описание депонируемых материалов
<h4 align="left"> Депонируемые материалы состоят из пяти основных разделов: 

1. Графическое представление структурированного каталога БД, пакет схем; 
2. Исходные коды функций API БД на PL/pgSQL; 
3. Исходные коды клиентской библиотеки доступа (Менеджера данных), написанные на C#; 
4. Графическое представление экранных форм клиентского интерфейса (Конфигуратора концепций); 
5. Исходные коды графического клиентского интерфейса (Конфигуратора концепций), написанные на 
C#. 

<h1 align="left"> Список используемого стороннего ПО
<h4 align="left"> При создании Конструктора концепций использовано ПО сторонних авторов, распространяемое под 
общественной лицензией GNU или либеральными лицензиями для ПО с открытым исходным кодом, 
аналогичные лицензиям BSD или MIT. 
<h4 align="left">  

|Наименование ПО|Тип лицензирования|
| :----------------: | ------------------ |
| СУБД PostgreSQL  | Либеральная лицензия с открытым исходным кодом, аналогичная лицензиям BSD или MIT  |
| Библиотека доступа для платформы .Net Npgsql  | Находится под лицензией PostgreSQL, либеральной лицензией с открытым исходным кодом, одобренной OSI.Content Cell  |
 |Язык программирования Python|Python Software Foundation License (PSFL) — BSD-подобная пермиссивная лицензия на свободное ПО, совместимая с GNU General Public License (GPL)|
|.NET Framework |Регламентируется условиями лицензии ОС MS Windows. |
|openpyxl - библиотека Python| Лицензия MIT / Expat|

