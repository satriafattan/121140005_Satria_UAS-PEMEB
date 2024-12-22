// Client-side Validation and Event Handling
function validateForm(event) {
    event.preventDefault();

    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const gender = document.querySelector('input[name="gender"]:checked');
    const terms = document.getElementById('terms').checked;

    if (!name || !email || !gender || !terms) {
        alert("All fields must be filled and terms accepted.");
        return false;
    }

    document.getElementById('formData').submit();
}

function populateTable(data) {
    const tableBody = document.getElementById('data-table-body');
    tableBody.innerHTML = '';
    data.forEach(row => {
        const tr = document.createElement('tr');
        tr.innerHTML = `<td>${row.name}</td><td>${row.email}</td><td>${row.gender}</td><td>${row.date}</td>`;
        tableBody.appendChild(tr);
    });
}

async function fetchData() {
    const response = await fetch('server.php?action=fetch');
    const data = await response.json();
    populateTable(data);
}

document.addEventListener('DOMContentLoaded', fetchData);
document.getElementById('formData').addEventListener('submit', validateForm);
