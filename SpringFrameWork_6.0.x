v6.0.23
⭐ New Features
Efficient handling of conditional HTTP requests #33379
🐞 Bug Fixes
Fix incorrect weak ETag validation #33376
SimpleEvaluationContext does not enforce read-only semantics #33321
ConversionService cannot convert primitive array to Object[] #33313
SpEL Indexer silently ignores failure to set property as index #33311
Nested bean instance supplier invocation does not retain previous factory method #33185
Mockito mock falsely initialized as CGLIB proxy with AspectJ aspect #33141
"file:." cannot be resolved to java.nio.file.Path (and plain "." value resolves to classpath root) #33139
Trace and Span IDs are no longer propagated RequestBodyAdvice beans #33128
ConfigurationClassEnhancer does not use correct ClassLoader when called multiple times #33029
📔 Documentation
Typo in Annotation-driven Listener Endpoints section of Spring Framework documentation #33054
Container Extension Points section of Spring Framework documentation refers to the wrong property name #33038
Incorrect constructor details in the javadoc for ApplicationContextEvent #33033
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.22 #33324


v6.0.22
⭐ New Features
AnnotationUtils performance degrades with deep stacks #32922
🐞 Bug Fixes
Observation in ServerHttpObservationFilter is never stopped for asynchronous requests #32986
AspectJ CTW aspects executed twice #32973
SpEL compilation fails when indexing into a Map with a primitive #32912
SpEL compilation fails when indexing into an array or list with an Integer #32910
Application not starting with @EnableTransactionManagement(mode = AdviceMode.ASPECTJ) #32883
📔 Documentation
Remove outdated copyright from index.adoc #32984
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.20 #33008


v6.0.21
⭐ New Features
Avoid creation of SAXParserFactory for every read operation in Jaxb2Marshaller and co #32855
🐞 Bug Fixes
Overridden aspect method runs twice #32867
@DateTimeFormat(iso = DateTimeFormat.ISO.DATE\_TIME) cannot convert UTC without milliseconds to java.util.Date #32859
MockHttpServletRequest should not use a shared reader when no content is available #32848
Spring AOP fails against registered @Configurable aspect #32839



v6.0.20
⭐ New Features
Accept ajc-compiled @Aspect classes for Spring AOP proxy usage #32817
🐞 Bug Fixes
Do not send Cookie header in reactive JdkClientHttpRequest if no cookies added #32831
Incorrect AsyncRequestTimeoutException handling in ResponseEntityExceptionHandler #32808
DeferredQueryInvocationHandler fails to unwrap QuerySqmImpl class outside of transaction #32769
MergedAnnotations search does not find container for repeatable annotation #32752
AnnotationConfigWebApplicationContext should propagate ApplicationStartup to BeanFactory #32748
Ignore non-String keys in PropertiesPropertySource.getPropertyNames() #32743
"multiple subscribers not supported" when using WebClient exchange #32732
Wrong proxy generation order during AOT for classes with ScopedProxyMode.TARGET\_CLASS and advisors #32701
Deadlock/Stall in ConcurrentWebSocketSessionDecorator with Undertow 2.3.10 #32697
ConfigurationClassEnhancer should consistently trigger FastClass creation at build-time #32683
WebFlux temporary file not always deleted with parallel uploads. #32638
📔 Documentation
Improve documentation advising against use of HandlerInterceptor for security #32809
Links to Framework's Java API documentation from its Kotlin API documentation are broken #32801
Correct documentation on streaming with MockMvcWebTestClient #32722
Document that DataIntegrityViolationException can also be thrown on read-only queries #32686
Update links to HttpOnly documentation at OWASP in ResponseCookie #32667
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.19 #32787



v6.0.19
⭐ New Features
Log column type for limited support message in JdbcUtils.getResultSetValue #32602
Avoid additional unnecessary Annotation array cloning in TypeDescriptor #32478
Avoid cloning empty Annotation array in TypeDescriptor #32465
🐞 Bug Fixes
Refine scheme, userinfo, host and port parsing in UriComponentsBuilder #32617
MethodIntrospector.selectMethods() fails to detect bridge methods across ApplicationContexts #32587
Generic interface on FactoryBean class not autowired in case of targetType mismatch #32585
HeaderContentNegotiationStrategy.resolveMediaTypes() throws unexpected InvalidMimeTypeException #32484
JmsUtils.commitIfNecessary catches and ignores JMS IllegalStateException, losing message with ActiveMQ Artemis #32479
Consistently apply TaskDecorator to ManagedExecutorService as well #32456
📔 Documentation
Fix broken link to vavr in the reference guide #32495
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.18 #32593



v6.0.18
⭐ New Features
Extract reusable method for URI validations #32441
Allow UriTemplate to be built with an empty template #32437
Refine \*HttpMessageConverter#getContentLength return value null safety #32333
🐞 Bug Fixes
WebClient Observations are missing error #32399
AopUtils.getMostSpecificMethod does not return original method for proxy-derived method anymore #32368
Better protect against concurrent error handling for async requests #32341
ContentCachingResponseWrapper no longer honors Content-Type and Content-Length #32321
Hibernate native image support broken by HHH-17643 #32312
📔 Documentation
Fix order of 2 sections in the Validation chapter of the reference manual #32409
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.17 #32421



v6.0.17
⭐ New Features
RouterFunctionMapping does not implement MatchableHandlerMapping #32222
Optimize Map methods in ServletAttributesMap #32197
🐞 Bug Fixes
@JsonDeserialize(builder = ...) does not work in GraalVM native image #32257
Consistent parsing of user information in UriComponentsBuilder #32246
"IllegalStateException: Cannot call sendError() after the response has been committed" when IOException is thrown during resolving method argument values on Tomcat >= 10.1.16 #32207
Cannot process AOT when spring-orm is on the classpath without JPA #32160
QualifierAnnotationAutowireCandidateResolver.checkQualifier does identity checks when comparing arrays used as qualifier fields #32107
Guard against multiple body subscriptions in Jetty and JDK reactive responses #32102
Exceptions thrown by custom error handlers are not recorded in RestTemplate observations #32063
Static resources caching issues with ShallowEtagHeaderFilter and Jetty caching directives #32050
ChannelSendOperator.WriteBarrier race condition in request(long) method leads to response being dropped #32020
Destroy method not found in Native image for ExecutorService Bean type #32017
📔 Documentation
Update basics.adoc #32151
Document cron-vs-quartz parsing convention for dayOfWeek part in CronExpression #32130
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.16 #32275


v6.0.16
⭐ New Features
Exclude URI query from remaining WebClient checkpoints #32001
Add CORS support for Private Network Access #31975
Avoid early getMostSpecificMethod resolution in CommonAnnotationBeanPostProcessor #31968
🐞 Bug Fixes
Double error response handling on suspended methods #31990
DefaultDataBuffer fails to transform its content to a string. #31979
Spring AOP does not propagate arguments for dynamic prototype-scoped advice #31963
MergedAnnotation swallows IllegalAccessException for attribute method #31960
CronTrigger hard-codes default ZoneId instead of participating in scheduler-wide Clock setup #31949
HandlerMappingIntrospector is throwing PatternSyntaxException for wildcards in the request URL #31946
ForwardedHeaderFilter should reject invalid requests #31894
@Async does not support Unit? return type #31891
Significant increase in memory consumption StringDecoder when splitting input by delimiters. #31859
📔 Documentation
Update ContentRequestMatchers#multipartData Javadoc #31989
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.15 #31997


v6.0.15
⭐ New Features
Skip buffer allocation in StreamUtils.copy(String) #31631
🐞 Bug Fixes
<replaced-method /> unnecessarily requires explicit arg-type since 6.0 #31828
MergedAnnotations finds duplicate annotations on method in multi-level interface hierarchy #31824
Fix condition for "Too many elements" in MimeTypeUtils.sortBySpecificity() #31773
Spring unable to decode aggregated JSON content #31772
Multipart messages with empty parts are not correctly parsed in WebFlux #31766
PathEditor cannot handle absolute Windows paths with forward slashes #31727
TraceId is missing in WebFlux controller handlers #31716
Wrong observation status tag when a Not Found in a webflux application #31715
Fail to register MBean with bean name containing invalid character #31708
Include Hibernate's Query.scroll() in SharedEntityManagerCreator's queryTerminatingMethods set #31683
TypeDescriptor does not check generics in equals method (for ConversionService caching) #31673
SpEL expression on a reloadable type can no longer be resolved #31670
Slow SpEL performance due to method sorting in ReflectiveMethodResolver #31664
Jackson encoder releases resources in wrong order #31656
Current Observation.Context missing from WebClient request #31646
WebSocketMessageBrokerStats has null stats for stompSubProtocolHandler since 5.3.2 #31641
<jee:local-slsb> no longer works with a business-interface attribute #31630
GeneratedFiles#addSourceFile should not allow to add a source in the default package #31629
PathResourceResolver.getResource() does not log warning if Resource#getURL() throws exception #31624
📔 Documentation
Document explicit @ModelAttribute is required for reflection hints inference #31767
Documentation needs to be updated with instructions for STOMP Client #31678
Improve STOMP WebSocket documentation for input message buffer size #31654
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.14 #31815



