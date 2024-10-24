document.addEventListener('DOMContentLoaded', function() {
    fetch('http://localhost:8080/api/alumnos')
    .then(response => response.json())
    .then(alumnos => {
        const tbody = document.querySelector('#alumnosTable tbody');
        alumnos.forEach(alumno => {
            const row = document.createElement('tr');
            
            const nombreCell = document.createElement('td');
            nombreCell.textContent = alumno.nombreCompleto;
            row.appendChild(nombreCell);
            
            const emailCell = document.createElement('td');
            emailCell.textContent = alumno.email;
            row.appendChild(emailCell);
            
            const gradoCell = document.createElement('td');
            gradoCell.textContent = alumno.grado;
            row.appendChild(gradoCell);
            
            const delegadoCell = document.createElement('td');
            delegadoCell.textContent = alumno.esDelegado ? 'Sí' : 'No';
            row.appendChild(delegadoCell);

            tbody.appendChild(row);
        });
    })
    .catch(error => {
        console.error('Error al obtener la lista de alumnos:', error);
    });
});
