document.getElementById('sum-form').addEventListener('submit', function(event) {
    event.preventDefault();
    const num1 = parseInt(document.getElementById('num1').value);
    const num2 = parseInt(document.getElementById('num2').value);

    fetch('http://13.233.148.136:4000/sum', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ num1: num1, num2: num2 })
    })
    .then(response => response.json())
    .then(data => {
        document.getElementById('result').textContent = 'Sum: ' + data.sum;
    })
    .catch(error => {
        console.error('Error:', error);
    });
});
