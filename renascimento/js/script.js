const SCRIPT_URL = 'https://script.google.com/macros/s/AKfycbyLux1NnyhfaoWYxqYSDbknZ403x5uQ9wudXSoPo_zVkxhk83M6GgtVX1iapB2ZzSFaaQ/exec';
const EBOOK_URL = 'https://drive.google.com/file/d/1MZFlHEYBH6cgPgJkdBDlLNVaKWbEnPkG/view?usp=sharing';

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
        submitBtn.textContent = 'Verificando...';
        submitBtn.disabled = true;

        const data = new URLSearchParams(new FormData(form));

        fetch(SCRIPT_URL, {
            method: 'POST',
            mode: 'no-cors',
            body: data
        })
        .then(() => {
            closeModal();
            window.location.href = EBOOK_URL;
        })
        .catch(() => {
            closeModal();
            window.location.href = EBOOK_URL;
        });
    }
}

// Close modal when clicking outside the content
window.addEventListener('click', function(event) {
    const modal = document.getElementById('captureModal');
    if (event.target === modal) {
        closeModal();
    }
});
