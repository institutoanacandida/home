const EBOOK_FILE_PATH = '../../assets/ebook-feminino.pdf'; // Placeholder path

document.addEventListener('DOMContentLoaded', () => {
    // Configura o link de download manual
    const manualLink = document.getElementById('manualDownloadLink');
    if (manualLink) {
        manualLink.href = EBOOK_FILE_PATH;
        manualLink.setAttribute('download', 'ebook-voce-nao-esta-quebrada.pdf');
    }

    // Gatilho de download automático após 2 segundos
    setTimeout(() => {
        triggerDownload(EBOOK_FILE_PATH);
        updateStatus();
    }, 2500);
});

function triggerDownload(url) {
    const link = document.createElement('a');
    link.href = url;
    link.setAttribute('download', 'ebook-voce-nao-esta-quebrada.pdf');
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}

function updateStatus() {
    const statusText = document.querySelector('.status-text');
    const loader = document.querySelector('.loader');
    
    if (statusText && loader) {
        statusText.textContent = 'Download Iniciado!';
        loader.style.borderTopColor = '#0A4834'; // Muda para verde quando inicia
        
        // Pequena animação de sucesso
        const subStatus = document.querySelector('.sub-status');
        if (subStatus) {
            subStatus.innerHTML = 'Transformação em andamento... ✨';
            subStatus.style.color = '#0A4834';
            subStatus.style.fontWeight = '600';
        }
    }
}
