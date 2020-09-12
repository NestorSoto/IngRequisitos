<%

    if (session.getAttribute("user") != null) {
        session.setAttribute("user", null);
    }

    response.sendRedirect("Controlador?accion=home");
%>
