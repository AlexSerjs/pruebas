document.getElementById('registerForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const nombreCompleto = document.getElementById('nombre_completo').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const grado = document.getElementById('grado').value;
    const esDelegado = document.getElementById('es_delegado').checked;

    fetch('http://localhost:8080/api/alumnos/register', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            nombreCompleto: nombreCompleto,
            email: email,
            password: password,
            grado: grado,
            esDelegado: esDelegado
        })
    })
    .then(response => {
        if (response.ok) {
            alert('Registro exitoso');
            window.location.href = 'alumnoLogin.html'; 
        } else {
            return response.text().then(text => {
                document.getElementById('registerErrorMessage').innerText = text;
            });
        }
    })
    .catch(error => {
        document.getElementById('registerErrorMessage').innerText = 'Error en la conexión';
    });
});
