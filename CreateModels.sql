USE DB_BOOKS;

INSERT INTO Authors (Name_author, Birthday) VALUES ('Антон Чехов', '18600129');
INSERT INTO Authors (Name_author, Birthday) VALUES ('Александр Сергеевич Пушкин', '17990606');
INSERT INTO Authors (Name_author, Birthday) VALUES ('Сергей Есенин', '18951003');
INSERT INTO Authors (Name_author, Birthday) VALUES ('Фёдор Михайлович Достоевский', '18211111');
INSERT INTO Authors (Name_author, Birthday) VALUES ('Лев Николаевич Толстой', '17990606');
INSERT INTO Authors (Name_author, Birthday) VALUES ('Николай Васильевич Гоголь', '18090401');

INSERT INTO Publishing_house (City, Publish) VALUES ('Москва', 'Эксмо');
INSERT INTO Publishing_house (City, Publish) VALUES ('Санкт-Петербург', 'Азбука');
INSERT INTO Publishing_house (City, Publish) VALUES ('Санкт-Петербург', 'Речь');
INSERT INTO Publishing_house (City, Publish) VALUES ('Уфа', 'Уфа');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (1, 1, 320, 'Капитанская дочка');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (1, 3, 320, 'Евгений Онегин');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (2, 1, 288, 'Стихотворения');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (2, 2, 288, 'Исповедь хулигана');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (3, 1, 592, 'Преступление и наказание');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (3, 1, 640, 'Идиот');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (3, 1, 608, 'Бесы');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (3, 2, 416, 'Белые ночи');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (4, 3, 768, 'Война и мир. том 1');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (4, 3, 800, 'Война и мир. том 2');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (4, 3, 416, 'Детство. Отрочество. Юность');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (4, 2, 864, 'Анна Каренина');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (5, 3, 80, 'Шинель');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (5, 2, 352, 'Мертвые души');
INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (5, 1, 256, 'Вечера на хуторе близ Диканьки');

INSERT INTO Books (Code_author, Code_publish, Pages, Title_Book) VALUES (NULL, NULL, 80, 'Неизвестная книга');

INSERT INTO Deliveries (Name_delivery, Name_company, Address, Phone, INN) VALUES ('Репин Дмитрий Евгеньевич', 'Читай-город', '127322, г. Москва, Огородный проезд, д.20, стр.27, помещение 14', '4954248444', '7710422909')
INSERT INTO Deliveries (Name_delivery, Name_company, Address, Phone, INN) VALUES ('Булич Илона Вячеславовна', 'Лабиринт', '129626, г. Москва, ул. Маломосковская, д. 22, стр. 1, этаж цокольный, пом. 1, ком 62', '4957339174', '7728644571')
INSERT INTO Deliveries (Name_delivery, Name_company, Address, Phone, INN) VALUES ('Хабибов Ильфат Завзятович', 'Планета Книги', '450059, г. Уфа, пр. Октября, 33/2', '8005000338', '027811349542')

INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (1, 1, 1, 246, '20231115', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (512, 1, 2, 516, '20231115', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (100, 3, 2, 748, '20231116', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (50, 2, 3, 784, '20231116', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (2, 3, 3, 479, '20231116', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (100, 2, 2, 748, '20231116', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (50, 3, 3, 784, '20231117', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (2, 3, 3, 479, '20231118', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (74, 4, 2, 156, '20231119', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (22, 4, 1, 438, '20231120', 0)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (2, 5, 1, 187, '20231121', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (2, 5, 1, 452, '20231122', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (4, 6, 3, 782, '20231122', 1)
INSERT INTO Purchases (Amount, Code_book, Code_delivery, Cost, Date_order, Type_purchase) VALUES (5, 7, 3, 145, '20231123', 1)