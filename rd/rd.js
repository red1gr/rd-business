window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.display) {
        const UI = document.getElementById('rd-business');
        const Label = document.getElementById('rd-label');
        const Text = document.getElementById('rd-text');
        UI.style.display = 'flex';
        Label.textContent = data.Label;
        Text.textContent = data.Text;
        UI.classList.remove('hidden');
        setTimeout(() => {
            UI.style.display = 'none';
            fetch(`https://${GetParentResourceName()}/closeUI`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify({})
            }).then(resp => resp.json()).then(resp => {});
        }, 8000);
    }
});