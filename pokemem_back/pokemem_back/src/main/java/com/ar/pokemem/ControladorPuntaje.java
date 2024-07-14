package com.ar.pokemem;

// Importaciones necesarias para la clase Controlador
import com.fasterxml.jackson.databind.ObjectMapper; // Importación de ObjectMapper de Jackson para convertir objetos Java a JSON y viceversa
import javax.servlet.ServletException; // Importación de ServletException para manejar excepciones relacionadas con Servlets
import javax.servlet.annotation.WebServlet; // Importación de WebServlet para la anotación que mapea este servlet a una URL específica
import javax.servlet.http.HttpServlet; // Importación de HttpServlet para extender esta clase y manejar peticiones HTTP
import javax.servlet.http.HttpServletRequest; // Importación de HttpServletRequest para manejar las solicitudes HTTP
import javax.servlet.http.HttpServletResponse; // Importación de HttpServletResponse para manejar las respuestas HTTP
import java.io.IOException; // Importación de IOException para manejar excepciones de entrada/salida
import java.sql.*; // Importación de todas las clases JDBC para operaciones de base de datos
import java.util.ArrayList; // Importación de ArrayList para manejar listas dinámicas de objetos
import java.util.List; // Importación de List para manejar colecciones de elementos

// Clase Controlador: Maneja las peticiones HTTP para insertar y recuperar usuarios.
@WebServlet("/puntaje") // Anotación que mapea este servlet a la URL "/usuario"
public class ControladorPuntaje extends HttpServlet { // Declaración de la clase Controlador que extiende HttpServlet
    public Integer id = 1;
    // Método POST para insertar una nueva película desde una solicitud JSON
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "*"); // Permitir acceso desde cualquier origen
        response.setHeader("Access-Control-Allow-Methods", "*"); // Métodos permitidos
        response.setHeader("Access-Control-Allow-Headers", "Content-Type"); // Cabeceras permitidas
        Conexion conexion = new Conexion();  // Crear una nueva conexión a la base de datos
        Connection conn = conexion.getConnection();  // Obtener la conexión establecida

        try {
            ObjectMapper mapper = new ObjectMapper();  // Crear un objeto ObjectMapper para convertir JSON a objetos Java
            Puntaje puntaje = mapper.readValue(request.getInputStream(), Puntaje.class);  // Convertir el JSON de la solicitud a un objeto Pelicula
            
            System.out.println(puntaje);
            
            // Consulta SQL para insertar una nueva película en la tabla 'peliculas'
            String query = "INSERT INTO puntaje_usuario (id_usuario, fecha, puntaje) VALUES (?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);  // Indicar que queremos obtener las claves generadas automáticamente

            // Establecer los parámetros de la consulta de inserción
            statement.setInt(1, puntaje.getId_usuario());
            statement.setString(2, puntaje.getFecha());
            statement.setInt(3, puntaje.getPuntaje());
        
            statement.executeUpdate();  // Ejecutar la consulta de inserción en la base de datos
        
            // Obtener las claves generadas automáticamente (en este caso, el ID del usuario)
            ResultSet rs = statement.getGeneratedKeys();
            if (rs.next()) {
                Long idUser = rs.getLong(1);  // Obtener el valor del primer campo generado automáticamente (en este caso, el ID)
                
                // Devolver el ID de la película insertada como JSON en la respuesta
                response.setContentType("application/json");  // Establecer el tipo de contenido de la respuesta como JSON
                String json = mapper.writeValueAsString(idUser);  // Convertir el ID a formato JSON
                response.getWriter().write(json);  // Escribir el JSON en el cuerpo de la respuesta HTTP
            }

            response.setStatus(HttpServletResponse.SC_CREATED);  // Configurar el código de estado de la respuesta HTTP como 201 (CREATED)
        } catch (SQLException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas con la base de datos
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } catch (IOException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas de entrada/salida (por ejemplo, problemas con la solicitud o respuesta HTTP)
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } finally {
            conexion.close();  // Cerrar la conexión a la base de datos al finalizar la operación
        }
        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Configurar cabeceras CORS
        response.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5500"); // Permitir acceso desde cualquier origen
        response.setHeader("Access-Control-Allow-Methods", "*"); // Métodos permitidos
        response.setHeader("Access-Control-Allow-Headers", "Content-Type"); 
        Conexion conexion = new Conexion();  // Crear una nueva conexión a la base de datos
        Connection conn = conexion.getConnection();  // Obtener la conexión establecida

        
        try {
           // ObjectMapper mapper = new ObjectMapper();  // Crear un objeto ObjectMapper para convertir JSON a objetos Java
         //   Usuario usuario = mapper.readValue(request.getInputStream(), Usuario.class);  // Convertir el JSON de la solicitud a un objeto Pelicula
         String user = request.getParameter("usuario");
		 Integer usuario=Integer.parseInt(user) ;
         System.out.println(usuario);
            // Consulta SQL para seleccionar todas las películas de la tabla 'peliculas'
            String query = "SELECT id_usuario, max(puntaje), sum(puntaje), max(fecha) FROM puntaje_usuario where id_usuario=? group by id_usuario";
           
            PreparedStatement statement = conn.prepareStatement(query); 
            statement.setInt(1, usuario);

            ResultSet resultSet = statement.executeQuery();  // Ejecutar la consulta y obtener los resultados
         
            List<Metrica> estadisticos = new ArrayList<>();  // Crear una lista para almacenar objetos Pelicula

            // Iterar sobre cada fila de resultados en el ResultSet
            while (resultSet.next()) {
                // Crear un objeto Pelicula con los datos de cada fila
                Metrica estadisticosRes = new Metrica(
                    
             
             resultSet.getInt("id_usuario"),
             resultSet.getInt("max(puntaje)"),
             resultSet.getInt("sum(puntaje)"),
             resultSet.getString("max(fecha)")
                );
                System.out.println(estadisticosRes.toString());
                estadisticos.add(estadisticosRes);  // Agregar el objeto Pelicula a la lista
            }

            ObjectMapper mapperRes = new ObjectMapper();  // Crear un objeto ObjectMapper para convertir objetos Java a JSON
            String json = mapperRes.writeValueAsString(estadisticos);  // Convertir la lista de películas a formato JSON
            System.out.println(json);
            response.setContentType("application/json");  // Establecer el tipo de contenido de la respuesta como JSON
            response.getWriter().write(json);  // Escribir el JSON en el cuerpo de la respuesta HTTP
        } catch (SQLException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas con la base de datos
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        } catch (IOException e) {
            e.printStackTrace();  // Imprimir el error en caso de problemas de entrada/salida (por ejemplo, problemas con la solicitud o respuesta HTTP)
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);  // Configurar el código de estado de la respuesta HTTP como 500 (INTERNAL_SERVER_ERROR)
        }finally {
            conexion.close();  // Cerrar la conexión a la base de datos al finalizar la operación
        }
    }
    

    }