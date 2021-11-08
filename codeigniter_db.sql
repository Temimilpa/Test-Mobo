-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2021 a las 02:45:23
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `codeigniter_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `type`, `status`, `created_at`) VALUES
(1, 'Technical', 1, 'blog', 0, '2017-07-31 15:03:14'),
(2, 'Business', 1, 'blog', 0, '2017-07-31 15:03:14'),
(4, 'Celulares', 3, 'product', 1, '2017-08-10 14:49:47'),
(5, 'Smartwaches', 3, 'product', 1, '2017-08-10 14:51:38'),
(6, 'FAQ Category Onee', 1, 'faq', 1, '2017-08-14 15:00:07'),
(7, 'FAQ Category two', 1, 'faq', 1, '2017-08-14 15:11:39'),
(8, 'Protectores para Celular', 1, 'product', 1, '2021-11-06 21:20:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costo_envio`
--

CREATE TABLE `costo_envio` (
  `id_costo_envio` int(11) NOT NULL,
  `costo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `costo_envio`
--

INSERT INTO `costo_envio` (`id_costo_envio`, `costo`) VALUES
(1, '499');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `zipcode` varchar(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id_customer`, `name`, `username`, `email`, `password`, `zipcode`, `date`) VALUES
(1, 'Manuel Flores', 'manuel_flores', 'manuel_flores@gmail.com', '12345', '54760', '2021-11-06 14:59:47'),
(2, 'Alejandro Martínez', 'alex_martinez', 'alex_martinez@yahoo.com', '12345', '54761', '2021-11-06 14:59:47'),
(3, 'gabo', '', '', '', '', '2021-11-07 22:01:49'),
(4, '', '', '', '', '', '2021-11-07 22:28:22'),
(5, '', '', '', '', '', '2021-11-07 22:29:00'),
(6, '', '', '', '', '', '2021-11-07 22:29:31'),
(7, '', '', '', '', '', '2021-11-07 23:24:19'),
(8, '', '', '', '', '', '2021-11-07 23:24:37'),
(9, '', '', '', '', '', '2021-11-07 23:24:52'),
(10, '', '', '', '', '', '2021-11-07 23:29:31'),
(11, '', '', '', '', '', '2021-11-07 23:30:41'),
(12, '', '', '', '', '', '2021-11-07 23:31:08'),
(13, '', '', '', '', '', '2021-11-07 23:32:13'),
(14, 'Gabriel Prueba', '', '', '', '', '2021-11-08 00:11:57'),
(15, 'gabo pruebas', '', '', '', '', '2021-11-08 00:13:32'),
(16, 'Jorge Luna', '', '', '', '', '2021-11-08 00:20:05'),
(17, 'German Solis', '', '', '', '', '2021-11-08 00:21:12'),
(18, 'Prueba final', '', '', '', '', '2021-11-08 00:29:52'),
(19, 'gabo', '', '', '', '', '2021-11-08 00:30:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `sub-total` float NOT NULL,
  `envio` int(11) NOT NULL,
  `total` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id_order`, `id_customer`, `sub-total`, `envio`, `total`, `date`) VALUES
(1, 1, 1000, 0, 1000, '2021-11-06 14:43:02'),
(2, 2, 2000, 0, 2000, '2021-11-06 14:43:02'),
(3, 3, 9897, 0, 9897, '2021-11-08 05:01:49'),
(4, 4, 9897, 0, 9897, '2021-11-08 05:28:22'),
(5, 5, 0, 300, 0, '2021-11-08 05:29:00'),
(6, 6, 8798, 0, 8798, '2021-11-08 05:29:31'),
(7, 7, 7728, 0, 7728, '2021-11-08 06:24:19'),
(8, 8, 0, 300, 0, '2021-11-08 06:24:37'),
(9, 9, 429, 300, 429, '2021-11-08 06:24:52'),
(10, 10, 429, 300, 729, '2021-11-08 06:29:31'),
(11, 11, 429, 300, 729, '2021-11-08 06:30:41'),
(12, 12, 6599, 0, 6599, '2021-11-08 06:31:08'),
(13, 13, 1129, 0, 1129, '2021-11-08 06:32:13'),
(14, 14, 858, 0, 858, '2021-11-08 07:11:57'),
(15, 15, 6599, 0, 6599, '2021-11-08 07:13:32'),
(16, 16, 7728, 0, 7728, '2021-11-08 07:20:05'),
(17, 17, 1898, 0, 1898, '2021-11-08 07:21:12'),
(18, 18, 1129, 0, 1129, '2021-11-08 07:29:52'),
(19, 19, 6599, 0, 6599, '2021-11-08 07:30:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `user_id`, `post_image`, `body`, `status`, `created_at`) VALUES
(4, 'Lorem Ipsum Blog', 'lorem-ipsum-blog', 2, 2, 'minions01.jpg', '<p><em><strong>Lorem Ipsum</strong></em> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 1, '2017-08-01 15:51:21'),
(5, 'Blog Post Four', 'blog-post-four', 1, 1, 'Hydrangeas.jpg', '<p><span style=\"font-family:Courier New,Courier,monospace\">Curabitur molestie justo eget augue fringilla, vitae finibus enim euismod. Aenean commodo urna turpis, sed cursus est egestas at. Ut ut convallis enim. Donec elementum, sem ac consequat iaculis, eros dolor porta justo, eu faucibus est nunc ut risus. Sed vulputate elementum elit vel posuere. Nunc vel aliquam enim. Curabitur viverra, velit eu sagittis vulputate, libero eros varius libero, eget tristique felis neque eget erat. Maecenas condimentum commodo nunc, eget malesuada lorem imperdiet in. Phasellus imperdiet tempor arcu, et hendrerit orci malesuada sed. Vivamus ultricies suscipit faucibus. Suspendisse sollicitudin quis ipsum at semper. Donec quis augue vel nibh condimentum laoreet eu ac sapien. Pellentesque ex enim, placerat et porta sit amet, finibus vel felis. Vivamus mollis euismod nisl, at accumsan leo. Ut fermentum lacus quis sagittis elementum. Aenean velit nunc, aliquet a lorem vestibulum, consectetur malesuada felis. </span></p>\r\n', 1, '2017-08-03 14:25:28'),
(6, 'Lorem Ipsum Blog Post', 'lorem-ipsum-blog-post', 3, 1, 'Jellyfish.jpg', '<p><em>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc</em>.</p>\r\n', 1, '2017-08-03 15:56:07'),
(7, 'Blog Post New', 'blog-post-new', 1, 2, 'noimage.jpg', '<p><span style=\"font-family:Times New Roman,Times,serif\"><em>Aliquam sed ornare dui. In sollicitudin dolor a varius venenatis. Nam eu purus id felis venenatis dictum sit amet eu neque. Sed congue tortor egestas, volutpat nisl ac, congue nunc. Fusce ut euismod massa, ornare scelerisque dui. Mauris vitae lectus eu lacus sagittis sodales at et enim. Suspendisse nisl lacus, imperdiet eget congue ut, sodales vel ex. Nam ut faucibus dui, vel fringilla leo. Duis laoreet, ex non ultricies molestie, justo erat scelerisque mauris, ut tristique sapien nisi sit amet velit. Quisque pulvinar lectus odio. Donec a nulla sed dui blandit ultrices eu et libero.</em></span></p>\r\n', 1, '2017-08-03 15:59:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `save_price` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `img_alt_tag` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `tag` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_tag` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `user_id`, `cat_id`, `sku`, `name`, `quantity`, `price`, `save_price`, `color`, `image`, `img_alt_tag`, `short_description`, `description`, `tag`, `size`, `datetime`, `status`, `meta_title`, `meta_tag`, `meta_desc`) VALUES
(3, 1, 8, 'FERPRTSILIRJOIPH11', 'Protector Ferrari Silicone iPhone 11 Rojo', '10', '429', '0', 'Rojo', 'protectorferrari.png', '', 'Rojo', '<ul>\r\n	<li><strong>Diseño ultra delgado</strong> que bridan <strong>resistencia contra impactos</strong> </li>\r\n	<br />\r\n	<li>Su <strong>material flexible</strong> lo hace más <strong>resistente al uso</strong></li>\r\n	<br />\r\n	<li><strong>El grosor de los bordes ayuda a absorber los golpes por caídas</strong></li>\r\n	<br />\r\n	<li>El <strong>relieve que sobresale de la pantalla</strong> protege contra golpes, <strong>mantiene sujeto tu celular</strong> evitando que salga expulsado</li>\r\n	<br />\r\n	<li>Su <strong>diseño interior</strong> <strong>cuida</strong> tu celular <strong>de rayaduras</strong></li>\r\n	<br />\r\n	<li>Es <strong>compatible con carga inalámbrica</strong></li>\r\n	<br />\r\n	<li>Los<strong> botones suaves </strong>permiten<strong> presionar </strong>de <strong>manera precisa</strong></li>\r\n</ul>\r\n', 'protectores', 'iphone 11', '2021-11-07 00:44:49', 0, 'Protector Ferrari Silicone iPhone 11 Rojo', 'Protector Ferrari Silicone iPhone 11 Rojo', ''),
(4, 1, 4, 'TMOTG50AZL', 'Teléfono Celular Motorola Moto G50 Azul', '10', '6599', '0', 'Azul', 'motorola.png', '', 'Azul', '<p>El <strong>Motorola Moto G50</strong> es un smartphone Android con una pantalla HD+ de 6.5 pulgadas. Por dentro, encontramos un procesador Snapdragon 480 de Qualcomm que provee conectividad 5G, acompañado de <strong>4GB</strong> de memoria RAM, con opciones de <strong>64 GB o 128 GB</strong> de almacenamiento interno expandible vía microSD. En cuanto a fotografía, <strong>el Moto G50</strong> cuenta con una cámara triple como principal, con lentes de <strong>48MP, 5MP y 2MP</strong>, y su cámara frontal para selfies es de <strong>13 megapixels</strong>. Completando las características del <strong>Motorola Moto G50</strong> encontramos una batería de <strong>5000 mAh</strong> de carga rápida, lector de huellas, y Android 11 a bordo.</p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Pantalla:</strong> 6.5\", 720 x 1600 pixels<br />\r\n<strong>Procesador:</strong> Snapdragon 480 5G 2.0GHz<br />\r\n<strong>RAM:</strong> 4GB<br />\r\n<strong>Almacenamiento:</strong> 64GB/128GB<br />\r\n<strong>Expansión:</strong> microSD<br />\r\n<strong>Cámara:</strong> Triple, 48MP+8MP+2MP<br />\r\n<strong>Batería:</strong> 5000 mAh<br />\r\n<strong>OS</strong>: Android 11</p>\r\n', 'celulares', 'Pantalla: 6.5', '2021-11-06 23:22:53', 1, '', '', ''),
(5, 1, 8, 'HUASWMBAND6NRJ', 'Pulsera Inteligente Huawei Band 6 Naranja', '10', '1129', '0', 'Naranja', 'pulserahuawei.png', '', 'Naranja', '<p><strong>El cuidado de tu salud</strong></p>\r\n\r\n<p><strong>Color Negro</strong></p>\r\n\r\n<p><strong>Pantalla FullView</strong> de 1.47\" pulgadas</p>\r\n\r\n<p><strong>Úsala</strong> hasta por <strong>dos semanas seguidas</strong></p>\r\n\r\n<p>Su <strong>carga rápida inalámbrica</strong> de <strong>5 minutos te permite usarla por dos días</strong></p>\r\n\r\n<p>Cuenta con <strong>96 modos de entrenamiento</strong></p>\r\n\r\n<p>Puedes <strong>revisar tu oxigenación sanguínea</strong></p>\r\n\r\n<p><strong>Monitorea tu ritmo cardíaco</strong> después de actividades físicas</p>\r\n\r\n<p>Tiene una función<strong> especial</strong> de seguimiento de <strong>ciclo menstrual</strong></p>\r\n\r\n<p><strong>Establece tus objetivos</strong> de tu actividad física favorita</p>\r\n\r\n<p><strong>Controla tu música</strong> desde la pulsera</p>\r\n\r\n<p><strong>Revisa notificaciones</strong> y <strong>responde llamadas</strong></p>\r\n\r\n<p><strong>Consulta el clima</strong> de todos los días</p>\r\n\r\n<p><strong>Toma fotos</strong> con la función de cámara</p>\r\n', 'smartwaches', 'Pantalla FullView de 1.47', '2021-11-06 23:22:38', 1, '', '', ''),
(8, 1, 5, 'XIASMWBAND5MINGO', 'Pulsera Inteligente Xiaomi Mi Smart Band 5 Negro', '10', '799', '0', 'Negro', 'pulseraxiaomi.png', '', 'Negro', '<p><strong>Combina tu salud con tecnología</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Pantalla a color 1.1</strong></li>\r\n	<li><strong>Resolución de pantalla:</strong> 126 x 294 px</li>\r\n	<li>Hasta <strong>14 días de uso</strong></li>\r\n	<li>Hasta <strong>2 horas de carga</strong></li>\r\n	<li><strong>Cargador magnético</strong></li>\r\n	<li><strong>Memoria RAM:</strong> 512 KB</li>\r\n	<li><strong>Memoria flash:</strong> 16 MB</li>\r\n	<li><strong>Brillo ajustable</strong></li>\r\n	<li>Más de <strong>100 carátulas temáticas</strong></li>\r\n	<li><strong>11 modos deportivos</strong>\r\n	<ul>\r\n		<li>Carrera</li>\r\n		<li>Caminar</li>\r\n		<li>Andar</li>\r\n		<li>Bicicleta</li>\r\n		<li>Piscina</li>\r\n		<li>Saltar la cuerda</li>\r\n		<li>Remo</li>\r\n		<li>Yoga</li>\r\n		<li>Entre otros</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>Resistente al agua</strong></li>\r\n	<li><strong>Entrenamiento de respiración</strong></li>\r\n	<li><strong>Sensor de frecuencia cardiaca</strong></li>\r\n	<li><strong>Monitor de sueño</strong></li>\r\n	<li><strong>Monitor de presión arterial</strong></li>\r\n	<li><strong>Índice de vitalidad</strong></li>\r\n	<li><strong>Control del ciclo menstrual</strong></li>\r\n	<li><strong>Control de la cámara del móvil</strong></li>\r\n	<li><strong>Conexión Bluetooth</strong> versión 5.0 BLE</li>\r\n	<li><strong>Compatible</strong> con <strong>iOS y Android</strong></li>\r\n</ul>\r\n', 'smartwaches', 'Pantalla a color 1.1', '2021-11-06 23:22:26', 1, '', '', ''),
(9, 1, 4, 'TSNGRABIPH864PNGO', 'Telefono Reacondicionado iPhone 8 Plus Negro 64 Gb', '10', '7999', '0', 'Negro', 'iphone.png', '', 'Negro', '<p><strong>Tu nuevo iPhone</strong></p>\r\n\r\n<p> </p>\r\n\r\n<ul><br />\r\n	<li><strong>Color Negro</strong></li>\r\n	<br />\r\n	<li><strong>Pantalla HD 5.5 pulgadas</strong></li>\r\n	<br />\r\n	<li><strong>Resolución</strong> 1,080 x 1,920 px</li>\r\n	<br />\r\n	<li><strong>Sensor</strong> de <strong>huella dactilar</strong></li>\r\n	<br />\r\n	<li><strong>Memoria RAM</strong> 3 GB</li>\r\n	<br />\r\n	<li><strong>Memoria ROM</strong> 64 GB</li>\r\n	<br />\r\n	<li><strong>Sistema operativo</strong> iOS 12</li>\r\n	<br />\r\n	<li><strong>Bluetooth</strong> versión 4.2</li>\r\n	<br />\r\n	<li><strong>Cámara dual trasera</strong> 12 megapixeles</li>\r\n	<br />\r\n	<li><strong>Cámara frontal</strong> 7 megapixeles</li>\r\n	<br />\r\n	<li><strong>Protección contra agua</strong> IP-67</li>\r\n	<br />\r\n	<li><strong>Capacidad de batería</strong> 2,900 mAh</li>\r\n</ul>\r\n', 'celulares', 'iPhone 8 Plus Negro 64 Gb', '2021-11-07 00:48:07', 1, '', '', ''),
(12, 1, 8, 'PRTORGNGTRAIPH13PMX', 'Protector Incipio Organicore iPhone 13 Pro Max Negro/Transparente', '10', '1099', '0', 'transparente', 'incipio.png', '', 'transparente', '<p><strong>La protección para el planeta y tu celular</strong></p>\r\n\r\n<p> </p>\r\n\r\n<ul><br />\r\n	<li>Está <strong>fabricado de materiales 100% biodegradables</strong> que se disculven en menor tiempo al desecharlo correctamente en un ambiente compostable.</li>\r\n	<br />\r\n	<li>Su diseño <strong>está probado contra caídas</strong>, <strong>soporta golpes de hasta 8 pies de altura</strong>, por lo que tu celular tendrá una <strong>mayor protección</strong>.</li>\r\n	<br />\r\n	<li>Es <strong>compatible con MagSafe de Apple</strong> y otros <strong>cargadores inalámbricos</strong>.</li>\r\n	<br />\r\n	<li>Sus <strong>bordes gruesos,</strong> <strong>protegen de golpes por caídas y evitan que el material interior salga</strong></li>\r\n	<br />\r\n	<li><strong>Los bordes cuentan</strong> con un <strong>relieve que rebasa la pantalla para evitar rayaduras o golpes</strong> en caso de caídas</li>\r\n	<br />\r\n	<li><strong>Los botones son suaves</strong> para poder <strong>usarlos sin dificultad</strong></li>\r\n</ul>\r\n', 'protectores', ' iPhone 13 Pro Max', '2021-11-06 23:27:37', 1, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_orders`
--

CREATE TABLE `products_orders` (
  `id_product_order` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `products_orders`
--

INSERT INTO `products_orders` (`id_product_order`, `id_order`, `id_product`) VALUES
(1, 3, 8),
(2, 3, 9),
(3, 3, 12),
(4, 4, 8),
(5, 4, 9),
(6, 4, 12),
(7, 6, 9),
(8, 6, 8),
(9, 7, 4),
(10, 7, 5),
(11, 9, 3),
(12, 10, 3),
(13, 11, 3),
(14, 12, 4),
(15, 13, 5),
(16, 14, 3),
(17, 14, 3),
(18, 15, 4),
(19, 16, 4),
(20, 16, 5),
(21, 17, 12),
(22, 17, 8),
(23, 18, 5),
(24, 19, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `file_name`) VALUES
(6, 1, 'tshirts2.jpg'),
(7, 1, 'tshirt.jpg'),
(8, 1, 'imagesaaaa.jpg'),
(9, 1, 'imagesaa.jpg'),
(10, 2, 'bd2_6f5_636_330-1-original.jpg'),
(11, 2, 'command.png'),
(12, 2, 'yyyy.jpg'),
(13, 2, 'yy.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `logo_img` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `site_config`
--

INSERT INTO `site_config` (`id`, `site_name`, `logo_img`, `site_title`) VALUES
(1, 'E commerce Site', 'yadi-ci-logo.png', 'E commerce Site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `username`, `contact`, `address`, `gender`, `image`, `role_id`, `zipcode`, `dob`, `status`, `register_date`) VALUES
(1, 'Administrator', 'gabrieltemi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '5547685303', 'Mexico', 'Male', '1556403826363.jpg', 1, '54769', '1985-06-27', 1, '2021-11-06 03:29:41'),
(10, 'Gabriel Temimilpas', 'gabrieltemi2@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'gabrieltemi', '5547685303', 'Mexico', 'Male', '1556403826363.jpg', 2, '54769', '27061985', 1, '2021-11-06 04:01:24'),
(12, 'Giovanna Vazquez', 'giovazquez@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'giovazquez', '5547896325', 'Mexico', 'Female', 'noimage.jpg', 1, '54236', '1985-06-27', 1, '2021-11-08 08:12:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `costo_envio`
--
ALTER TABLE `costo_envio`
  ADD PRIMARY KEY (`id_costo_envio`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`user_id`);

--
-- Indices de la tabla `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id_product_order`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `costo_envio`
--
ALTER TABLE `costo_envio`
  MODIFY `id_costo_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id_product_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