v6.0.14
⭐ New Features
Provide caching for HandlerMappingIntrospector lookups #31588
Log4jLog needs to re-resolve ExtendedLogger on deserialization (for compatibility with Log4J 2.21) #31582
Optimize StandardTypeLocator for hotspot when the same classes are resolved #31579
Add duplicate key exception error code for SAP HANA database #31554
Do not delegate TRACE to HttpServlet on ERROR dispatch #31457
Add properties setter to ProblemDetail #31430
🐞 Bug Fixes
GeneratedFiles#addSource does not provide proper context if the specified class name is invalid #31612
MessageBuilder#createMessage should not define the payload as @Nullable #31610
Default Mixin added by Jackson2ObjectMapperBuilder are missing required runtime hints #31606
NettyDataBuffer#toByteBuffer fails if readPosition > 0 #31605
Avoid duplicate JAR resources in PathMatchingResourcePatternResolver on MS Windows #31598
NamedParameterUtils broken parsing related to square brackets #31596
Multipart cleanup is done too eagerly #31567
Jakarta validation field constraints in superclass are ignored in native image #31552
Function column out doesn't resolve to SqlOutParameter #31550
Restore support for recursive annotations in Kotlin #31518
Resolve to empty MultiValueMap when no matrix variables are provided #31483
ProxyFactoryBean declaration may lead to unexpected non-fatal "FactoryBean threw exception from getObjectType" stacktrace output #31473
Use of @Value in compact constructor of a record should not register method injection #31433
Prevent duplicate HTTP server observations for cancelled exchanges #31417
Spring MVC raises MissingPathVariableException resulting in 500 instead of 400 error when path segment is u001F or u00D and cannot be converted to target type UUID #31382
Ensure consistent value count in ConcurrentReferenceHashMap#Segment #31373
HeaderContentNegotiationStrategy.resolveMediaTypes throws unexpected IllegalArgumentException #31254
Session Cookie in Reactive WebSession is not deleted if maxAge is set through cookie initializer (e.g. via Boot application property) #31214
DefaultWebClient logs URI without the port number #30519
CGLIB BeanCopier falls back to ClassLoader.defineClass for public target #28699
BeanUtils.copyProperties() consumes large amount of memory #27246
📔 Documentation
RestTemplate initialization documentation in 6.0.x mentions Netty, yet no ClientHttpRequestFactory is present in the package. #31526
Correct typo in annotations.adoc #31519
Document X-Forwarded-* Headers #31491
Improve support and documentation for the "default" bean definition profile name #29071
Document that pertypewithin is supported by Spring AOP #25887
Document alternatives of using multiple PropertyPlaceholderConfigurers [SPR-9989] #14623
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.13 #31586
Upgrade to Reactor 2022.0.13 #31585



v6.0.13
⭐ New Features
Improve diagnostics for negative repeated text count in SpEL #31342
Improve diagnostics when repeated text size calculation results in overflow in SpEL #31341
UnknownContentTypeException is not Serializable #31283
Reintroduce FastClass in CGLIB class names for @Configuration classes #31272
🐞 Bug Fixes
HibernateJpaDialect and HibernateExceptionTranslator throw SQLExceptionTranslator-provided exception instead of returning it #31409
AnnotationScanner scanning leads to StackOverflowError with recursive annotation #31400
NamedParameterJdbcTemplate throws unexpected exception for null query #31391
HTTP server exchange observations have incorrect UNKNOWN status tag if the client disconnected #31388
Breaking change from 6.0.11 to 6.0.12 if you expect query parameters in @RequestBody #31327
SpEL's CompoundExpression.toStringAST() omits ? for null-safe navigation #31326
ConcurrentLruCache no longer supports capacity = 0 #31317
Using R2dbc transactional and non transactional on a database connection pool will fail for Oracle. #31268
AOT-generated code no longer set bean class for beans created from a @Bean method #31242
CGLIB proxy classes are no longer cached properly #31238
Illegal reflective access in ContextOverridingClassLoader.isEligibleForOverriding #31232
Fix RuntimeHintsPredicates matching rules for public/declared elements #31224
MultipartParser should respect read position #31110
WebClient reports 'Host is not specified' for URI with hostname and port, but without scheme #31033
R2DBC Connection is closed during transaction when using TransactionAwareConnectionFactoryProxy #28133
SpEL cannot evaluate or compile expression with null-safe void method invocation #27421
LazyResolutionMessage does not implement proper toString #21265
📔 Documentation
Document Kotlin declaration site variance subtleties #31370
Add missing conversionService field in doc example #31330
Clarify documentation on Spring Web MVC pattern comparison #31294
Improved documentation for MethodParameter#getAnnotatedElement #30397
Javadoc for BeanPropertyRowMapper.getColumnValue(ResultSet, int, Class) is inconsistent with code #29285
Referencing a @Bean method in a @Configuration class' @PostConstruct method leads to circular reference #27876
Incorrect reference information about CGLIB supported method visibility #25001
Clarify documentation for @Transactional on interfaces #23538
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.12 #31404
Upgrade to Reactor 2022.0.12 #31405



v6.0.12
⭐ New Features
ArithmeticException: long overflow on @Scheduled(fixedDelay = Long.MAX_VALUE, timeUnit = TimeUnit.MINUTES) #31210
Polish resolveArgument method in RequestResponseBodyMethodProcessor #31175
Update logging level in BeanValidationBeanRegistrationAotProcessor for validation exceptions #31147
Skip searching of nonexistent directory in PathMatchingResourcePatternResolver #31111
Add @Nullable to argValue in doSetValue() in Argument[Type]PreparedStatementSetter #31086
Optimize whitespace checks in StringUtils #31067
Missing proxy hint when using a simple JPARepository #31050
Register an override for an existing adapter in ReactiveAdapterRegistry #31047
DefaultListableBeanFactory#getBeanNamesForType does not take target type into account for FactoryBean resolution #30987
Give spring-core access to org.jboss.vfs for VfsUtils support on WildFly #30973
Use readNBytes in StringHttpMessageConverter when contentLength is available #30942
Skip array sort when the length of array not greater than 1 #30934
Avoid flushing for each SseEventBuilder entry #30912
Make DefaultGenerationContext(DefaultGenerationContext, String) constructor protected #30895
Add missing @Nullable annotations in AbstractResourceResolver subclasses in Spring MVC #30893
Performance bottlenecks while creating scoped bean instances #30883
Make bean initialization deterministic for multiple @Autowired methods on same bean class #30359
Optimize ClassUtils#getMostSpecificMethod #30272
Missing native hints for Hibernate Native Query proxy #29603
Check exception cause for @PropertySource(ignoreResourceNotFound) support #22276
Align validation metadata handling in PayloadMethodArgumentResolver #21852
🐞 Bug Fixes
Spring Boot fails with "does not reside in the file system: manifoldclass://622488023/.../" #31216
WebClientResponseException.getResponseBodyAs throws exception instead of returning null for empty body #31179
Possible classloader leak through incomplete clearing of annotation caches #31170
Spring LogFactory implementation deviates from original Apache LogFactory in terms of abstract method declarations #31166
graalvm native image feature PreComputeFieldFeature disable all netty native transports #31141
Bean injection fails due to nullSafeConciseToString() invoking isEmpty() on a Map/Collection proxy #31138
R2DBC: Skip release connection after nested with existing transaction #31133
SpelExpressionParser throws IllegalStateException instead of ParseException for invalid expression #31097
@DynamicPropertySource in @Nested test class cannot override dynamic properties from enclosing class #31083
Spring Boot WebFlux validation of invalid inputs #31045
TransactionalApplicationListenerMethodAdapter should find @TransactionalEventListener on target class method #31034
ScheduledAnnotationBeanPostProcessor: graceful shutdown should not interrupt currently running jobs #31019
TypeBootstrapContext constructor not called in custom types with Hibernate 6 #30924
MethodIntrospector.selectMethods(?) fails to find methods in case of special bridge method arrangement #30906
Spring webflux @ModelAttribute annotated methods not working with kotlin suspend methods #30894
Support Kotlin Serialization custom serializers #30870
Test AOT processing fails if a feature name prefix is reused #30861
NoUniqueBeanDefinitionException should make sure beansNameFound is serializable #29753
Permgen memory leak due to ClassInfo caching in java.beans.Introspector on JDK 11/17 #27781
Model.set() Kotlin extension method does not allow null value #27115
Allow PropertySourcesPlaceholderConfigurer subclass to customize PropertyResolver #26761
📔 Documentation
Fix documentation: Passing in Lists of Values for IN Clause does not work with JdbcTemplate #31228
Fix typo in comment in XML configuration example #31194
Document some non-nullable Kotlin extensions can throw NoSuchElementException #31189
Improve documentation on applicability of mapped interceptors with the Spring MVC config #31185
Add Javadoc since tags in FilePatternResourceHintsRegistrar #31174
Refine CORS documentation for wildcard processing #31143
Fix invalid type name in RSocket section of the reference documentation #31091
@Transactional on package-private/protected methods for class-based proxies #31057
Change Kotlin Any to be a nullable type in AOP refdoc examples #31015
Versioned redirect seems to all redirect to "current" version #31009
Javadoc for PathPatternParser.defaultInstance is outdated #30976
Clarify R2DBC ConnectionAccessor and DatabasePopulator exception declarations #30932
Document purpose of name attribute in @PropertySource #30195
Document how to configure the ApplicationEventMulticaster used by the ApplicationContext #29996
Document inference of destroy methods with Java config more prominently #29546
Revise FilePatternResourceHintsRegistrar API and improve documentation #29161
Document how to configure the cache infrastructure globally #28250
SpEL T() operator not able to locate user types with default StandardTypeLocator configuration #26253
Propagation REQUIRES_NEW may cause connection pool deadlock #26250
Modify DefaultMessageListenerContainer javadoc #25503
Doc: Avoid deadlock in @PostConstruct through SmartInitializingSingleton or ContextRefreshedEvent #25074
Document expected behavior of a method annotated with multiple @Scheduled annotations #23959
Improve documentation for FactoryBean's getObject automatic call through @ManagedResource [SPR-17139] #21676
Injecting EntityManagers through constructor injection (and at non-@PersistenceContext injection points in general) [SPR-10443] #15076
🔨 Dependency Upgrades
Upgrade to Context Propagation 1.0.5 #31223
Upgrade to Micrometer 1.10.11 #31221
Upgrade to Reactor 2022.0.11 #31222



