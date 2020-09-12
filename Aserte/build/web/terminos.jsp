<%-- 
    Document   : inicioSesion
    Created on : 05-sep-2020, 14:43:43
    Author     : User
--%>

<%@page import="view.Usuario"%>
<%@page import="cad.UsuarioCad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aserté | Inicio Sesion</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity= "sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>
        <link href="css/estilos.css" rel="stylesheet" type="txt/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/7d4952ef47.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light"><%-- cambiar ligth por otro color--%>
            <a class="navbar-brand" href="#">
                <img src="img/Logo.png" width="150" height="40"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?accion=home">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ofertas</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="Controlador?accion=home">Seguir comprando</a>
                    </li>
                </ul>

                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <ul class="navbar-nav" >
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Cuenta
                            <p class="text-monospace"></p>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="Usuarios.php">Iniciar Sesion</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">${user}</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container col-7 margin-1">
            <h1> I. TÉRMINOS Y CONDICIONES</h1>
            <p class="text-justify" >
                Este documento describe los términos y condiciones generales (los "Términos y Condiciones Generales")
                y las políticas de privacidad (las "Políticas de Privacidad") aplicables al acceso y uso de los 
                servicios ofrecidos por Aserte ("los Servicios") dentro del sitio web, sus 
                subdominios y/u otros dominios (urls) relacionados (en adelante "Aserte.com"), en donde 
                éstos Términos y Condiciones se encuentren. Cualquier persona que desee acceder y/o suscribirse y/o 
                usar el Sitio o los Servicios podrá hacerlo sujetándose a los Términos y Condiciones Generales y 
                las Políticas de Privacidad, junto con todas las demás políticas y principios que rigen linio.com.pe 
                y que son incorporados al presente directamente o por referencia o que son explicados y/o detallados 
                en otras secciones del Sitio. En consecuencia, todas las visitas y todos los contratos y 
                transacciones que se realicen en este Sitio, así como sus efectos jurídicos, quedarán regidos 
                por estas reglas y sometidos a la legislación aplicable en Perú.
                
                Los Términos y Condiciones y las Políticas de Privacidad contenidos en este instrumento se aplicarán y 
                se entenderán como parte integral de todos los actos y contratos que se ejecuten o celebren mediante los 
                sistemas de oferta y comercialización comprendidos en este sitio entre los usuarios de este sitio y
                por cualquiera de las otras sociedades o empresas que sean filiales o vinculadas a ella, y que 
                hagan uso de este sitio, a las cuales se las denominará en adelante también en forma indistinta 
                como las "Empresas", o bien la "Empresa Oferente", el "Proveedor" o la "Empresa Proveedora", 
                según convenga al sentido del texto.

                En caso que las Empresas hubieran fijado sus propios Términos y Condiciones y sus Políticas de 
                Privacidad para los actos y contratos que realicen en este sitio, ellas aparecerán en esta página 
                señalada con un link o indicada como parte de la promoción de sus ofertas y promociones y prevalecerán 
                sobre éstas. CUALQUIER PERSONA QUE NO ACEPTE ESTOS TÉRMINOS Y CONDICIONES GENERALES Y LAS POLÍTICAS DE 
                PRIVACIDAD, LOS CUALES TIENEN UN CARÁCTER OBLIGATORIO Y VINCULANTE, DEBERÁ ABSTENERSE DE UTILIZAR EL 
                SITIO Y/O LOS SERVICIOS.
            </p>
            <h2> 1. Capacidad Legal</h2>
            <p class="text-justify" >
                Los Servicios sólo están disponibles para personas que tengan capacidad legal para contratar. 
                No podrán utilizar los servicios las personas que no tengan esa capacidad entre estos los menores 
                de edad o Usuarios de linio.com.pe que hayan sido suspendidos temporalmente o inhabilitados 
                definitivamente en razón de lo dispuesto en la sección 2 “Registro y Uso del Sitio”. Los actos que  
                los menores realicen en este sitio serán responsabilidad de sus padres, tutores, encargados o curadores, 
                y por tanto se considerarán realizados por éstos en ejercicio de la representación legal con la que 
                cuentan.

                Quien registre un Usuario como empresa afirmará que (i) cuenta con capacidad para contratar en 
                representación de tal entidad y de obligar a la misma en los términos de este Acuerdo, (ii) la 
                dirección señalada en el registro es el domicilio principal Legal y/o Fiscal de dicha entidad, y 
                (iii) cualquier otra información presentada a ASERTE es verdadera, precisa, actualizada, completa y oportuna.
            </p>
            <h2>2. Registro y Uso del Sitio</h2>
            <p class="text-justify" >
                Es obligatorio completar el formulario de registro en todos sus campos con datos válidos y verdaderos para 
                convertirse en Usuario autorizado de linio.com.pe (el "Miembro" ASERTE o el "Usuario"), de esta manera, 
                podrá acceder a las promociones, y a la adquisición de productos y/o servicios ofrecidos en este sitio. 
                El futuro Miembro ASERTE deberá completar el formulario de registro con su información personal de manera 
                exacta, precisa y verdadera ("Datos Personales") y asume el compromiso de actualizar los Datos Personales 
                conforme resulte necesario. ASERTE podrá utilizar diversos medios para identificar a sus Miembros, pero 
                ASERTE NO se responsabiliza por la certeza de los Datos Personales provistos por sus Usuarios. Los Usuarios 
                garantizan y responden, en cualquier caso, de la exactitud, veracidad, vigencia y autenticidad de los Datos 
                Personales ingresados. En ese sentido, la declaración realizada por los Usuarios al momento de registrarse 
                se entenderá como una Declaración Jurada.
                Cada miembro sólo podrá ser titular de una (1) cuenta ASERTE, no pudiendo acceder a más de una (1) cuenta 
                ASERTE con distintas direcciones de correo electrónico o falseando, modificando y/o alterando sus datos 
                personales de cualquier manera posible. En caso se detecte esta infracción, ASERTE se comunicará con el 
                cliente informándole que todas sus cuentas serán agrupadas en una sola cuenta anulándose todas sus demás 
                cuentas, ello se informara al usuario mediante correo electrónico indicado por él mismo o el último 
                registrado en ASERTE.
            </p>
            <h2>3. Modificaciones del Acuerdo</h2>
            <p class="text-justify" >
                ASERTE podrá modificar los Términos y Condiciones Generales en cualquier momento, haciendo 
                públicos en el Sitio los términos modificados. Todos los términos modificados entrarán en vigencia a 
                los 10 (diez) días hábiles después de su publicación. Dentro de los 5 (cinco) días hábiles siguientes a 
                la publicación de las modificaciones introducidas, el Usuario se deberá comunicar por e-mail a la 
                siguiente dirección: no-clientes@aserte.com si no acepta las mismas; en ese caso quedará disuelto el 
                vínculo contractual y será inhabilitado como Miembro. Vencido este plazo, se considerará que el Usuario 
                acepta los nuevos términos y el contrato continuará vinculando a ambas partes.
            </p>
            <h2>4. Procedimiento para Hacer Uso de Este Sitio de Internet</h2>
            <p class="text-justify" >
                En los contratos ofrecidos por medio del Sitio, linio.com.pe informará, de manera inequívoca y fácilmente 
                accesible, los pasos que deberán seguirse para celebrarlos, e informará, cuando corresponda, si el documento 
                electrónico en que se formalice el contrato será archivado y si éste será accesible al Usuario.
                El sólo hecho de seguir los pasos que para tales efectos se indiquen en este sitio para efectuar una compra, 
                equivale a aceptar que efectivamente ha dado cumplimiento a las condiciones contenidas en este apartado. 
                Indicará, además, su dirección de correo postal o electrónico y los medios técnicos a disposición del Miembro 
                para identificar y corregir errores en el envío o en sus datos.
            </p>
            <h2>5. Despacho de los Productos </h2>
            <p class="text-justify" >
                Los productos adquiridos a través de la página web se sujetarán a las condiciones de despacho y entrega elegidas por el cliente y disponibles en el Sitio.
                        
                La información del lugar de envío es de exclusiva responsabilidad del cliente. Por lo que será de tu responsabilidad la exactitud de los datos indicados para realizar una correcta y oportuna entrega de los productos a tu domicilio o dirección de envío. Si hubiera algún error en la dirección, tu producto podría no llegar en la fecha indicada.
                Los plazos elegidos para el despacho y entrega, se cuentan desde que Linio Perú valida la orden de compra y el medio de pago utilizado, considerándose días hábiles para el cumplimiento de dicho plazo.
                Linio Perú mantendrá informado a los clientes sobre el estado de su pedido.
                El Usuario sólo podrá solicitar el cambio de dirección antes de recibir el correo de confirmación de Linio, si en caso el cliente no ha ingresado la dirección correcta en el momento de realizar la compra y la orden ya se encuentre confirmada, el cliente tendría que solicitar a Linio la cancelación de la compra inicial y crear una nueva con la dirección correcta, teniendo en cuenta que la venta y despacho de los productos está condicionada a su disponibilidad, nuevo precio del producto, los nuevos  plazos de entrega, establecidos por Linio Perú y los costos asociados a esta nueva dirección.
                Nota: Se recomienda al cliente realizar el cambio de la dirección en su cuenta de Linio para que en próximas compras no se genere error alguno.
                Linio Perú realizará hasta dos intentos de visita al domicilio indicado por el cliente.
                El siguiente día útil de efectuada la primera visita, el transportista realizará un último intento de entrega del pedido. Si en esta segunda entrega, al cliente se le vuelve a encontrar ausente, el pedido será retornado al Proveedor / Distribuidor y la compra será anulada.
                Posteriormente le llegará un correo electrónico al cliente sobre la anulación del pedido. En caso el cliente aún quiera el pedido, deberá generar una nueva orden de compra, teniendo en cuenta la posible modificación del precio del producto y su disponibilidad.
                Con el fin de facilitar el seguimiento de los pedidos realizados por los clientes en la página, Linio podrá enviar información vía mensajes de texto (SMS y/o MMS) o vía “WhatsApp” acerca de la entrega y estado de los pedidos realizados en el Sitio. Los Clientes no podrán presentar dudas acerca de sus pedidos ni interactuar vía mensajes de texto (SMS y/o MMS) o vía “WhatsApp”. En caso no desear recibir dichas confirmaciones a través del canal mencionado, lo podrás comunicar mediante el correo electrónico atencion@linio.com o bien deberás bloquear el número del emisor del mensaje.
                Linio Perú cuenta con cobertura de despachos a nivel de Lima y Provincias, sin embargo, hay destinos rurales o de difícil acceso en los cuales no podrá efectuar despachos y esto será identificado por el cliente al momento de realizar su compra (aparecerá cuando el cliente selecciona DEPARTAMENTO/PROVINCIA/DISTRITO). En caso la ubicación del domicilio del cliente no pueda atenderse porque está en una calle o zona de difícil acceso, Linio Perú se comunicará con el cliente para gestionar un cambio de domicilio y poder entregar el producto adquirido.
                Cuando el cliente recibe un producto que no es de grandes dimensiones, deberá validar que la caja o bolsa que contenga el producto, esté sellado y no tenga signos de apertura previa; en caso detecte esto, no deberá recibir el producto y deberá ponerse en contacto inmediatamente con Linio Perú. En caso que el producto fuera recibido en buenas condiciones y completo, el cliente firmará la Guía Carrier, dejando así conformidad de la entrega. Luego de la aceptación del producto y firma documentaria, el cliente no podrá presentar reclamo por daño del producto o faltante del mismo, sólo se atenderán reclamos por temas de garantía o cualquiera descrita dentro de la Política de Devolución y Cambios en los tiempos establecidos en estos Términos y Condiciones.
                El transportista podrá realizar entrega de productos de grandes dimensiones hasta un máximo de 3 pisos, siempre y cuando el acceso al mismo sea viable (escaleras amplias o ascensor de grandes dimensiones). Si el cliente no accede a la recepción del producto bajo las condiciones mencionadas, el transportista sólo podrá dejarlo en el primer piso de su domicilio, dejando a decisión del cliente el rechazo o recepción del producto.
                El transportista no está facultado ni autorizado de realizar maniobras especiales, llámese desmontaje de puertas ni ventanas, ingreso del producto con poleas, sogas, tampoco ingresará el producto por balcones, ventanas, tragaluz, ni sogas, ni desmontajes de puertas.
                Linio Perú, al realizar la entrega de un producto de grandes dimensiones, envía con el transportista, un “FORMATO DE CONFORMIDAD DE ENTREGA”, donde el cliente debe firmar al recibir, dejando constancia que realizó la revisión física externa del producto y que éste se encuentra en buenas condiciones. De tener alguna observación al momento de la recepción, no debe recibir el producto y debe dejar constancia de la no conformidad del mismo, y ponerse en contacto inmediatamente con Linio Perú; asimismo el transportista deberá llevarse el producto. Luego de la aceptación del producto y firma documentaria, el cliente no podrá presentar reclamo por daño de producto o faltante del mismo, sólo se atenderán reclamos por temas de garantía o cualquiera descrita dentro de la Política de Devolución y Cambios, en los tiempos establecidos en estos Términos y Condiciones.
                El Transportista no realiza ni instalaciones ni armados de productos, para el caso de entrega de productos.
            </p>

        </div>
        <%
             String nombre, contra;
             Usuario cliente;
             HttpSession sesion = request.getSession();
            if (request.getParameter("btnIngresar") != null) {
                nombre = request.getParameter("campoUsuario");
                contra = request.getParameter("campoContrasenia");
                if(UsuarioCad.usuarioExiste(nombre, contra)){
                    cliente = UsuarioCad.obtenerUsuario(nombre);
                    sesion.setAttribute("user", cliente.getUsuario());
                    response.sendRedirect("index.jsp");
                }else{
                    out.print(" el usuario no existe");
                }
            }else{
                
            }   
            
        %>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
