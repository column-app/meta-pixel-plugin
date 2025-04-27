import { MetaPixel } from 'meta-pixel-plugin';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    MetaPixel.echo({ value: inputValue })
}