v6.0.11
⭐ New Features
Reduce WARN level log output during test AOT processing #30867
Avoid need for reflection hints for MBeanExporter in native image #30846
Tolerate AnnotationUtils.isCandidateClass call with null as annotation type #30842
Simplify DefaultSingletonBeanRegistry.isDependent() #30839
Add missing @Nullable annotations in ContentDisposition.Builder #30820
Provide explicit support for collections, maps, and arrays in ObjectUtils.nullSafeConciseToString() #30810
Extend list of supported types in ObjectUtils.nullSafeConciseToString() #30805
Align ConcurrentMapCacheManager locking behavior with CaffeineCacheManager #30780
Improve logging for missing dependencies in MicrometerObservationRegistryTestExecutionListener #30747
Optimize KotlinReflectionParameterNameDiscoverer #30725
Change InvocableHandlerMethod#invokeSuspendingFunction return type to Object #30716
ResolvableType.hasUnresolvableGenerics() should cache its result #30713
Deprecate RootBeanDefinition(ResolvableType) constructor #30704
Reinstate dependency injection support for legacy JSR-250 @javax.annotation.Resource annotation #30695
Translate SQL Exception with State S0001 and Vendor Code 2628 to a Spring Exception in MSSQL 2019 #30681
Ensure Spring LogFactory contains all public methods from Apache LogFactory #30668
Infer hints required for aspects #28711
Improve diagnostics for CGLIB ClassLoader issues with shared classes in parent ClassLoader #25940
JdbcTemplate does not call handleWarnings in case of exception #23106
Avoid illegal reflective access in ContextOverridingClassLoader.isEligibleForOverriding #22791
🐞 Bug Fixes
Revert changes to toString() in FieldError #30799
For a prototype bean, if first-time rejected value is null, subsequent value will wrongly be null always #30794
Fix log level on error with @TransactionalEventListener #30776
ClassCastException in AbstractBeanDefinition.getBeanClassName() when getting bean multithreaded #30773
SerializableTypeWrapper does not consistently catch InvocationTargetException #30764
NPE in MvcUriComponentsBuilder with no-arg target method on interface #30756
ArithmeticException: long overflow on @Scheduled(fixedDelay = Long.MAX_VALUE) #30754
Jackson2ObjectMapperBuilder breaks when modules customizer follows modulesToInstall #30751
NullPointerException in reactive TransactionalOperatorImpl #30729
MicrometerObservationRegistryTestExecutionListener uses wrong ClassLoader to detect dependencies #30726
Support [package-]private init/destroy methods in AOT mode #30724
Package-private init/destroy methods are not always invoked #30718
Generic RedisKeyExpiredEvent not delivered to @EventListener anymore in 6.0.9 #30712
Explicit BeanDefinition#targetType is not honoured in AOT scenarios #30689
Spring ORM SpringBeanContainer when trying to create a bean fails with not found bean definition, and fallbacks to default hibernate bean creation #30683
PathResourceResolver#resolve*Internal is missing @Nullable declarations #30601
Code generation should only apply shortcut if the target method is not ambiguous #29278
📔 Documentation
Update STOMP documentation with the new guidelines #30857
Clarify ReactiveTransactionManager exception declarations #30817
Doc: JdbcTransactionManager vs DataSourceTransactionManager #30802
Fix typo in Javadoc for BeanDefinitionDsl.kt #30798
Remove @Aspect for classes containing only @Pointcut declarations in reference documentation #30790
NestedRuntimeException javadoc not updated after implementation change #30748
AbstractMessageListenerContainer documentation and code disagree regarding log level #30730
Fix link text from "null" to "Component Classes" in Testing chapter #30714
Document that RowCallbackHandler can be used with NamedParameterJdbcTemplate #30705
Javadoc HTML tables are no longer rendered properly since upgrade to Java 17 #30701
Fix typo in UriUtils Javadoc #30598
Fix example in Javadoc for MultipartBodyBuilder #30593
Elaborate on ShallowEtagHeaderFilter limitations #30517
Document how to configure a custom LocalContainerEntityManagerFactoryBean to work with native #30498
Document that @Sql requires spring-jdbc and spring-tx on the classpath #30280
Document limitations of Servlet Filter observations #29398
Warn against direct usage of Servlet API in WebFlux applications #28872
ResultSet holdability into the View layer broken by Hibernate 5 #26557
🔨 Dependency Upgrades
Upgrade to micrometer-bom 1.10.9 and context-propagation 1.0.4 #30860
Upgrade to me.champeau.jmh 0.7.1 #30690
Upgrade to Reactor 2022.0.9 #30871



v6.0.10
⭐ New Features
ClassLoader can be null in DeserializingConverter and should be annotated with @Nullable #30670
Introduce TestExecutionListener for Micrometer's ObservationRegistry in the TestContext framework #30658
Add missing hint for ResourceEditor #30628
Add missing hint for converting String to URI #30627
Redesign inner Pointcut implementations as standalone classes #30621
Add missing @Nullable in DefaultJmsListenerContainerFactory #30620
Handle custom JMS acknowledgment modes as client acknowledge #30619
Declare Advisor#isPerInstance() as default method #30614
Improve error message for unsupported character in SpEL expression #30602
Multipart data is always read irrelevant of handler response #30590
Performance optimization in AbstractBeanFactoryBasedTargetSource.hashCode() #30576
Log a warning when commons-logging is in the classpath #30575
Always use MethodArgumentNotValidException(MethodParameter, BindingResult) constructor #30558
Remove non-empty filename check in ContentDisposition builder #30537
Add missing EntityManagerFactory hints for SharedEntityManagerCreator #30523
Disable Hibernate reflection optimizer with native #30521
Introduce a method in MockHttpServletRequestBuilder to set remote address #30497
Skip class transformer in PersistenceUnitInfoDescriptor for native images #30492
@Bean 'lite' mode not supported if @Bean methods are not declared locally #30449
Align HibernateJpaVendorAdapter with Hibernate ORM 6.2 #30288
Add nested propagation support to R2dbcTransactionManager #30134
🐞 Bug Fixes
Cron expression scheduling might be triggered 1 millisecond earlier #30666
Change of behaviour for UUID in bean validation output in v5.3.27 #30661
Test context cache stats are not logged when ApplicationContext fails to load #30635
Inconsistent ProxyCallbackFilter#equals/hashCode methods in CglibAopProxy #30615
SpEL's CompoundExpression.toStringAST() incorrectly includes . for indexed properties #30610
NPE in ReactiveTransactionSupport.unwrapIfResourceCleanupFailure #30597
CollectionFactory.createMap(HashMap.class, 0) now returns a LinkedHashMap rather than a HashMap #30596
ThreadLocalTargetSource does not include actual target bean name in NamedThreadLocal #30581
ApplicationListenerMethodAdapter inconsistently publishes events from CompletableFuture #30578
Unsupported SQL type: TIMESTAMP_WITH_TIMEZONE when using OffsetDateTime with MySQL #30556
SpringBeanContainer not called with Hibernate ORM 6.2 #30545
WebFlux returns 406 instead of RFC 7807 response for subtype of ProblemDetail #30533
HTTP Interface client cannot send URI query parameter with multipart request #30520
Transaction isolation level not working with R2dbcTransactionManager #30508
Support for AOT processing with GraalVM tracing agent is not consistent #30511
For @Bean method that returns null, @Autowired injects NullBean instead of null for cached arguments #30485
MediaType property binding issue in native builds #30491
InjectionMetadata AOT contributions do not check for existing property value #30476
Spring Framework 6.0.8 appears to cause issues in OSGi environment #30389
Empty @RequestMapping method should match both "" and "/" consistently #30293
EclipseLinkJpaDialect: Unexpected default isolation levels #29997
Memory leak with CglibAopProxy$ProxyCallbackFilter #26266
📔 Documentation
Fix markup issue in Javadoc of QuartzCronField #30646
Document @DirtiesContext semantics when declared at the class level and method level #30623
Add missing Javadoc for RegisteredBean.resolveAutowiredArgument() #30609
Fix invalid link in transaction resources #30570
FileSystemUtils::deleteRecursively Javadoc refers to File instead of Path #30554
Improve Javadoc for ExchangeFilterFunction #30543
Update Javadoc and reference doc for WebMvcConfigurer to mention Boot's HttpMessageConverters #30538
Add Javadoc since to InjectedElement.shouldInject() #30512
Fix wording in r2dbc Statement Filters section of ref docs #30482
Typo in Spring official documentation #30473
Link for @javax.annotation.Nonnull is wrong in Javadoc for Spring's @NonNull #30455
Improve how the build deals with javadoc invalid references #30428
Docs: Remove duplicate in SpEL feature list #30404
Document which @Scheduled attributes support SpEL expressions #29290
🔨 Dependency Upgrades
Upgrade to micrometer-bom 1.10.8 and context-propagation 1.0.3 #30657
Upgrade to Reactor 2022.0.8 #30655



