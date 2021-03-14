# Прогнозирование оттока клиентов банка

## Описание проекта

Нужно спрогнозировать, уйдёт клиент из банка в ближайшее время или нет. Т.к. маркетологи посчитали: сохранять клиентов дешевле, чем привлекать новых. 
Вам предоставлены исторические данные о поведении клиентов и расторжении договоров с банком.
Необходимо построить модель с предельно большим значением F1-меры

## Описание данных

Признаки
- `RowNumber` — индекс строки в данных
- `CustomerId` — уникальный идентификатор клиента
- `Surname` — фамилия
- `CreditScore` — кредитный рейтинг
- `Geography` — страна проживания
- `Gender` — пол
- `Age` — возраст
- `Tenure` — количество недвижимости у клиента
- `Balance` — баланс на счёте
- `NumOfProducts` — количество продуктов банка, используемых клиентом
- `HasCrCard` — наличие кредитной карты
- `IsActiveMember` — активность клиента
- `EstimatedSalary` — предполагаемая зарплата

Целевой признак
- `Exited` — факт ухода клиента

## Используемые инструменты

`sklearn` `pandas` `numpy` `matplotlib`

### Модели

`DecisionTreeClassifier` `LogisticRegression` `RandomForestClassifier`

### Дополнительно

`StandardScaler` `upsample` `downsample`

### Метрики

`accuracy_score` `confusion_matrix` `recall_score` `precision_score` `f1_score` `roc_auc_score` `roc_curve`