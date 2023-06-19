let animationInterval;

function animateButton() {
    const button = document.querySelector("button");
    const originalText = button.innerHTML;
    const frames = ["Searching...🔍", "Searching...🕵️", "Searching...🔎", "Searching...🔦", "Searching...🔍"];

    let currentFrameIndex = 0;
    animationInterval = setInterval(function () {
        button.innerHTML = frames[currentFrameIndex];
        currentFrameIndex = (currentFrameIndex + 1) % frames.length;
    }, 200);

    button.addEventListener("mouseout", function () {
        clearInterval(animationInterval);
        button.innerHTML = originalText;
    });
}