v6.0.9
⭐ New Features
Consistent support for MultiValueMap and common Map implementations in CollectionFactory #30440
Introduce internal constants for implicit bounds in TypeUtils #30423
Update major/minor version properties in MockServletContext #30395
Reject null and empty SpEL expressions #30371
Support Test AOT processing with GraalVM tracing agent and Native Build Tools #30281
Introduce Environment.matchesProfiles() for profile expressions #30206
Optimize MultiValueMap iteration operations #29972
🐞 Bug Fixes
Respect TaskDecorator configuration on DefaultManagedTaskExecutor #30442
Qualifiers registered programmatically are not supported by AOT #30410
Support for InjectionPoint in bean factory methods when using AOT #30401
Bean methods with generic array/varargs parameters break native compilation #30407
ApplicationListenerMethodAdapter supports non-matching generic events #30399
Processing several @PersistenceContext injection points on the same class with AOT generates code that does not compile #30437
Make maximum SpEL expression length configurable #30380
Record beans do not compile to native images #30383
Missing resource hint for @PropertySource#value #30376
ApplicationEventPublisher - PayloadApplicationEvent not received by EventListener if event fired from child context #30360
StringDecoder.decode() should release chunks on cancellation #30299
Quote '?' in Quoted Printable filename #30252
Missing reflection hint for custom PropertySourceFactory in native image #30175
Aot generated sources fail to compile with 'File name too long' error #29846
📔 Documentation
Update package-info for CGLIB fork #30461
Clarify differences between GenericBeanDefinition and RootBeanDefinition #30444
Document how to configure FactoryBean with a configurable target with AOT #30434
Add Antora docs-build branch #30415
Switch the reference documentation to Antora #30414
@ResponseStatus documentation incorrect #30305
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.7 #30451
Upgrade to Reactor 2022.0.7 #30450



v6.0.8
⭐ New Features
Disable variable assignment in SimpleEvaluationContext #30326
Limit SpEL expression length #30325
Limit string concatenation in SpEL expressions #30324
Introduce StringUtils.truncate() #30290
Introduce ObjectUtils.nullSafeConciseToString() #30286
Introduce assertions against Cookie attributes in CookieResultMatchers for MockMvc #30285
Polishing #30267
Support SameSite cookie attribute in MockMvcHttpConnector #30264
Update MockCookie to make use of Servlet 6.0 APIs and semantics for "attributes" #30263
Refine initRequestBuilder in DefaultWebClient #30254
HttpServerErrorException contains not-serializable field of type DefaultResponseErrorHandler #30224
Add class hints for Jackson annotations on fields and methods #30208
Add HttpMethod reflection hint to ObjectToObjectConverterRuntimeHints #30201
Improve performance of canRead() in HttpMessageReader's #30192
Optimize array creation in SpEL ConstructorReference #30189
ConstructorResolver error hints about mixing indexed and named args #30169
Replace Collections.unmodifiableList(new ArrayList(..)) with List.copyOf() #30166
Add assert null validations for DefaultServerResponseBuilder #30157
Use InputStream.readAllBytes() in FileCopyUtils.copyToByteArray() #30155
Cache ServerHttpRequest::getMethod in AbstractServerHttpRequest #30139
Use String.equals() in LiteralPathElement #30138
Optimize some iterations in BodyExtractor and BodyInserter #30136
Add a couple missing java.time types to StatementCreatorUtils #30123
WebClient observations should not record CANCEL signals as aborted if response was received #30070
Destroy method not found in native image if concrete bean type is not exposed #29545
Contribute init/destroy lifecycle introspection hints for registered beans #29246
🐞 Bug Fixes
NPE thrown for nonexistent default-destroy-method in XML config #30301
Fix comparison of title in equals() and hashCode() of ProblemDetail #30294
SSE breaks with indenting serializer in WebMvc.fn #30277
@HttpExchange interface does not resolve return type correctly while using with suspending methods #30266
Increase max regex length in SpEL expressions #30265
Missing response information from client observation context when filter functions fail #30247
NullPointerException on timeout in HttpComponentsClientHttpConnector when using Apache HttpComponents #30245
Wrong MockRestRequestMatchers.header() method in spring-test being invoked (JDK issue?) #30220
Refine generic type management in AbstractMessageWriterResultHandler #30214
MvcUriComponentsBuilder.fromMethodCall breaks for controller with CharSequence return type #30210
Encode IPV6 Zone IDs (%) in ReactorServerHttpRequest #30188
Handle all exceptions for stored proc output param retrieval in SharedEntityManagerCreator #30161
Fix IllegalArgumentException that prevents STOMP DISCONNECT from reaching the client #30120
TypeNotPresentException: org/springframework/cglib/proxy/NoOp not present on Java 17 #30115
📔 Documentation
Add since tags to sameSite() and attribute() in CookieResultMatchersDsl #30308
Fix incorrect jakarta.inject artifact version #30270
Fix @PathVariable reference documentation code snippets #30243
Use diamond operator in examples in reference manual #30204
Fix example in Javadoc for @EnableWebSocket #30183
Fix anchor in link to "Web on Reactive Stack" chapter #30158
Documentation for Vavr's Try method to trigger transaction rollbacks #30108
Document that WebClient defaultStatusHandler do not apply to exchange* methods #30059
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.6 #30317
Upgrade to Reactor 2022.0.6 #30316



