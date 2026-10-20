Hola profe:

Debido a un par de fallos mios en la practica, rehacer cosas, y decidir diferentes estructuras de docker, he ido cambiando 
el funcionamiento, archivo, etc...

Te lo dejo lo mas plano posible, aún asi:

Seguramente borre lo que no necesites, pero el ejercicio entero está en apache2i. Tuve que modificar una imagen de ubuntu/apache2
para meterle nano. Luego resultó que no lo utilice porque externalicé prácticamente todos los documentos necesarios de apache en
los docker. Asi puedo cambiarlos de manera mucho más facil, acceder a ellos a través del explorador de archivos y
poder ver de forma mucha más sencilla todas las configuraciones. No sé si al final cambiaré o no la imagen, pero
al usar apache2i como imagen, te dará fallo. Asegurate de cambiarla a ubuntu/apache2:latest si no te funciona a la
primera el docker compose up del contenedor.
