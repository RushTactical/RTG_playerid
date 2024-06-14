window.addEventListener('message', function(event) {
    var data = event.data;
    if (data.type === 'updatePlayerId') {
        document.getElementById('playerId').innerText = 'ID: ' + data.playerId;
    }
});