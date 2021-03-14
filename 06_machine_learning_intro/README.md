# Рекомендация тарифов

## Описание проекта

Необходимо построить систему, способную проанализировать поведение клиентов, давно не меняющих тарифные планы, и предложить пользователям новый тариф, отвечающий их предпочтениям.
Есть данные о поведении клиентов, которые уже перешли на эти тарифы. Нужно построить модель для задачи классификации, которая выберет подходящий тариф. 
Предобработка данных не понадобится, т.к. была сделана в рамках [другого проекта](../04_statistical_data_analysis/statistical_data_analysis.ipynb).

## Описание данных

- `сalls` — количество звонков,
- `minutes` — суммарная длительность звонков в минутах,
- `messages` — количество sms-сообщений,
- `mb_used` — израсходованный интернет-трафик в Мб,
- `is_ultra` — каким тарифом пользовался в течение месяца

## Используемые инструменты

`sklearn` `pandas` `numpy`

### Используемые модели

`DecisionTreeClassifier` `LogisticRegression` `RandomForestClassifier`