v6.0.7
⭐ New Features
Improve diagnostics in SpEL for matches operator #30144
Improve diagnostics in SpEL for repeated text #30142
Increase scope of regex pattern cache for the SpEL matches operator #30140
Minor updates in HandlerMappingIntrospector #30127
Skip parameter name resolution when not needed in AbstractAutowireCapableBeanFactory #30103
Remove extra copy of headers/cookies in WebClient #30092
Assert non-null arguments in DefaultServerRequestBuilder methods #30046
Jetty 12 support in WebFlux #29575
🐞 Bug Fixes
Gradle task processAot fails when Bean Validation API present but no provider found #30130
ContentDisposition::parse does not support Windows paths #30111
BindException raised instead of MethodArgumentNotValidException subclass #30100
Ensure reactive transaction rollback on commit error #30096
CaffeineCacheManager getCache method cause thread block #30066
RequestedContentTypeResolver does not ignore quality factor when filtering */* media types #29915
@Autowired/@Value does not work on inner bean in native #29803
Avoid rollback after a commit failure in TransactionalOperator #27572
SpEL: cannot call methods declared in java.lang.Object on a JDK proxy #25316
📔 Documentation
Add anchor rewrites in the reference documentation #30132
Fix minor spacings in webflux docs #30078
Add a list of observations produced by Spring Framework #30060
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.5 #30133




v6.0.6
⭐ New Features
Prefer request hostName and hostPort in ReactorServerHttpRequest #30062
Use readNBytes in ByteArrayHttpMessageConverter when contentLength is available #30010
Add missing @Nullable annotations to LogMessage.format methods #30006
Refine CoroutinesUtils#invokeSuspendingFunction contract #30005
@SubscribeMapping method not called when built as native image #30002
Provide method with ContextView instead of Context in ServerWebExchangeContextFilter #29691
Support @Value for record injection #28774
🐞 Bug Fixes
WebClient now requires scheme #30053
Move HttpServiceProxyFactoryExtensions.kt to spring-web module #30042
AutowireCapableBeanFactory.createBean does not prefer default constructor anymore #30041
Server request URL with spring-webflux 6.0.5 is in resolved IP6 format #30033
PathMatchingResourcePatternResolver can no longer handle paths containing spaces and special characters #30031
Catch defensively exception thrown by validation contraints AOT processing of Kotlin extensions #30037
Fix proxy hint Kotlin extensions #30025
WebFlux fails with WebDAV HTTP methods #29981
NullPointerException if passing an anonymous class to ReflectionsHint#registerType #29774
Native hints for package private methods on custom @Repository class #29764
Native version of webflux/r2dbc failed #29582
Protect JMS connection creation against prepareConnection errors #29116
SingleConnectionFactory - reconnection problem (AMQ Broker) #29115
📔 Documentation
Fix "Configuring a Global Date and Time Format" example #30034
@AspectJ argument name resolution algorithm is outdated in reference manual #30026
Update comment in Javadoc of ServletRequestPathFilter DispatcherServlet relating to DispatcherServlet #30014
Revise AspectJ examples in the reference manual #30003
Revise chomp and fold settings in reference documentation #30001
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.4 #30063



v6.0.5
⭐ New Features
Add RFC-8246 "immutable" attribute to CacheControl #29955
Allow MockRest to match header/queryParam value list with one Matcher #29953
DataBuffer should offer restricted access to underlying ByteBuffer #29943
Introduce HttpServiceProxyFactory#createClient Kotlin extension #29942
Support ProblemDetail serialization to XML with Jackson #29927
Refine TransactionalOperator.executeAndAwait nullability #29919
Early support for JDK 21 #29910
StringDecoder causes direct allocation of ByteBuffer #29889
Include all Hibernate query methods in SharedEntityManagerCreator's queryTerminatingMethods set #29886
Add native support for RSocketExchange. #29877
Add @Nullable to ProblemDetail.setProperty value argument #29868
Deprecate obsolete ConcurrentExecutorAdapter for removal in 6.1 #29865
ContentDisposition.toString() should include both regular and extended filename parameter #29861
Refine Jackson2ObjectMapperBuilder#configureFeature exception handling #29859
Flexible constructor resolution in AutowireCapableBeanFactory.createBean(Class) #29855
Optimize CorsConfiguration::checkHeaders #29853
Spring Web RestTemplate http.client.requests Metrics No Longer Have client.name Tag #29839
Allow @Aspect classes to extend concrete @Aspect classes #29830
Custom Constraint Validator not work with native image #29823
Deprecate HttpStatus 103 CHECKPOINT in favor of new EARLY_HINTS #29816
Fix R2dbcTransactionManager debug log: don't log a Mono #29800
Improve generated default name for @JmsListener subscription #29790
Support double-quoted values in HttpHeaders::getValuesAsList #29785
Support method validation for an interface only proxy like an HTTP interface client #29782
ResourceHandlers cannot resolve static resources without wildcard patterns #29739
Release R2DBC connection when cleanup fails in transaction #29703
Spring Webfilters and Kotlin Coroutines #29672
Support "multipart/mixed" and "multipart/related" in DefaultServerWebExchange #29671
@JsonDeserialize(builder = ...) does not work in GraalVM native image #29646
Combined class and method @RequestMapping without patterns should match root path as both "" and "/" #29625
Prefer problem detail media type independent of ordering in Accept header #29588
Restrict forwards in MockMvcWebConnection to 100 #29557
@JsonNaming strategy is not supported in GraalVM native image #29386
SQL supplier in R2DBC DatabaseClient is eagerly invoked #29367
Set reason for WebSocket CloseStatus.SESSION\_NOT\_RELIABLE #29220
HttpComponentsClientHttpConnector hangs when host is invalid #29156
Add ResponseEntity.ofNullable() to deal with non-Optional nullable objects #29117
Provide access to all configured interceptors in AbstractHandlerMapping #28985
Support Optional in PayloadMethodArgumentResolver #28945
Remove clear() call to release method of WeakEntryReference and SoftEntryReference #28863
Add MockMvc.multipart() Kotlin extensions with HttpMethod #28634
WebSocketConnectionManager constructor with prepared URI #28524
Deprecate Base64Utils #28434
List supported media types in HttpMediaTypeNotSupportedException when given invalid input media types #28062
Introduce getContentAsString and getContentAsByteArray to Resource #24651
Support Optional in Jackson 2 message converters #24498
Refine ModelAttributeMethodProcessor Kotlin exception handling #23846
🐞 Bug Fixes
DefaultHandlerExceptionResolver::doResolveException no longer returns ModelAndView customized via protected method #29971
ex.getPropertyName() is not initialized in ResponseEntityExceptionHandler#handleTypeMismatch #29959
Violation of a unique index on insert in MSSQL is translated to DataIntegrityViolationException instead of DuplicateKeyException #29950
PathMatchingResourcePatternResolver duplicates module/file resources #29934
ResourceUrlEncodingFilter throws StringIndexOutOfBoundsException in tests #29933
Explicit target ClassLoader for interface-based proxies in MvcUriComponentsBuilder #29913
org.springframework.web.context.ContextLoader cannot be loaded in a native image #29905
MockHttpServletRequest InputStream has been made static in gh-29125 #29901
MvcUriComponentsBuilder adds trailing slash if path is defined at controller level only #29897
Closing an ApplicationContext leads to Exception at ExecutorServiceAdapter #29892
Set WebClient Observation as current in reactor context #29891
Client request observation contributes full URI template to uri meter tag values #29885
HTTP client observations miss uri keyvalue for "/" requests #29879
ProblemDetail is missing serialization hints for Native Image #29801
Invalid Accept header results in IllegalStateException #29794
AOT processing fails with Set if type doesn't implement Comparable #29792
CSRF token not available to FreeMarker templates #29787
Fail more explicitly when AOT attempts to handle a bean definition that uses an instance supplier #29556
WebSocket stats not updated correctly when sessions cleared #29375
MockHttpServletRequest#setContentType fails with StringIndexOutOfBoundsException #29255
InMemoryWebSessionStore#changeSessionId makes blocking calls to UUID.randomUUID #29212
ReactorServerHttpRequest does not reflect forwarded host and port when forwarding-header-strategy=native or cloud platform detected #28601
Propagate CoroutineContext in reactive transaction #27308
Bean validation doesn't work on Kotlin coroutines controller parameters #23499
📔 Documentation
Update @DynamicPropertySource examples regarding changes in Testcontainers #29939
Refine ControllerMappingReflectiveProcessor documentation #29938
Clarify semantics of primitivesDefaultedForNullValue in BeanPropertyRowMapper #29923
Document instrumentation for RestTemplate and/or WebClient #29904
CronExpression::parse has invalid Javadoc #29884
Update Javadoc on async request timeout value in HandlerFunctionAdapter #29882
Document how to mark an observation as an error if the exception was handled #29848
Document that bean instance suppliers are not supported with AOT/native #29835
Clearly document that DataClassRowMapper supports Java records #29814
Increase number of TOC levels in generated PDF documentation #29781
Consistent @Bean method return type for equivalence with XML example #29338
Outdated Javadoc for AbstractApplicationContext.postProcessBeanFactory #29064
Improve documentation on support for a language-only Locale requested via "Accept-Language" #28673
Update the reference documentation with limitation related to @Bean return type #29944
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.4 #29899
Upgrade to Reactor 2022.0.3 #29900



v6.0.4
⭐ New Features
Add native support for @Convert on JPA entities #29771
@RequestPart dto not configured for reflection in aot #29749
Avoid wasted memory on empty maps and sets #29742
Compatibility with Hibernate ORM 6.2 #29736
Add Kotlin DSL support for MockMVC andExpectAll #29727
Add ExecutingResponseCreator to delegate request and response #29721
JmsTemplate.convertAndSend throws NullPointerException during shutdown #29706
Extract ResourceEntityResolver HTTPS schema resolution fallback #29697
@Configuration classes with Kotlin in native-image are broken #29663
Introduce Kotlin DSL for ResultActions.andExpectAll() #27317
🐞 Bug Fixes
ResourceHandlers cannot resolve static resources with certain wildcard patterns #29712
Conflict on insert gets translated to DataIntegrityViolationException instead of DuplicateKeyException in Spring 6 #29699
📔 Documentation
fix typo in core-aot.adoc #29788
Polish #29727: Mention Kotlin andExpectAll in reference manual #29766
Update Jakarta Mail info in ref docs #29707
Trigger/TriggerContext reference documentation outdated #29702
Improve documentation for literals in SpEL expressions #29700
Small fixes and improvements to the reference documentation #29694
Fix manipulating property sources example in Javadoc for ConfigurableEnvironment #29693
🔨 Dependency Upgrades
Upgrade to Micrometer 1.10.3 #29802
Upgrade to Reactor 2022.0.2 #29797



v6.0.3
⭐ New Features
Throw PessimisticLockingFailureException/CannotAcquireLockException instead of plain ConcurrencyFailureException #29675
Introduce additional constructors in MockClientHttpRequest and MockClientHttpResponse #29670
Fall back to JdkClientHttpConnector as ClientHttpConnector #29645
Optimize object creation in RequestMappingHandlerMapping#handleNoMatch #29634
Align multipart codecs on client and server #29630
Deprecate "application/graphql+json" media type after spec changes #29617
HTTP interface client does not call FormHttpMessageWriter when writing form data #29615
ProblemDetail doesn't override the equals method #29606
Add title to SockJS iFrames for accessibility compliance #29594
Forbid loading of a test's ApplicationContext in AOT mode if AOT processing failed #29579
Deprecate JettyWebSocketClient in favor of StandardWebSocketClient #29576
Improve options to expose MessageSource formatted errors for a ProblemDetail response #29574
Make @ModelAttribute and @InitBinder annotations @Reflective #29572
Update BindingReflectionHintsRegistrar to support properties on records #29571
🐞 Bug Fixes
Cannot use WebDAV methods in Spring MVC 6.0 anymore #29689
AnnotatedElementUtils.findMergedRepeatableAnnotations does not fetch results when other attributes exist in container annotation #29685
BeanWrapperImpl NPE in setWrappedInstance after invoking getPropertyValue #29681
SpEL ConstructorReference does not generate AST representation of arrays #29665
NullPointerException in BindingReflectionHintsRegistrar for anonymous classes #29657
DataBufferInputStream violates InputStream contract #29642
Component scanning no longer uses component index for @Named, @ManagedBean, and other Jakarta annotations #29641
Fix canWrite in PartHttpMessageWriter #29631
NoHandlerFoundException mistakenly returns request headers from ErrorResponse#getHeaders #29626
URI override for @HttpExchange doesn't work if there are both URI and @PathVariable method parameters #29624
Unnecessary parameter name introspection for constructor-arg resolution (leading to LocalVariableTableParameterNameDiscoverer warnings) #29612
Set detail from reason in both constructors of ResponseStatusException #29608
SpEL string literal misses single quotation marks in toStringAST() #29604
AOT code generation fails for bean of type boolean #29598
request-scoped bean with @Lazy fails in native image (due to missing detection of CGLIB lazy resolution proxies) #29584
500 error from WebFlux when parsing Content-Type leads to InvalidMediaTypeException #29565
ConcurrentLruCache implementation is using too much heap memory #29520
Duplicate key violation gets translated to DataIntegrityViolationException instead of DuplicateKeyException in Spring 6 #29511
SpEL: Two double quotes are replaced by one double quote in single quoted String literal (and vice versa) #28356
📔 Documentation
Fix ErrorResponse#type documentation #29632
Fix typo in observability documentation #29590
Consistent documentation references to Jakarta WebSocket (2.1) #29581
Unrendered asciidoc headings in reference documentation #29569
Document observability support #29524
🔨 Dependency Upgrades
Upgrade to Apache HttpClient 5.2 #29627
Upgrade to Gradle 7.6 #29583
Upgrade to Micrometer 1.10.2 #29678
Upgrade to Reactor 2022.0.1 #29679




v6.0.2
⭐ New Features
Rely on standard parameter name resolution in Bean Validation 3.0 #29566
🐞 Bug Fixes
ResponseStatusException does not use the reason to set the "detail" field #29567
LocalVariableTableParameterNameDiscoverer logs many warnings with Hibernate validation #29563
📔 Documentation
org.springframework.web.multipart.commons not found #29562



v6.0.1
⭐ New Features
Make SourceHttpMessageConverter optional #29535
Deprecate LocalVariableTableParameterNameDiscoverer completely (avoiding its exposure in native images) #29531
Make GeneratorStrategy.generate unreachable on native #29521
Update LogAdapter to allow build-time code removal #29506
🐞 Bug Fixes
Unhandled exceptions should mark Servlet observation outcome as error #29512
📔 Documentation
Broken link in documentation section 6.10 #29554
Fix Javadoc link text in BindingResult #29551
Fix some typos in Kotlin WebClient example code #29538
Fix link to Bean Utils Light Library in BeanUtils Javadoc #29534
Fix link to WebFlux section in reference manual #29525
Document RuntimeHints testing strategies #29523
Reorganize and modularize the Testing chapter in the reference manual #29522
Document switch to SQLExceptionSubclassTranslator in the upgrade guide #29518
Update documentation to mention Java 17+ baseline #29514
Link to Spring WebFlux section is broken #29513
Update javadoc of Jackson-based decoders to reflect 2.14 baseline #29508
Code example has callout from a different code example #29505
Code listing callouts are displayed incorrectly in core-beans.adoc #29457
Fix a syntax error in an XML listing in core-validation.adoc #29456
🔨 Dependency Upgrades
Upgrade to Jackson 2.14.1 #29539
Upgrade to Kotlin 1.7.21 #29543



v6.0.0
See What's New in Spring Framework 6.x and Upgrading to Spring Framework 6.x for upgrade instructions and details of new features.

⭐ New Features
Avoid direct URL construction and URL equality checks #29486
Simplify creating RFC 7807 responses from functional endpoints #29462
Allow test classes to provide runtime hints via declarative mechanisms #29455
📔 Documentation
Align javadoc of DefaultParameterNameDiscoverer with its behavior #29494
Document AOT support in the TestContext framework #29482
Document Ahead of Time processing in the reference guide #29350
🔨 Dependency Upgrades
Upgrade to Reactor 2022.0.0 #29465


v6.0.0-RC4 Pre-release
⭐ New Features
Introduce DataFieldMaxValueIncrementer for SQL Server sequences #29447
Introduce findAllAnnotationsOnBean variant on ListableBeanFactory #29446
Introduce support for Jakarta WebSocket 2.1 #29436
Allow @ControllerAdvice in WebFlux to handle exceptions before a handler is selected #22991
🐞 Bug Fixes
Bean with unresolved generics do not use fallback algorithms with AOT #29454
TomcatRequestUpgradeStrategy is not compatible with Tomcat 10.1 #29434
Autowiring of a generic type produced by a factory bean fails after AOT processing #29385
📔 Documentation
Reference PDF containing full docs not available #28451
🔨 Dependency Upgrades
Revisit Servlet API baseline: Servlet 6.0 in the build, Servlet 5.0 compatibility at runtime #29435
Upgrade to Context Propagation 1.0.0 #29442
Upgrade to Jackson 2.14.0 #29351
Upgrade to Micrometer 1.10.0 #29441



v6.0.0-RC3 Pre-release
⭐ New Features
Support @RequestPart arguments for @HttpExchange methods #29420
Processing of charset in Content-Type Header not case-insensitive #29416
Allow for external customization and i8n of the "title" of an RFC 7807 response #29407
Automatically register directories for registered resource hints #29403
Allow registration of resource hint for root directory #29402
Load ApplicationContextFailureProcessor implementations from spring.factories #29387
Simplify mapping of custom exception to an RFC 7807 response in ResponseEntityExceptionHandler #29384
Introduce SimpleValueStyler for use with ToStringCreator #29381
Make DefaultValueStyler extensible #29380
Introduce DataFieldMaxValueIncrementer for MariaDB #29379
Handle case where ResponseEntity and ProblemDetail don't agree on the HTTP status to use #29378
Provide AOT support for HttpServiceProxyFactory clients #29271
Revise logging in the TestContext framework #29229
🐞 Bug Fixes
Align server observation contextual names with OTel semantic conventions #29424
Matching path pattern is not set in reactive ServerRequestObservationContext #29422
PartEvent upload fails with JdkClientHttpConnector #29400
Native image FileSystem should not be closed after classpath scanning #29397
AOT processing loses bean aliases #29391
WebClient and WebFlux Observation do not propagate context #29388
HttpServiceProxyFactory raises IllegalStateException if created through the builder and declared as a bean #29376
Multiple @ImportRuntimeHints in the type hierarchy should be supported #29361
🔨 Dependency Upgrades
Upgrade to Jackson 2.14.0-rc3 #29405




v6.0.0-RC2 Pre-release
⭐ New Features
Ensure classpath checks can be evaluated at build-time #29352
Register reflection hints for JPA persistence callbacks #29348
Check @RegisterReflectionForBinding specifies at least one class #29346
Introduce builder API for AOT processor Settings #29341
Allow in-progress AOT processing to be detected #29340
Reorganize HTTP Observation types #29334
Perform basic property determination without java.beans.Introspector #29320
Add Kotlin data class components support to BindingReflectionHintsRegistrar #29316
Switch HttpServiceFactory and RSocketServiceProxyFactory to builder model for programmatic configuration first #29296
Introduce PreComputeFieldFeature based on GraalVM FieldValueTransformer API #29081
Introduce SPI for processing ApplicationContext failures in the TestContext framework #28826
SimpleEvaluationContext should disable array allocation #28808
DateTimeFormatterRegistrar should fall back to ISO parsing by default #26985
🐞 Bug Fixes
Avoid NPEs in DefaultServerRequestObservationConvention #29359
ServerHttpObservationFilter can throw ClassCastException when NoopObservation used #29356
ServerHttpObservationFilter should not overwrite response status #29353
Possible regression in PathMatchingResourcePatternResolver #29333
Jackson Decoder ignores method parameter information when resolving media types for custom ObjectMapper registration #29307
Deprecation warning for composed Bean Validation constraint annotation #29206
Code generation no longer supports a list of inner BeanDefinitions #29075
NamedParameterUtils has broken square brackets handling #27925
📔 Documentation
Refine @RegisterReflectionForBinding Javadoc #29345
Mention @ImportRuntimeHints in RuntimeHintsRegistrar Javadoc #29337
Add Javadoc since for SimpleInstantiationStrategy.setCurrentlyInvokedFactoryMethod() #29326
Use correct RFC number for ProblemDetail support in Javadoc #29302
🔨 Dependency Upgrades
Upgrade to Derby 10.16 #29344
Upgrade to GraalVM 22.3.0 #29080
Upgrade to Jackson 2.14.0-rc2 #29343



v6.0.0-RC1 Pre-release
⭐ New Features
Add native support for ExceptionHandler and ProblemDetail #29297
Refine SQLErrorCodesFactory reachability on native images #29294
Refine BindingReflectionHintsRegistrar infrastructure #29279
Normalize URIs returned from FileSystemResource.getURI() #29275
Redesign AOT Processors #29266
Simplify TestRuntimeHintsRegistrar API #29264
UrlResource#getFilename() should return unencoded file name #29261
Add reflection hints for EmbeddedDatabaseFactory$EmbeddedDataSourceProxy#shutdown #29259
Change keyvalue name to http.url in server observations #29254
Code generator should not use reflection for protected artifacts #29253
Use MethodArgumentNotValidException for model attribute arguments #29251
Allow TestCompiler SourceFile to work with records #29236
Generate matching inner class for inner class configuration #29213
Kotlin functional config DSL should prevent beans to be registered twice in AOT-optimized contexts #29211
Allow BeanRegistration target to be any arbitrary class name #29207
Add support for Charset to value code generator #29186
Enable HTTP and HTTPS on native in spring-web module #29185
Optimize native footprint by avoiding using ModuleFinder.ofSystem() at runtime #29183
Introduce AotProcessor to invoke the AOT engine on an application #29181
Move TestCompiler to dedicated package #29175
Use java.nio and FileSystems to resolve files in PathMatchingResourcePatternResolver #29163
Replace ApplicationContextAotInitializer with an AotApplicationContextInitializer interface #29157
Enable default TestExecutionListeners in JUnit 4 and TestNG base test classes #29149
Support cglib generated classes with TestCompiler #29141
Infer AOT proxies created by ProxyFactoryBean #29097
HTTP interface client ignores @DateTimeFormat on path variable #29095
Integrate the Micrometer Context Propagation library #29056
Upgrade RestTemplate to HttpClient 5 #28925
Improve resource handling for empty files contained in jars #28850
Allow for external customization and i8n of the "detail" of an RFC 7807 response #28814
Revise CookieLocaleResolver to use ResponseCookie #28779
Optimize SpEL and property placeholder support for @Async qualifiers #28549
Customization for ObjectReader and ObjectWriter #28401
Improve exception message if MultipartParser can not find end of body #28067
Revisit AOT constructor and factory method resolution #27920
Support CBOR and Protobuf with Kotlin Serialization #27628
CGLIB does not allow packages to start with "java" #27622
Support comma-delimited list of origin patterns in @CrossOrigin #27606
Improve the fluency of the ResponseCreator API #27280
Support for problem details based on RFC 7807 #27052
Add fast-path for no-args constructor in BeanUtils.instantiateClass #24104
Resolve generic type in more complex scenarios #23418
🐞 Bug Fixes
Hints for CGLIB proxies are not consistently registered #29295
Ensure context caching works properly during AOT runtime in the TestContext framework #29289
AbstractJackson2Encoder encodes empty Flux to invalid JSON #29274
RuntimeHints accessors have inconsistent naming #29269
ClassPathResources with same absolute path and same ClassLoader should be equal #29263
HTTP URL KeyValue should provide entire request URL as a value #29257
Hints for cglib configuration classes are not registered with a valid name #29252
Add ConstantReadableJavaField caching in ConstantFieldSubstitutionProcessor #29250
StringUtils should parse locale strings without country but with variant #29248
Generated code does not take visibility of method if it is defined in a parent class #29245
RestTemplate Observation is started without a complete tracing context #29234
Fix Outcome KeyValues in HTTP observations #29232
HTTP ObservationConvention implementations miss contextualName #29231
Refine ConstantFieldSubstitutionProcessor error handling #29219
Align RuntimeHintsAgent behavior with GraalVM reflection changes #29205
Class meta-annotated with @Reflective and annotated with @RegisterReflectionForBinding is only processed by SimpleReflectiveProcessor #29193
Spring Web 6.0.0-M6 breaks Kotlin support for (De-)Serialization in some edge-cases #29192
BeanDefinitionMethodGenerator should not generate code in the javax package name #29123
CGLIB proxies are not used at runtime on @Configuration classes in AOT mode #29107
Remove call to requestCompleted in RequestMappingHandlerAdapter #29002
📔 Documentation
Document PartEvent API #29170
Switch to spring-asciidoctor-backends #29162
Improve Javadoc of BeanRegistrationAotProcessor to describe the "runtime replacement use case" #29126
Improve Javadoc of GeneratedMethods#add to describe naming conventions #28997
🔨 Dependency Upgrades
Update Reactor Netty 2.0 version to 2.0.0-SNAPSHOT #29247
Upgrade to ASM 9.4 #29305
Upgrade to Context Propagation 1.0.0-RC1 #29273
Upgrade to JUnit 5.9.1 #29179
Upgrade to Kotlin 1.7.20 #29225
Upgrade to Micrometer 1.10.0-RC1 #29241
Upgrade to Reactor 2022.0.0-RC1 #29268




v6.0.0-M5 Pre-release
⭐ New Features
HibernateTransactionManager compatibility with Hibernate 6.0/6.1 #28813
Reject JDK proxy hint registration for sealed interfaces #28786
Provide SerializationHintsPredicates in RuntimeHintsPredicates #28772
Deprecate convention-based annotation attribute overrides in favor of @AliasFor #28760
Add native image support for WebSocket STOMP messaging #28754
Simplify hint registration for Spring AOP proxies #28745
Only use JPMS exports as we don't need reflection access #28733
Open GraalVM internals to the ConstantFieldFeature #28732
Add support for records in BindingReflectionHintsRegistrar #28721
Replace java.util.Date and TimeUnit usage in scheduling with appropiate java.time classes #28714
Jackson well-known module support in native image #28709
RuntimeHints missing for WebFlux #28701
Add runtime hints for AbstractHandshakeHandler #28697
native-image: Problem with Scheduled annotation #28696
native-image: Support for MethodValidationPostProcessor #28689
native-image: Field 'PROPAGATION_REQUIRED' not found in class TransactionDefinition #28688
Allow dynamic properties in ProblemDetail #28665
Add Kotlinx Serialization support to BindingReflectionHintsRegistrar #28635
Add ResourceHints registrar for classpath patterns #28626
Replace build-time initialization by constant field evaluation at build-time #28624
Add reflection hints for data binding in Web controllers #28623
Add reflection hints for HttpEntity used in Web controllers #28622
Introduce ResourcePatternHint#toRegex #28620
Add ifPresent utility methods on RuntimeHints #28617
Register native hints for jakarta.inject annotations #28614
Use PathPatternParser by default in Spring MVC #28607
Support that the same RuntimeHintsRegistrar can be specified multiple times and invoked only once #28594
Rationalize naming strategy in ApplicationContextAotGenerator #28585
Add minimal Kotlin DSL RouterFunction attributes support #28569
Introduce attribute support in Kotlin RouterFunction DSL #28567
Allow ApplicationContextAotGenerator to generated better class names #28565
Allow BeanRegistrationAotContributions to provide BeanRegistrationCodeFragments customization #28557
Introduce RuntimeHints predicates utilities #28555
Deprecate trailing slash match and change default value from true to false #28552
Improve options for exception handling in HTTP interface client #28533
Add reflection hints for Web controllers #28518
Ambiguous behavior for ClassNameGenerator::generateClassName #28517
Support module path scanning for "classpath*:" resource prefix #28506
Refactor HttpServiceProxyFactory to be suitable as an infrastructure bean #28505
Allow custom HTTP method with @HttpExchange methods #28504
Create UrlResource factory methods that throw unchecked exceptions #28501
Introduce utility to register hints for an annotation that uses AliasFor #28497
Support property placeholders in url attribute of @HttpExchange #28492
Support default methods in @HttpExchange interface #28491
Introduce AotDetector mode #28474
Introduce a meta-annotation that indicates the annotated element requires reflection hints #28469
Add level guards for trace logging in SpringFactoriesLoaderRuntimeHintsRegistrar #28465
Add resolver for request attributes for @HttpExchange methods #28458
Add WebFlux equivalent of ResponseEntityExceptionHandler #28439
Avoid collectList when sending a Flux of objects as JSON using WebClient #28398
Avoid loading XML files for default SQL exception translation #28216
Refine runtime hint conditions #28126
Provide testing infrastructure for RuntimeHints #27981
Simplify default locale/timezone resolution in cookie/session locale resolvers #27609
Nested Exception's message should not include the messages from causal chain #25162
Add If-Match support and improve If-None-Match wildcard support #24881
🐞 Bug Fixes
Guard against NPE in PathMatchConfigurer #28816
AnnotationTypeMapping tracks @AliasFor mappings as convention-based #28773
Support by-type constructor references in ConstructorOrFactoryMethodResolver #28728
AOT generated code leads to exception on startup: Object of class [java.lang.Boolean] must be an instance of boolean #28727
HtmlUnit / MockMvc integration handles forwarded URLs partially #28722
StackOverflowError when using BindingReflectionHintsRegistrar #28683
Wrong reflection hints for arrays of inner types #28664
Add automatic hint for autowired field support #28655
Reflection configuration for parameter types with an inner class have wrong name #28606
Fix ResourceHintsWriter for leading/trailing wildcards #28597
JdkHttpClientResourceFactory has dependency on org.eclipse.jetty #28588
CompileWithTargetClassAccessClassLoader does not implement findResource #28574
ScopedProxyBeanRegistrationAotProcessor is never called #28561
Proxy hint missing when AliasFor is used on the annotation itself #28528
Fix attribute return types in @DeleteExchange, @PatchExchange, and @PutExchange #28498
Correctly detect Optional return type for @HttpExchange methods #28493
Resolve package cycle around MissingServletRequestPartException #28455
findAnnotationOnBean finds annotations from a static @Bean method's enclosing class #28298
📔 Documentation
Fix WebClientAdapter.createHttpServiceProxyFactory() example in ref docs #28753
Remove obsolete references to @Required #28600
Improve ResourcePatternHint documentation #28598
Use getHost instead of getContainerIpAddress in Redis examples #28461
Update documentation for RFC 7807 support #28438
🔨 Dependency Upgrades
Upgrade client support to R2DBC 1.0 #28787
Upgrade Dokka to 1.7 #28641
Upgrade to Kotlin 1.7.0 #28619
Upgrade to Kotlin 1.7.10 #28784
Upgrade to Reactor 2022.0.0-M4 #28766




v6.0.0-M4 Pre-release
⭐ New Features
Add native hints for core annotations #28442
Add byte[] to supported types in SimpleJmsHeaderMapper #28421
Add RootBeanDefinition constructor that accepts a ResolvableType #28418
Add Throwable functional interfaces #28417
Support multiple SpringFactoriesLoader files #28416
Add position variant of ObjectUtils.addObjectToArray #28415
Support for Jakarta Concurrency 3.0 #28400
Add header resolver for HttpExchange method #28395
FormHttpMessageConverter should not have a dependency on the Jakarta Mail API #28392
Support to Create a Proxy From an Annotated HTTP Service Interface #28386
BeanRegistrationContributionProvider should have access to the bean factory #28384
Generate appropriate AOT bean registration for scoped proxies #28383
AOT contribution for @PersistenceContext and @PersistenceUnit #28364
Return UnmodifiableMap in MVC PathVariableMapMethodArgumentResolver #28352
Allow to register AotContributingBeanFactoryPostProcessor declaratively #28342
Allow to register reflection hints for multiple types at once #28339
Add support for HEAD methods in Spring's Resource handling #28291
Initialize NativeDetector at build time #28244
Support multiple segments in encoded Content-Disposition #28236
Introduce HttpStatusCode interface #28214
Introduce fluent API for search options in MergedAnnotations #28208
Introduce predicate for searching enclosing classes in MergedAnnotations #28207
Remove obsolete org.springframework.core.NestedIOException #28198
Enable access to an RFC 7807 ProblemDetail formatted error response from the client side #28190
Support "application/problem+json" as the response Content-Type #28189
Introduce RuntimeHintsRegistrar #28160
Ability to differentiate different causes for WebInputException #28142
Remove TYPE_HIERARCHY_AND_ENCLOSING_CLASSES search strategy for MergedAnnotations #28080
Deprecate SerializationUtils#deserialize #28075
MediaType parameters in the "consumes" condition of @RequestMapping are not considered for matching #28024
Introduce token-based consumption of multipart requests in WebFlux #28006
Automatically clean up multipart temp files #27633
Introduce removeApplicationListener in ConfigurableApplicationContext #14023
🐞 Bug Fixes
Use Arrays.toString for initMethodNames and destroyMethodNames arrays in AbstractBeanDefinition#toString #28427
Reflection configuration for primitives have wrong name #28347
GraalVM reflect config uses wrong format for inner classes #28312
Throw a meaningful exception if a TypeReference does not use a fully qualified name #28213
Fix queriedMethods handling in ReflectionHintsSerializer #28212
AntPathMatcher matches path with trailing slash differently if '**' is present in the pattern #27506
📔 Documentation
Use "instanceof pattern matching" in sample in reference docs #28332
Add Javadoc since for BeanDefinitionValueResolver.resolveInnerBean() #28217
🔨 Dependency Upgrades
Upgrade to Kotlin 1.6.20 #28036
Upgrade to Reactor 2022.0.0-M2 #28365



v6.0.0-M3 Pre-release
⭐ New Features
Add types to represent RFC 7807 problem details and exceptions #28187
Update AOT processing to account for multiple init or destroy methods #28151
Introduce ApplicationContextAotGenerator #28150
Add GeneratedType infrastructure #28149
Add support for contributing runtime hints for generated code #28148
Replace KotlinBodySpec with proper ResponseSpec extensions #28144
Add GraalVM native JSON configuration generation #28131
Support for compiling and running generated code in tests #28120
Support for ImportAware in AOT-processed contexts #28111
Support type-safe transaction rollback rules #28098
Rationalise merged BeanDefinition resolution for inner beans #28093
Add API to contribute to the setup of an ApplicationContext #28088
Deprecate "enclosing classes" search strategy for MergedAnnotations #28079
Add support for refreshing an ApplicationContext for AOT processing #28065
Upgrade client support to R2DBC 0.9 #28059
Improve SpringFactories to customize how arguments and instantiation failures are handled #28057
Remove deprecated SocketUtils #28054
Add Bean instantiation generator infrastructure #28047
Add code contribution infrastructure #28030
Add core JavaPoet utilities #28028
Add support for registering multiple init & destroy method names #28013
HibernateJpaDialect compatibility with Hibernate 6 (read-only transactions etc) #28007
MissingServletRequestPartException extends ServletRequestBindingException #27948
Implement an AOT equivalent of AutowiredAnnotationBeanPostProcessor #27921
Add a way to register the need for runtime reflection, resources, proxying, and serialization on components #27829
Provide repackaged version of JavaPoet #27828
Allow @Async qualifier to be declared with a placeholder or SpEL expression #27818
Prevent @Bean method overloading by default (avoiding accidental overloading and condition mismatches) #22609
🐞 Bug Fixes
WebSocketConfigurationSupport.DefaultSockJsSchedulerContainer is private and exposed as a Bean #28146
Inconsistent overriding (and enforcement of non-overriding) between bean definition names and aliases #27866
🔨 Dependency Upgrades
Upgrade Kotlin to 1.6.20-RC #28147
Upgrade to AspectJ 1.9.8 GA #27416
Upgrade to Groovy 4.0 #27985


v6.0.0-M2 Pre-release
⭐ New Features
Stop defining a TaskScheduler bean in WebSocketConfigurationSupport #27903
Remove unnecessary check in isBridgedCandidateFor() #27862
🐞 Bug Fixes
StrictHttpFirewall rejects request when HtmlUnit WebClient is called with encoded URL #27837
📔 Documentation
Fix typo and use of componentry #27852
🔨 Dependency Upgrades
Upgrade to Kotlin Coroutines 1.6.0 #27878
Upgrade to Kotlin serialization 1.3.2 #27879




v6.0.0-M1 Pre-release
⭐ New Features
Deprecate CachingConfigurerSupport and AsyncConfigurerSupport #27813
Deprecate StringUtils::trimWhitespace #27769
Enforce Future or void return declaration for each asynchronously executed method (e.g. with class-level @Async) #27734
Avoid unescape when CONNECT and CONNECTED frames #27722
Support SQUARE brackets [] around NAMED parameter #27716
Change StringUtils trimWhitespace to String.strip() #27703
Retrieve MethodMetadata for all user-declared methods in the order of declaration #27701
Refactor HttpMethod from enum to class #27697
Use parseInt without substring method #27680
Consistently replace String encoding names with StandardCharset arguments #27664
Use 'toString(Charset)' instead of 'toString(String)' for encodings #27646
Add method to ClientResponse that returns Mono terminating with createException #27637
Create immutable MultiValueMap wrapper #27608
Revisit MediaType ordering #27580
Optimize header removal in ForwardedHeaderFilter #27466
Change default driver in XStreamMarshaller from XppDriver to DomDriver #27464
Retain support for legacy JSR-250 javax.annotation.PostConstruct/PreDestroy and JSR-330 javax.inject.Inject in addition to Jakarta EE 9 annotations #27444
change string http header to enum #27356
Allow BeanUtils#instantiateClass inlining with native #27072
Remove support for deprecated Java SecurityManager #26901
CommonAnnotationBeanPostProcessor jakarta.annotation-api:2.0.0 support (@PostConstruct/Predestroy) #26185
@Transactional does not work on package protected methods of CGLib proxies #25582
Add support for explicit generic type in PayloadApplicationEvent #24599
Add Kotlin extensions for Cache and CacheManager #23927
JDK 11 HttpClient integration with WebClient #23432
@RequestMapping without @Controller registered as handler [SPR-17622] #22154
Upgrade Spring Context Support to Jakarta EE's com.sun.mail:jakarta.mail and com.sun.activation:jakarta.activation [SPR-17561] #22093
Enable support for custom vnd types in messaging MappingJackson2MessageConverter [SPR-15712] #20269
Add support for instant in @DateTimeFormat #19846
Support YearMonth and MonthDay with the @DateTimeFormat annotation #1215
📔 Documentation
Update javadoc and reference docs for consistent version and package references to the Jakarta EE 9 APIs #27689
Use default stylesheet for generated Javadoc HTML #27496
🔨 Dependency Upgrades
Support for Jakarta EE 9 (annotations and interfaces in jakarta.* namespace) #25354
Support for Jetty 11 #27424
Upgrade to AspectJ 1.9.8 for official Java 17 support #27537
Upgrade to Kotlin 1.6.10 #27413

