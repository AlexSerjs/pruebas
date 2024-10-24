document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    fetch('http://localhost:8080/api/alumnos/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            email: email,
            password: password
        })
    })
    .then(response => {
        return response.json();  
    })
    .then(data => {
        if (data.message) {
            alert(data.message);  
        } else if (data.error) {
            document.getElementById('errorMessage').innerText = data.error; 
        }
    })
    .catch(error => {
        document.getElementById('errorMessage').innerText = 'Error en la conexión';
    });
    
});
