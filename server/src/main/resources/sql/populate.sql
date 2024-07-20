INSERT INTO Usuarios (Nombre, Correo, Contrasena) VALUES 
('Bruno Díaz', 'bruno.diaz@example.com', '$2a$10$8shuhd1bHHmn3Hs1XTYAq.5xvS0PmlzCBYYx.5Ck4tA2uLmylOo8u'),
('Maria Gomez', 'maria.gomez@example.com', '$2a$10$w4xRzMlZCttI37DSKGfHrOcnXk5OUsLTAjUIY9WS08.RhoFBw1BPS'),
('Carlos Ruiz', 'carlos.ruiz@example.com', '$2a$10$S/s28BnKGvztwJTp2NAIjeudhrXWEDpfFRWiVP1BC6hWkdSdq7L8K');

INSERT INTO Libros (Titulo, Autor, Descripcion, Genero, Imagen_Portada, Fecha_Publicacion, Etiquetas, UsuarioID) VALUES 
('El Quijote', 'Miguel de Cervantes', 'Una novela clásica sobre un hidalgo y su escudero', 'Novela', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1605', 'clásico, aventura', 1),
('Cien Años de Soledad', 'Gabriel Garcia Marquez', 'Una obra maestra de realismo mágico', 'Realismo mágico', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1967', 'realismo mágico, épico', 2),
('La Sombra del Viento', 'Carlos Ruiz Zafón', 'Un libro sobre libros y el amor por la literatura', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '2001', 'misterio, drama', 3),
('1984', 'George Orwell', 'Una distopía sobre el totalitarismo y la vigilancia', 'Distopía', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1949', 'distopía, política', 1),
('To Kill a Mockingbird', 'Harper Lee', 'Una historia sobre racismo e injusticia en el sur de Estados Unidos', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1960', 'racismo, justicia', 2),
('Pride and Prejudice', 'Jane Austen', 'Una novela romántica sobre el matrimonio y las clases sociales', 'Romance', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1813', 'romance, sociedad', 3),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Una crítica a la sociedad americana de los años 20', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1925', 'sociedad, sueño americano', 1),
('Moby Dick', 'Herman Melville', 'La historia de la caza de una gran ballena blanca', 'Aventura', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1851', 'aventura, mar', 2),
('War and Peace', 'Leo Tolstoy', 'Un extenso relato sobre la vida en la Rusia napoleónica', 'Histórico', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1869', 'histórico, épico', 3),
('The Catcher in the Rye', 'J.D. Salinger', 'Una historia sobre la adolescencia y la alienación', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1951', 'adolescencia, alienación', 1),
('Brave New World', 'Aldous Huxley', 'Una distopía sobre un futuro controlado por la tecnología y la genética', 'Distopía', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1932', 'distopía, tecnología', 2),
('The Hobbit', 'J.R.R. Tolkien', 'La aventura de Bilbo Baggins en la Tierra Media', 'Fantasía', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1937', 'fantasía, aventura', 3),
('Fahrenheit 451', 'Ray Bradbury', 'Una distopía sobre un futuro donde los libros están prohibidos', 'Distopía', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1953', 'distopía, censura', 1),
('Crime and Punishment', 'Fyodor Dostoevsky', 'La lucha de un hombre con la culpa y la moralidad', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1866', 'crimen, moralidad', 2),
('Anna Karenina', 'Leo Tolstoy', 'Una tragedia sobre el amor y la sociedad en la Rusia imperial', 'Romance', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1878', 'romance, tragedia', 2),
('The Grapes of Wrath', 'John Steinbeck', 'La lucha de una familia durante la Gran Depresión', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1939', 'gran depresión, lucha', 3),
('Jane Eyre', 'Charlotte Bronte', 'La vida y desafíos de una mujer huérfana', 'Ficción', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1847', 'romance, independencia', 1),
('The Lord of the Rings', 'J.R.R. Tolkien', 'La épica lucha entre el bien y el mal en la Tierra Media', 'Fantasía', 'https://static.vecteezy.com/system/resources/previews/000/267/734/non_2x/red-book-cover-isolated-on-white-vector.jpg', '1954', 'fantasía, épico', 2);