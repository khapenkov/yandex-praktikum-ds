# (Временные ряды) Прогноз количества заказов такси на следующий час

## Описание проекта

Компания «Чётенькое такси» собрала исторические данные о заказах такси в аэропортах. 
Чтобы привлекать больше водителей в период пиковой нагрузки, нужно спрогнозировать количество заказов такси на следующий час. 
Постройте модель для такого предсказания.
Значение метрики RMSE на тестовой выборке должно быть не больше 48.

## Описание данных

Количество заказов находится в столбце `num_orders`

## Используемые инструменты

`TimeSeriesSplit` `catboost` `lightgbm` `statsmodels` `sklearn` `pandas` `numpy` `matplotlib` `plotly` `math` `time`

### Модели

`LGBMRegressor` `CatBoostRegressor` `Lasso` `Ridge` `LinearRegression` `RandomForestRegressor`

### Дополнительно

`TimeSeriesSplit` `seasonal_decompose` `StandardScaler` `GridSearchCV`

### Метрики

`MSE` `RMSE`