function openModal() {
    const modal = document.getElementById('captureModal');
    if (modal) {
        modal.style.display = 'flex';
        // Add a small delay for animation
        setTimeout(() => {
            modal.style.opacity = '1';
            modal.style.transition = 'opacity 0.3s ease';
        }, 10);
    }
}

function closeModal() {
    const modal = document.getElementById('captureModal');
    if (modal) {
        modal.style.opacity = '0';
        setTimeout(() => {
            modal.style.display = 'none';
        }, 300); // match transition duration
    }
}

function submitForm(event) {
    event.preventDefault();
    
    const form = document.getElementById('leadForm');
    if(form.checkValidity()) {
        const submitBtn = document.getElementById('submitBtn');
        const originalText = submitBtn.textContent;
        submitBtn.textContent = 'Processando...';
        submitBtn.disabled = true;

        // Simulando envio de dados
        setTimeout(() => {
            closeModal();
            // Redireciona para o link da isca digital
            window.location.href = "https://vocenaoestaquebrada-uspteq3.gamma.site/";
        }, 800);
    }
}

// Close modal when clicking outside the content
window.addEventListener('click', function(event) {
    const modal = document.getElementById('captureModal');
    if (event.target === modal) {
        closeModal();
    }
});
