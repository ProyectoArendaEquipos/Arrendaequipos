

function MensajeError() {
    $('#MensajeError').hide();
    $('#MensajeError').slideDown(1000);
}

function MostrarMensaje() {
    $('#MensajeError').hide();
    $('#MensajeError').slideDown(750);
}

function Enviar() {
    if ((document.UserForm.TxtUserName.value.length == 0) && 
            (document.UserForm.TxtPassword.value.length == 0)) {
        var Mensaje = $("#MensajeError");
        Mensaje.text("Los campos se encuentran vacíos");
        MostrarMensaje();
        /* alert("Los Campos Se Encuentran Vacíos"); */
        document.UserForm.TxtUserName.focus();
        document.UserForm.TxtUserName.value = "";
        return 0;
    } else {
        if (document.UserForm.TxtUserName.value.length == 0) {
            var Mensaje = $("#MensajeError");
            Mensaje.text("El campo de correo electrónico está vacío");
            MostrarMensaje();
            /* alert("Introduzca su Nombre de Usuario"); */
            document.UserForm.TxtUserName.focus();
            document.UserForm.TxtUserName.value = "";
            return 0;
        }
        if (document.UserForm.TxtPassword.value.length == 0) {
            var Mensaje = $("#MensajeError");
            Mensaje.text("El campo de contraseña está vacío");
            MostrarMensaje();
            /* alert("Complete el Campo de Contraseña"); */
            document.UserForm.TxtPassword.focus();
            document.UserForm.TxtPassword.value = "";
            return 0;
        }
        document.UserForm.submit();
    }
}

function Enter(Evento) {
    Tecla = (document.all) ?
    Evento.keyCode: Evento.which;
    if (Tecla == 13){ Enviar();}
}