# Lesson-5

## Home work: 

* Реализовать профиль пользователя из инстаграмма.   
**a)** Верхняя шапка с инфой до кнопки "Редактировать профиль"  
**b)** Истории не нужны   
**c)** Отображение фоток только в виде сетки в 3 столбца, т.е. чтобы UICollectionView, который использовали на паре.   
**d)** По нажатии открывать детальную картинку просто на новом экране с Modal переходом в норм размере.  
* Проект строим на основне паттерна MVC, не забывая про комментарии всех методов, моделей, Mark-и ну и все остальное насчет синтаксиса и нейминга.
* Информацию о пользователе, фотки возвращать через методы с completion block-ом из условного DataManager-а.
* Данные для одной ячейки UICollectionView возвращать с помощью блока, он должен уметь принимать indexPath.item и возвращать объект из вашего массива с объектами
* Верстка полностью на Autolayouts