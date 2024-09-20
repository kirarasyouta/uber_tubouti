function showConfirmDialog() {
    document.getElementById('confirm-dialog').style.display = 'flex';
}

function hideConfirmDialog() {
    document.getElementById('confirm-dialog').style.display = 'none';
}

function confirmOrder() {
    alert('注文が確定しました！');
    hideConfirmDialog();
}

function showCancelDialog() {
    document.getElementById('cancel-dialog').style.display = 'flex';
}

function hideCancelDialog() {
    document.getElementById('cancel-dialog').style.display = 'none';
}

function cancelOrder() {
    alert('注文がキャンセルされました。');
    hideCancelDialog();
}