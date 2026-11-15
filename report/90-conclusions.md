[← Capítulo V](50-chapter-5-product-implementation-validation-and-deployment.md) · [Contenido](../README.md#contenido) · [Bibliografía →](99-bibliography.md)

<a id="conclusiones"></a>
# Conclusiones

<hr>


<a id="conclusiones-y-recomendaciones"></a>
## Conclusiones y recomendaciones.

### Conclusiones

1. La participación en el Sprint 1 permitió consolidar la propuesta de FleetSafe mediante la definición de los principales artefactos de arquitectura, diseño y documentación. El trabajo realizado permitió establecer una base para continuar con la implementación progresiva de las funcionalidades de la plataforma.

2. El trabajo realizado durante el Sprint permitió avanzar en la implementación y organización de la Landing Page de FleetSafe, contribuyendo a transformar los diseños definidos por el equipo en una primera versión funcional y accesible del producto.

3. La participación en el sprint permitió contribuir al refinamiento de la propuesta funcional de FleetSafe y a la definición de elementos necesarios para representar las funcionalidades y segmentos objetivo del producto. Esto ayudó a mantener alineado el diseño con las necesidades identificadas durante el análisis del dominio.

4. El desarrollo del Sprint 1 permitió contribuir a la consolidación de la arquitectura y del diseño de FleetSafe, especialmente en la organización de los elementos del dominio y en la preparación de los artefactos necesarios para continuar con el desarrollo de la solución.

5. La participación durante el Sprint 1 permitió contribuir al desarrollo y refinamiento de los artefactos de diseño y de la Landing Page, ayudando a establecer una primera versión de la interfaz y a preparar la solución para las siguientes etapas de implementación.

6. El Sprint 3 permitió pasar de una Web Application con datos simulados a una plataforma con un Backend RESTful API desplegado en Azure Container Apps y una base de datos PostgreSQL, en la que cada usuario entra con su propia cuenta, lo que registra se conserva y la habilitación de cada vehículo se decide con las reglas de la empresa.

7. Organizar el backend en bounded contexts que se comunican solo mediante fachadas permitió que cada integrante desarrollara su contexto en paralelo y que los contextos se integraran sin modificar el código interno de los demás.

8. Las pruebas automáticas contra PostgreSQL en cada Pull Request del backend detectaron errores antes de que llegaran a producción, y el flujo GitFlow con ramas `release` y `hotfix` permitió publicar versiones y corregir fallas sin detener el trabajo en `develop`.

9. La reasignación del trabajo pendiente durante el sprint mostró la importancia de integrar el avance con frecuencia, ya que los bounded contexts integrados a tiempo pudieron completarse y desplegarse sin retrasar al resto del equipo.

### Recomendaciones

1. Para los siguientes sprints, se recomienda mantener una coordinación temprana entre arquitectura, diseño e implementación, de manera que los cambios realizados en un artefacto puedan reflejarse oportunamente en los demás y se reduzca el retrabajo.

2. Se recomienda continuar priorizando la integración entre los diseños aprobados y su implementación, realizando validaciones frecuentes de la Landing Page y de las futuras funcionalidades para asegurar que el resultado desarrollado mantenga correspondencia con los diseños establecidos.

3. Se recomienda continuar refinando las User Stories antes de iniciar su implementación, verificando que cada historia tenga claramente definido su objetivo, alcance y criterios necesarios para su desarrollo.

4. Se recomienda mantener actualizados los diagramas de arquitectura y diseño conforme evolucione FleetSafe, especialmente cuando se incorporen nuevas funcionalidades o se realicen modificaciones en los Bounded Contexts definidos.

5. Se recomienda realizar revisiones periódicas de las interfaces y flujos diseñados antes de iniciar su implementación, con el objetivo de detectar inconsistencias de navegación o diseño y reducir modificaciones durante las etapas posteriores del desarrollo.

6. Se recomienda que cada Pull Request sea revisado por otro integrante antes de integrarse, aun cuando las pruebas automáticas pasen, porque esas pruebas no cubren las llamadas entre la Web Application y el Backend RESTful API.

7. Se recomienda que todo cambio en una ruta del backend actualice en el mismo sprint su contrato OpenAPI y el endpoint correspondiente de la Web Application, para que ambos productos no queden desalineados.

<a id="video-about-the-team"></a>
## Video About-the-Team.

<hr>

---

[← Capítulo V](50-chapter-5-product-implementation-validation-and-deployment.md) · [Contenido](../README.md#contenido) · [Bibliografía →](99-bibliography.md)
