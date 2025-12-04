v6.2.12
⭐ New Features
Add "forEachByte" variant to DataBuffer for efficient traversing #35623
Nested transaction support via savepoints is broken in HSQLDB database [followup] #35618
Improve exception handling in ConfigurationClassBeanDefinitionReader #35631
Add MySQL/MariaDB to TableMetaDataProviderFactory for correct generated-keys support #35593
Optimize state management in StompSubProtocolHandler #35591
ServletServerHttpRequest.getRemoteAddress() may perform DNS lookup #35589
Emit log message when multiple primary beans are detected #35550
Duplicate key error is mapped to TransientDataAccessException by SQLStateSQLExceptionTranslator for BatchUpdateException #35547
Remove redundant object allocation in cglib proxy method calls #35543
Remove deprecation on CandidateComponentsIndex and CandidateComponentsIndexLoader #35472
Processing response with no Content-Length header and no body raises EOFException #35361
🐞 Bug Fixes
DefaultListableBeanFactory::getBeanNamesForType does not always return all bean names #35634
Consider defaultCandidate for scoped proxies #35627
Release data buffer in AbstractCharSequenceDecoder even when String creation fails #35625
PathMatchingResourcePatternResolver is not able to resolve file in SpringBoot Packaged JAR #35617
Prevent NoClassDefFoundError when Jetty Reactive HttpClient is not available #35608
Performance regression with Property Placeholder Resolution #35594
Retain order of produces media types in @ExceptionHandler #35587
Nested transaction support via savepoints is broken in HSQLDB database #35564
SpEL expression parser uses more CPU after upgrade to 6.2.9 #35556
Thread race during FactoryBean instantiations starting with 6.2 due to lenient locks #35545
Update parsed path handling in UrlHandlerFilter #35538
ResourceHttpMessageWriter.write has unexpected error handling for invalid range requests (offset > content length) #35536
AbstractTestNGSpringContextTests is not thread-safe regarding tracked exceptions #35528
UrlHandlerFilter breaks RequestDispatcher.forward() on Tomcat #35509
AbstractMockHttpServletRequestBuilder#buildRequest is not idempotent #35493
Add support for JvmDefault (default in Kotlin 2.2.20+) #35487
InstanceSupplierCodeGenerator fails to detect deprecated type on package private factory method #35486
Fix synchronization in ResponseBodyEmitter #35466
useCaches option in PathMatchingResourcePatternResolver not applied in special case #35465
Deadlock during context initialization due to EntityManager lock #35398
📔 Documentation
Improve guidance in WebFlux on how to join inbound and outbound streams in WebSocketHandler #35572
Fix idref example in reference manual #35560
Fix URI Patterns docs in WebMVC and WebFlux Request Mapping #35551
Allow event listener method declared with multiple event classes to take a single parameter that is assignable from all of those event classes #35506
Improve Task Javadoc about Runnable wrapping #35394
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.12 #35640
Upgrade to Reactor 2024.0.11 #35638


v6.2.11
 4c13425
⭐ New Features
Missing @Nullable on JsonPathAssertions.isEqualTo #35445
Graceful fallback for non-default NIO.2 FileSystems #35443
Avoid thread pinning in SseEmitter, ResponseBodyEmitter #35423
Detect Informix error codes as DuplicateKeyException #35400
Inconsistent nullability for String value arguments in ResponseCookie from*() factory methods #35377
Revisit taskTerminationTimeout semantics on SimpleAsyncTaskExecutor/Scheduler #35372
StandardEvaluationContext.setBeanResolver should allow @Nullable BeanResolver #35371
🐞 Bug Fixes
"mainThreadPrefix = null " Causing multiple background bean locks to be blocked #35409
Annotation not found on parameter in overridden method unless method is public #35349
Annotations on overridden methods not found in type hierarchy with unresolved generics #35342
Performance degradation when using singleton beans with Provider #35330
JettyClientHttpConnector buffer leak in Spring Framework 6.2 #35319
Spring application hangs on shutdown with @Scheduled(cron=…) when custom ScheduledExecutorService bean is defined (Java 19+) #35316
📔 Documentation
Document potential need to use Mockito.doXxx() to stub a @MockitoSpyBean #35410
Fix links to Reactive Libraries and RestTemplate #35392
Fix broken link in WebDriver docs #35374
Document Web DataBinder support for RouterFunction #35367
Improve documentation for ApplicationEvents to clarify recommended usage #35335
Document terms and units in DataSize.parse() #35298
Refine @Contract Javadoc #35285
Correct the default value of nestedTransactionAllowed in JpaTransactionManager javadoc #35212
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.11 #35455
Upgrade to Reactor 2024.0.10 #35454

v6.2.10
⭐ New Features
Optimize NIO path resolution in PathEditor #35304
Make type in ProblemDetail nullable #35294
Refine UriUtils#decode and StringUtils#uriDecode implementation and documentation #35253
Provide configurable useCaches option for URLConnection usage in UrlResource (avoiding jar file leak) #35218
🐞 Bug Fixes
@Scheduled tasks running in SimpleAsyncTaskScheduler are interrupted immediately on context close #35254
ScriptUtils.executeSqlScript() does not support multiple results per statement #35248
Successful Autowiring Dependent on Configuration ordering and Primary Bean flag #35239
Locale parameter in MessageSource#getMessage methods should be nullable #35230
Allow any @Transactional propagation for @TransactionalEventListener with BEFORE_COMMIT phase #35150
Catalog name should be handled with the provided case #35064
Accept support for generated keys column name array on HSQLDB and Derby as well #34790
Handle direct CanncelationException on timeout in JdkClientHttpRequest #34721
📔 Documentation
Add documentation of RequestMapping about SpEL #35232
Document SqlBinaryValue behaviour with PostgreSQL #34786
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.10 #35313
Upgrade to Reactor 2024.0.9 #35312

v6.2.9
⭐ New Features
OncePerRequestFilter cannot be CGLib-proxied #35198
Consistently catch InaccessibleObjectException next to IllegalAccessException #35190
Introduce Date-to-Instant and Instant-to-Date converters #35175
Consistent nullability and exception declarations in AbstractMessagingTemplate hierarchy #35159
Register runtime hints for Instant-to-Timestamp conversion #35156
Improve handling of ResponseEntity<?> in Spring MVC #35153
Support @CacheConfig("myCacheName") declarations for simplified configuration #35152
Declare messageSelector parameters in JmsOperations as @Nullable #35151
Add getter for OverflowStrategy in ConcurrentWebSocketSessionDecorator #35132
Use preset Content-Type for streaming and reactive responses in Spring MVC #35130
Leniently tolerate null @Aspect bean #35074
DataAccessResourceFailureException thrown when transaction times out on PostgreSQL #35073
MethodInvokingFactoryBean fails to invoke publicly exported methods overridden by internal classes when using JPMS #34028
🐞 Bug Fixes
Restore preference for interface (most abstract) method in getPubliclyAccessibleMethodIfPossible #35189
Make targetBeanName field in AbstractBeanFactoryBasedTargetSource protected to avoid exceptions in logging and toString() #35172
Fix inconsistencies in StaticListableBeanFactory #35119
Support StreamingHttpOutputMessage in RestClient #35102
When building DELETE requests, the request body is not used in JdkClientHttpRequest.buildRequest #35068
AOT-generated bean registration file contains "too many constants" when building with many beans #35044
Prevent cache pollution by storing only the factories #34732
WebFlux decodes wildcard content-types as form-data/multipart #34660
AOT-generated CGLib proxies do not contain method overrides #34642
500 response for ResourceHttpRequestHandler when requested range is not satisfied #34490
📔 Documentation
Document how to register runtime hints for convention-based conversion #35178
Link to @ContextConfiguration Javadoc from reference manual #35088
🔨 Dependency Upgrades
Upgrade to JUnit 5.13.3 #35103
Upgrade to Micrometer 1.14.9 #35202
Upgrade to Reactor 2024.0.8 #35201

v6.2.8
⭐ New Features
Nullability @Contract declaration for CodeFlow.isIntegerForNumericOp() is unnecessary #34985
Serializer hint registration is broken for some Kotlin classes #34979
Clients created using JdkClientHttpRequestFactory set content-length for GET, DELETE and HEAD requests #34971
Support registration of non-public BeanDefinitionReader via @ImportResource #34928
Make max size for pattern cache in PathPatternMatchableHandlerMapping configurable #34918
Add optimized DataBufferInputStream overrides #34799
🐞 Bug Fixes
Encode non-printable character in Content-Disposition parameter #35034
Allow update of existing WebSession after max sessions limit is reached #35013
Fix support for collections in AbstractKotlinSerializationHttpMessageConverter #34992
PathPattern#combine throws StringIndexOutOfBoundsException #34986
Fix AOT code generation for autowired inner class constructor #34974
AbstractFileResolvingResource.exists closes JAR resource input streams with v6.2.7 #34955
Enhanced configuration class fails to call package-visible superclass constructor on WebSphere #34950
Fix REPLY_CHANNEL header check in MessageHeaderAccessor #34949
MockEnvironment does not accept Object property values #34947
PropertySourcesPlaceholderConfigurer no longer uses ConversionService from Environment #34936
@Contract for StreamUtils.drain() incorrectly declares null results in an exception #34933
Inconsistent behavior injecting null @Bean factory parameter #34929
MockHttpServletRequest.addHeader duplicates "Content-Type" header #34913
BeanUtils.getParameterNames fails for Kotlin data classes #34760
JAXB message converters ignore Content-Type charset #34745
Aspect Not Triggered After Restart in Spring Boot 3.4.x (But Works in 3.3.10) #34735
Add caching headers to unmodified static resources #34614
📔 Documentation
Apply gh-34856 to MockClientHttpRequest in testfixture package #35031
Fix ResourceHttpRequestHandler#setHeaders JavaDoc #35004
Remove reference to AspectJ Eclipse Javadoc #35000
Mention CompletableFuture in Spring MVC "Asynchronous Requests" section of reference manual #34991
Fix exception name in ModelAttribute docs #34980
Fix syntax in @SqlGroup example #34972
Update X-Forwarded-Proto doc to say https / http #34959
Update Guidance on Best Practices To Test Code That Uses RestClient and RestTemplate #34892
Add a section for WebAsyncTask in mvc-ann-async.adoc #34885
Clarify what @RestControllerAdvice vs @ControllerAdvice apply to by default #34866
Improve Javadoc for @ExceptionHandler #34554
🔨 Dependency Upgrades
Upgrade to HttpComponents HttpClient 5.5 #34941
Upgrade to Micrometer 1.14.8 #35020
Upgrade to Reactor 2024.0.7 #35021


v6.2.7
⭐ New Features
Forward more methods to underlying InputStream in NonClosingInputStream #34893
Introduce Spring property for the default property placeholder escape character #34865
Close ApplicationContext once AOT processing has completed #34841
Fix AbstractJackson2HttpMessageConverter#getObjectMappersForType nullness #34811
Add option for case-insensitive match to PatternMatchUtils #34801
RestClient @RequestBody parameters lose generic type information when creating HTTP service beans #34793
Adds option to set Principal in MockServerWebExchange #34789
🐞 Bug Fixes
Beans created by FactoryBean are not considered as autowiring candidates if another thread holds a singletonLock #34902
PropertySourcesPlaceholderConfigurer placeholder resolution fails in several scenarios #34861
HttpComponentsClientHttpRequestFactory setConnectionRequestTimeout not working with httpclient 5.3.1 #34851
Fragment.create() requires mutable map - which is unusable when used with Kotlin #34848
Duplicate BeanOverrideHandler discovered in @Nested test case with superclass from different class or in interface implemented multiple times #34844
Accidental ClassLoader defineClass enforcement after #34677 #34824
HttpEntity.EMPTY headers should not be possible to mutate via HttpHeaders constructor #34812
AbstractFileResolvingResource.exists incorrectly reports result for resources inside of spring-boot executable jar #34796
Correctly expand query param with same name from URI variables array #34783
R2DBC NamedParameterUtils only expands reused collection parameter once #34768
PathMatchingResourcePatternResolver wrongly assumes that target/classes always exists #34764
📔 Documentation
Clarify CompositePropertySource behavior for EnumerablePropertySource contract #34886
Javadoc and @Nullable annotation for servletContext parameter of ConfigurableWebEnvironment.initPropertySources are contradictory #34845
Spring MVC: @EnableAsync needs to be redeclared for each ApplicationContext #34843
Provide a working example instead of unclear placeholders #34828
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.7 #34889
Upgrade to Reactor 2024.0.6 #34898

v6.2.6
⭐ New Features
An option for SimpleAsyncTaskExecutor to throw an exception when limit is reached #34727
Provide first-class support for Bean Overrides with @ContextHierarchy #34723
Micro performance optimizations #34717
Suppress "Unable to rollback against JDBC Connection" in case of timeout (connection closed) #34714
Avoid early FactoryBean instantiation for type-based retrieval with includeNonSingletons=false and allowEagerInit=true #34710
ReactiveCachingHandler still not using error handler on sync cache. #34708
Add an exchangeForRequiredValue variant to RestClient #34692
Recursively boxing Kotlin nested value classes in CoroutinesUtils #34682
ServletServerHttpRequest does not use charset parameter of application/x-www-form-urlencoded #34675
LifecycleGroup concurrent start and start timeout #34634
HibernateJpaDialect exception translation misses concrete exceptions wrapped in Hibernate's ExecutionException #34633
🐞 Bug Fixes
Inconsistency in SseEmitter.onCompletion() behavior between Spring 6.2.3 and 6.2.5 #34762
Deadlock while creating Spring beans with parallel bootstrap threads on IBM Liberty #34729
PropertyBatchUpdateException: causes of nested PropertyAccessExceptions not shown in output #34691
IllegalAccessError for package-private member of AzureStorageConfiguration on WebSphere #34684
Change in Jar usecache behavior with Spring 6.1.x causing java.lang.IllegalStateException: zip file closed #34678
Startup performance regression due to CGLIB class load attempts in Spring 6.1.x #34677
An infinite wait on a parallel context.getBean() #34672
InvalidObservationException: Invalid start: Observation 'http.client.requests' has already been started #34671
@Configuration classes can no longer be abstract without @Bean methods #34663
Generated-code for LinkedHashMap is missing static keyword #34659
Detect late-set primary markers for autowiring shortcut algorithm #34658
@MockitoBean with custom @Qualifier is not injected into @Configuration class #34646
Qualifier Resolution Issue in Parent-Child Context Hierarchies #34644
Enforced container-level acknowledge call for custom acknowledgement mode #34635
UriComponentsBuilder does not treat a URN as opaque if it contains a slash #34588
Migrating from Spring 6.1.x to 6.2.x leads to exceptions in a Pekko setup #34303
📔 Documentation
Update Javadoc for ignoreDependencyInterface() in AbstractAutowireCapableBeanFactory #34747
Update Javadoc to stop mentioning 5.3.x as the status quo #34740
Fix broken link for Server-Sent Events #34705
Fix typo in Bean Validation section of reference manual #34686
Remove unnecessary closing curly brackets in Javadoc #34679
Add javadoc notes on potential exception suppression in ListableBeanFactory#getBeansOfType #34629
Remove remaining references to Forwarded headers in MvcUriComponentsBuilder #34625

v6.2.5
⭐ New Features
Make dependencies on AssertJ and JUnit in spring-core-test optional #34612
Suggest compilation with -parameters when AspectJAdviceParameterNameDiscoverer fails against ambiguity #34609
SseBuilder in ServerResponse should allow empty comment #34608
MockServerWebExchange does not allow setting the ApplicationContext on the base class #34601
FormHttpMessageConverter should throw HttpMessageNotReadableException when the http form data is invalid #34594
Provide a method to retrieve all singleton autowire candidates from the bean factory #34591
🐞 Bug Fixes
PathMatchingResourcePatternResolver regression for jar root scanning in 6.2.4 #34607
AbstractReactiveTransactionManager throws IllegalStateException when rollback fails after commit attempt #34595
Recursively boxing/unboxing nested inline value classes #34592
📔 Documentation
MvcUriComponentsBuilder javadocs inaccurately reflects usage of forwarded headers #34615
Fix formatting and update links to scripting libraries and HDIV #34603
Remove dubious link to MockObjects Web site in reference manual #34593
Fix StringUtils#uriDecode Javadoc #34590
🔨 Dependency Upgrades
Upgrade to ASM 9.8 (for early Java 25 support) #34600


v6.2.4
⭐ New Features
JettyCoreHttpHandlerAdapter compatibility with Jetty 12.0.17 #34561
HandlerMethodValidationException.Visitor should support RequestBody with method parameter constraints #34549
Allow ContentResultMatchersDsl matchers for supertypes of the checked type #34542
Avoid JarURLConnection resource leak in AbstractFileResolvingResource.exists() #34528
Deprecate rowsExpected property of SqlQuery for removal #34526
Supply RuntimeHints to an AotContextLoader #34513
Deprecate and remove use of UrlPathHelper in ServletWebSocketHandlerRegistry #34508
Avoid unnecessary CGLIB processing on configuration classes #34486
Inconsistent default class loaders in hint classes #34470
Add missing converters to DefaultRestClientBuilder #34439
Improve BeanFactory/ObjectProvider to select the only one default candidate among non-default candidates #34432
🐞 Bug Fixes
MockCookie.parse() fails to parse custom attribute with a value #34575
BeanNotOfRequiredTypeException if @Bean factory method returns null #34543
Regression in 6.2.3: No unique bean available for injection point with unresolvable generics #34541
GenericConversionService cannot find a converter when converting to a Kotlin list of maps #34535
isClientDisconnectedException needs to protect against null input #34533
spring boot 3.4.3 + TimedAspect causes thread to hang #34522
Missing Partitioned cookie support in reactive HTTP clients #34521
DefaultManagedTaskExecutor throws java.lang.UnsupportedOperationException: isShutdown when rejecting tasks #34514
FileSystemResource location does not end with slash for RouterFunction check #34509
AbstractJackson2HttpMessageConverter not resolving generic type for request body since 6.2.3 #34504
Request param handling in HttpRequestValues overrides existing URI variables with same name #34499
MockHttpServletResponse - handle multiple values for Content-Language header #34488
Endless loop with DataSourceUtils in spring-jdbc #34484
MockHttpServletResponse#setHeader does not remove header for null values #34464
ContentCachingResponseWrapper.setHeader does not handle null value properly. #34460
Component scan fails to find bean candidates in the embedded jar file in META-INF/context.xml for embedded Tomcat application #34446
6.2.0 broke with "Could not register object [@someHash] under bean name 'blabla': there is already object [@sameHash] bound" #34427
503 status code after completing SseEmitter in onTimeout #34426
NullPointerException thrown when ConfigurationClassEnhancer creates CGLIB proxy #34423
Add onRequest() hook for propagating request from downstream #34388
Content-Type response header duplicated for failed StreamingResponseBody return value #34366
Task scheduler configured by XML is not eligible for getting processed by all BeanPostProcessors #34015
📔 Documentation
Fix typo in Spring MVC error responses documentation #34552
Document that Spring Framework 6.x does not yet support JSpecify annotations #34551
Fix web and webflux reference links #34517
Document default KeyGenerator in spring-cache XSD #34468
Fix broken antora task #34454
Add @since tag for formField() and formFields in MockHttpServletRequestDsl #34448
Improve Javadoc of ObjectProvider to clarify what is unique #34447
rest-http-interface example code can't run #34443
Add Javadoc since for HandlerMethod(HandlerMethod, Object, boolean) #34431
Document wrapping behavior of TestExecutionListener callbacks #34422
Cross reference annotation search APIs in Javadoc #34421
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.5 #34580
Upgrade to Reactor 2024.0.4 #34578

v6.2.3
⭐ New Features
Add form fields to MockMvc Kotlin DSL #34412
Make ProblemDetail implement Serializable #34409
Support @MockitoSpyBean at the type level on test classes #34408
Expose order values of TestExecutionListener implementations as constants #34404
ContentDisposition should match attributes in a case-insensitive fashion #34383
Provide access to servletPath in ServletRequestPathUtils #34379
Use ConversionService to convert POJO to array for SpEL varargs invocations #34371
Provide a more actionable CGLIB error message with native #34370
Wrap disconnected client exceptions as AsyncRequestNotUsableException in Servlet container onError callback #34363
Support RFC 8441 WebSocket upgrade with HTTP/2 CONNECT #34362
Optimize default property editor allocations for bean instance creation #34361
Continue with pre-instantiation when current bean is in creation already #34349
Allow filtering bean instances returned by ObjectProvider#stream() #34318
GenericConversionService finds wrong converter for partially unresolvable generic types #34298
Avoid re-creating HandlerMethod unless handler is resolved through the BeanFactory #34277
UrlResource should leniently handle HTTP endpoints which do not support HEAD #34217
Add API counterpart for handling Fallback and 'defaultCandidate=false' beans #34203
Add support for multidimensional arrays #34183
Add getters to ServerResponseResultHandler #34066
Improve diagnostics when a Bean Override cannot be selected by type #34006
Expression performance regression due to missing annotation types on context classes #33948
🐞 Bug Fixes
PathMatchingResourcePatternResolver failing against non-jar file in classpath #34417
GenericTypeResolver Since 6.2.0, generics cannot be obtained correctly in multi-layer interface inheritance (possible regression of #24963) #34386
Test Bean Overrides honor fallback qualifier instead of @Primary semantics #34374
HTTP interface client raises IllegalArgumentException if query param name contains a colon #34364
Quartz-style Nth Day of Week cron expressions can overflow to other month #34360
Component scan fails to find jar entries in WEB-INF/classes with embedded Tomcat #34348
Check hasNext when when accessing sessionIds from UserDestinationResult #34333
Property binding to Map that implements Iterable no longer works #34332
GenericTypeResolver returns EmptyType #34328
Duplicate BeanOverrideHandler discovered in @Nested test class hierarchy when upgrading to Spring 6.2.2 #34324
AnnotationBeanNameGenerator issues warning about explicitly aliased value attribute #34317
Stop assuming that AspectJ Advice has JoinPoint as the first argument #34316
Constructor binding fails for simple types List/Map/Array and for nested container combinations #34305
Change in BeanFactoryUtils.beanNamesForTypeIncludingAncestors() Behavior in Spring Framework 6.2.x causing ClassCastExceptions #34300
Data binding does not filter HTTP headers for constructor binding #34292
Escaped character in nested placeholder not detected properly and leads to invalid parts #34289
ReflectJvmMapping.getKotlinFunction returns null for Kotlin properties #34284
ConfigurationClassEnhancer should explicitly set custom ClassLoader on CGLIB Enhancer (aligned with CglibAopProxy) #34274
Connection reset exception from RestTemplate call in Spring Web MVC controller is ignored #34264
AsyncExecution fails to detect the return type of an annotated method from an interface with a generic #33957
Ensure Locale context is available for WebFlux method validation #33810
📔 Documentation
Fix reference to ApplicationContext#getAutowireCapableBeanFactory in reference documentation #34400
Clarify component scanning of abstract classes with @Lookup methods #34367
Minor update in WebSocket STOMP reference documentation #34353
Clarify documentation on the usage of RestClient in POST scenarios without response body #34334
Document limitation around the port of localAddress in StandardWebSocketSession #34304
Fix Javadoc for field reflection hints #34297
Improve Javadoc for SpringProperties.getFlag() #34295
Link to current AspectJ Javadoc #34293
Update Javadoc for SimpleCommandLinePropertySource #34282
Update RestClientException Javadoc to refer to RestClient #34270
Document order values for TestExecutionListener implementations #34265
Document custom HttpServiceArgumentResolver usage #34227
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.4 #34401
Upgrade to Reactor 2024.0.3 #34403
Upgrade to RSocket 1.1.5 #34402

v6.2.2
⭐ New Features
Track only qualifier annotations in BeanOverrideHandler #34260
Remove @FunctionalInterface declaration from BeanOverrideProcessor #34259
Refine default filtered headers for web data binding #34182
Improve query params in uri KeyValue with HTTP interface client #34176
Refine location checks for PathResource #34167
Avoid virtual thread pinning in procedure calling #34133
Type-level constraint violation should result in ParameterErrors #34105
Avoid logger serialization behind shared EntityManager proxy #34084
Improve PathMatcher to PathPatternParser migration in mvc XML configuration #34064
Support @MockitoBean at the type level on test classes #33925
🐞 Bug Fixes
HttpHeadersAssert#doesNotContainsHeaders has a typo #34263
Deadlock with background EntityManager bootstrap due to locking in getSingletonFactoryBeanForTypeCheck #34247
ApplicationListener no longer invoked for double generic ApplicationEvent with 6.2.1 #34234
Nested transaction savepoints are broken in SQL Server #34233
Error handling override in DefaultResponseErrorHandler ignored after upgrade to 6.2.0 #34231
FileNotFoundException is thrown when using ConfigurationPropertiesScan with Spring Context 6.2.1 #34216
BindException declared but not handled by ExceptionHandler #34214
@TestBean factory method resolution is incorrect within class hierarchy #34204
Bean Override in superclass takes precedence over Bean Override in subclass #34194
Ensure AsyncListener#onError does not return until dispatch completes #34192
BeanNotOfRequiredTypeException during transaction qualifier resolution in 6.2.1 #34187
BeanCurrentlyInCreationException is thrown when multiple threads simultaneously try to create bean #34186
DataBinder throws IndexOutOfBoundsException when indexed parameter uses nonconsecutive indices #34145
NullPointerException is thrown if WebClient is used with Apache Httpclient and cookies are disabled #34132
Wrong parentId tracking in FlightRecorderApplicationStartup #34128
PathMatchingResourcePatternResolver is not able to resolve file in SpringBoot Packaged JAR #34126
Placeholder resolution no longer considers exact match before resolving the placeholder key #34124
DataBinder throws StringIndexOutOfBoundsException for indexed property without nested property path #34121
Dependency injection matches wildcards too leniently with 6.2.1 #34119
PathMatchingResourcePatternResolver throws FileNotFoundException caused by wrong cache path #34111
SpEL fails to invoke MethodHandle function reference accepting only varargs #34109
Generic with a base type is no longer resolved to its base if the generic is unresolved #34086
DataBinder throws StringIndexOutOfBoundsException for map property without nested property path #34043
Fix implicit variable resolution in JSP EvalTag #33945
📔 Documentation
Fix inaccuracy in RequestHeaderArgumentResolver Javadoc #34230
Document that http.client.requests measure the entire HTTP exchange #34201
Misuse of em dash in "Basic Concept" section #34165
Fix typo in link #34149
Broken syntax in xml sample of "Reference to Other Beans" section #34148
Fix minor typo in reference documentation for Kotlin annotations #34134
Clarify documentation for the default uri client request observation metric #34116
Fix broken links in the web reference documentation #34115
Bean creation lazily ignores annotations like @EventListener #34057
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.3 #34251
Upgrade to Reactor 2024.0.2 #34252


v6.2.1
⭐ New Features
Implement toString() in TestBeanOverrideHandler #34072
Log alias removal in DefaultListableBeanFactory #34070
Log warning when one Bean Override overrides another Bean Override #34056
Introduce "unsafeAllocated" flag in TypeHint #34055
Cannot assert status reason phrase with MockMvcTester #34016
Improve toString for reactive ScheduledTask #34010
Optimize sending requests without a body in RestClient and WebClient with Reactor Netty #34003
Add missing @Contract annotation to ObjectUtils#isEmpty #33984
OptionalValidatorFactoryBean suppresses Hibernate Validator configuration failures too much #33979
Support Flux<ServerSentEvent<Fragment>> in WebFlux #33975
Update in FragmentsRendering to names of static methods #33974
Honor @Fallback semantics for Test Bean Overrides #33924
AdvisedSupport.MethodCacheKey should check for logical equality as well as identity #33915
Fail with full description for XML diff in XmlExpectationsHelper #33827
MapMethodProcessor should only resolve arguments of type Map or the ModelMap hierarchy #33160
🐞 Bug Fixes
Support binding from request headers via constructor args #34073
Unable to configure custom scheduler for @Scheduled annotation #34058
Identical Bean Overrides are silently allowed #34054
OOM due to NoTransactionInContextException in reactive pipeline #34048
Priority header causes binding exception after upgrade to Spring Framework 6.2.0 #34039
@MockitoBean incorrectly injects supertype into subtype field #34025
NestedPlaceholder are not recursively resolved if the fallback is a placeholder #34020
AOT no longer generates BeanInstanceSupplier signature for a CGLIB proxy with its public type #33998
Nested transaction support via savepoints is broken in Oracle database #33987
Proxy created with IntroductionInterceptor but without target always throws an exception #33985
ApplicationListener no longer invoked for generic ApplicationEvent with 6.2.0 #33982
Error handling override in DefaultResponseErrorHandler ignored after upgrade to 6.2.0 #33980
BeanCurrentlyInCreationException is thrown when multiple threads simultaneously try to create a FactoryBean #33972
HandshakeWebSocketService assumes jakarta websocket is present #33970
@Value cases SpringCGLIB$$0 required a bean of type java.lang.String that could not be found in Native compile when migrating to SB 3.4 #33960
PathMatchingResourcePatternResolver should not log directory-skip messages at info level #33956
Avoid infinite recursion in BeanValidationBeanRegistrationAotProcessor with recursive generics #33950
Skip runtime hint registration for validation constraint with missing dependencies #33949
Move Kotlin value class unboxing to InvocableHandlerMethod #33943
MockReset strategy is no longer honored for @MockitoBean and @MockitoSpyBean #33941
TypeDescriptor with recursive generics triggers infinite recursion in ResolvableType.equals/hashCode #33932
RestClient does not expose full URI template as attribute #33928
Bean Overrides like @MockitoBean and @TestBean should not be allowed on static fields #33922
Regression in duplicate beans with different method names #33920
📔 Documentation
Fix link to MockMvcBuilders in reference documentation #34031
Fix a typo in the filters documentation #33959
Document visibility requirements for Bean Overrides #33923
Fix typos and link in Observability documentation #33910
SpEL documentation contains syntax errors #33907
Improve explanation of AOP advice classes that should implement MethodInterceptor #33901
Reflect well-known HttpHeaders intent in Javadoc #33886
Reflect well-known MediaTypes intent in Javadoc #33754
Document support for varargs invocations in SpEL #33332
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.2 #34050
Upgrade to Reactor 2024.0.1 #34051

v6.2.0
⭐ New Features
Update UndertowHttpHandlerAdapter to dispatch #33885
Refine @Contract Javadoc to mention this and new return values #33849
AOT processing for bean validation does not consider cascaded and container element constraints #33842
Avoid repeated resolving of singleton beans through @Lazy proxy #33841
Regiser runtime hints for @TestBean fully-qualified method names #33836
Introduce support for custom reason in @DisabledInAotMode #33833
Use optimistic locking where possible in ResponseBodyEmitter #33831
Revise cookies support with Apache HTTP Components in WebClient and WebTestClient #33822
Remove the pure attribute from @Contract #33820
Introduce @CheckReturnValue annotation #33818
ResourceHttpRequestHandler throwing IllegalArgumentException if resource doesn't end with slash breaks some third-party libraris #33815
Provide first-class virtual thread option on ThreadPoolTaskExecutor/ThreadPoolTaskScheduler #33807
HttpServiceProxyFactory should omit optional @RequestParam if converted from null to empty string #33794
Reactor Netty response should not buffer the full response #33781
Relax the visibility of MockMVC DSL constructors #33778
Support Publisher to InputStream conversion #31677
🐞 Bug Fixes
MockReset should be honored without @Mockito[Spy]Bean fields #33829
Test Bean Overrides do not honor @Primary semantics #33819
Bean Overrides cannot reliably override beans created by a FactoryBean with generics #33811
Bean Overrides for certain FactoryBean use cases no longer work #33800
@MockitoBean, @MockitoSpyBean, & @TestBean do not work with @DirtiesContext "before method" modes #33783
Deprecate exchangeTimeout and refactor readTimeout in ReactorClientHttpRequestFactory #33782
📔 Documentation
Revise documentation for SpEL PropertyAccessor and IndexAccessor APIs regarding ordering #33862
Document UrlHandler Servlet and reactive filters #33784
Improve documentation for SpelCompilerMode #33223
🔨 Dependency Upgrades
Upgrade to ASM 9.7.1 (for early Java 24 support) #33821
Upgrade to Micrometer 1.14.0 #33876
Upgrade to Reactor 2024.0.0 #33878


v6.2.0-RC3 Pre-release
⭐ New Features
Update retrieve() in RestClient to execute and extract in single scope #33777
Remove proxyTargetAware attribute from @MockitoSpyBean #33775
PathMatchingResourcePatternResolver sorting of JAR resources #33771
Add default handling for disconnected client errors to Spring MVC #33763
Remove ServerResponse.AsyncBuilder interface #33736
Fix PathMatchingResourcePatternResolver manifest classpath discovery #33705
Add cookie support to RestClient #33697
🐞 Bug Fixes
@MockitoSpyBean does not support transparent verification #33774
Bean with defaultCandidate = false and qualifier does not work with constructor injection #33762
Update HttpHeaders.setHost() to actually remove the Host header #33716
📔 Documentation
Rework links to Spring Boot docs in reference documentation #33776
Add Kotlin examples in aot.adoc #33761
Improve the discoverability of Java and Kotlin APIs documentation from the refdoc #32835


v6.2.0-RC2 Pre-release
⭐ New Features
Verify static resource location ends on slash #33712
Support record canonical constructor in BeanUtils #33707
Rename OverrideMetadata for Bean Overrides #33702
Rename BeanOverrideStrategy enum constants #33701
Polish ServletWebRequest #33698
Remove support for relative paths in static resource handling #33687
Add value attribute alias to @MockitoBean and @MockitoSpyBean #33680
Reject bean names with factory prefix for Bean Overrides #33674
Revise handling of URI variable syntax in WhatWG URL parser #33673
Introspect pre-registered singletons in preDetermineBeanTypes as well #33668
Remove unnecessary array length check #33655
Polish CorsConfiguration #33650
Add URL Parser for RFC 3986 #33639
Handle X-Forwarded-Prefix parsed by Reactor-Netty in ReactorServerHttpRequest #33638
RestClient should auto-detect ReactorClientHttpRequestFactory #33635
Improve random source in SockJS support #33632
Stop replacing existing Bean Override definitions with pseudo-definitions #33627
Introduce enforceOverride flag in @TestBean and @MockitoBean #33613
Refactor unwrapOptional method to improve readability and performance #33612
ServerSentEvent should implement equals() and hashCode() #33606
Reduce the GC pressure due to NoTransactionInContextException instances #33601
Make DynamicPropertyRegistrarBeanInitializer public #33593
Improve toString() for AbstractBeanDefinition and BeanMetadataAttribute #33579
Add utility methods for resource handler checks #33574
UrlHandlerFilter should not strip the trailing slash from the contextPath URL #33565
AbstractGenericHttpMessageConverter has no constructor taking a Charset #33563
JdbcClient ResultQuerySpec - Provide a optionalValue() method #33560
Add read timeout setter on HttpComponentsClientHttpRequestFactory #33556
Fix virtual thread pinning caused by synchronized blocks in EclipseLinkJpaDialect #33546
Add RestClient.Builder#messageConverters(List) #33536
Refine null-safety for additional Assert methods #33530
Throw runtime error for @TransactionalEventListener when @Transactional propagation level is not REQUIRES_NEW or NOT_SUPPORTED #33470
With virtual threads enabled, long-running fixedDelay tasks block fixedRate tasks #33408
Provide a public mechanism for detecting if AOT processing is in progress #33388
Use only one request timeout mechanism in JdkClientHttpRequest #33090
Support bean override features with AOT and native image #32933
Limit reflective operations in BeanInstanceSupplier with Spring AOT #32834
Mixin created with IntroductionInterceptor results in dynamic proxy instead of CGLIB proxy #31304
Lenient URI parsing in ServletServerHttpRequest #30489
Exclude authorization messages from ERROR logging in StompSubProtocolHandler #28252
Propagate fully capable ServletContext in AbstractContextLoaderInitializer (for SessionCookieConfig access) #22319
🐞 Bug Fixes
PropertySourcesPropertyResolver no longer converts to non CharSequence types #33727
Lower-casing of scheme in UriComponentsBuilder breaks use of URI variables #33699
Remove @MockitoBeanSettings and support for MockitoSession management #33692
@MockitoBeanSettings is not inherited in @Nested test class #33685
AOT fails when generating code for a component declared as an inner-class #33683
@MockitoBean reset and MockitoSession management do not work with @Nested tests #33676
DurationFormatterUtils should not attempt to parse an empty duration #33669
DefaultServerHttpRequestBuilder can create case-sensitive Headers instances #33666
Context cache is broken if two Bean Override fields declare annotations in different order #33633
Test bean override support should only override singletons #33602
Kotlin checked exception thrown from proxy service causes UndeclaredThrowableException #33585
Autowiring of generic beans with array types is broken since 6.2.0-M1 #33535
AnnotatedBeanDefinitionReader should respect @Fallback qualifier analogous to @Primary #33533
📔 Documentation
Add Javadoc since for headers() in Delete/Patch/Post/PutExchange #33723
Document XML parser usage against security false positives #33713
Update scheduling.adoc #33709
Document TestExecutionListener implementations introduced in 6.2 #33661
Replace RFC 7807 with RFC 9457 in documentation #33594
Document that TestContextAnnotationUtils is required for proper @Nested test class support #33586
Replace e.g. with for example #33515
Document non-default candidate beans and Java-based configuration of non-autowire candidate beans #33392
🔨 Dependency Upgrades
Upgrade to Jackson 2.18 #33615
Upgrade to Micrometer 1.14.0-RC1 #33648
Upgrade to Reactor 2024.0.0-RC1 #33636


v6.2.0-RC1 Pre-release
⭐ New Features
Update mime.types and remove commented entries #33512
Provide access to the unexpanded URI template when using MockMvc #33509
Avoid empty array allocations in AnnotationTypeMapping #33507
Introduce DynamicPropertyRegistrar as a replacement for DynamicPropertyRegistry bean support #33501
Avoid storing duplicate empty array in MethodParameter field #33496
Avoid empty array allocations in ResolvableType #33473
Update Content-Length when body changed by Interceptor #33459
UrlHandlerFilter should not strip the trailing slash from root URLs #33444
Unwrap CGLIB proxy when invoking non-proxied methods in ReflectionTestUtils #33429
Refactor eTag formatting logic into a static utility method #33412
Encapsulate ETag comparison logic #33385
Harmonize Reactor client class names within the http.client package #33382
Allow multiple listeners on ResponseBodyEmitter #33356
Invoke init/destroy/SpEL methods via public declaring type whenever possible #33216
Create WebFlux equivalent filter to handle URLs with trailing slashes #32830
Provide more ways to stream through ServerResponse for WebMvc functional endpoints #32710
Avoid buffering all elements before sending JSON when using Flux/Flow + Kotlinx Serialization Encoder #33428
🐞 Bug Fixes
BeanCurrentlyInCreationException is thrown when multiple threads get a bean from StaticApplicationContext's Bean Factory #33463
📔 Documentation
Revise reference documentation for Spring JMX annotations #33466
Add Javadoc since for ReflectionHints.registerForInterfaces() #33458
Revise AOP proxying section of the reference manual #33455
Consolidate self injection documentation in the reference manual #33454
Expand acronyms FQN and FQCN #33452
Document that WebFlux does not support forward redirects #33441
Document TaskDecorator usage with TaskExecutors #33438
🔨 Dependency Upgrades
Upgrade to JUnit 5.11 #33395
Upgrade to Micrometer 1.14.0-M3 #33520
Upgrade to Reactor 2024.0.0-M6 #33521


v6.2.0-M7 Pre-release
⭐ New Features
Improve optional parameter checks for HTTP Interface argument #33339
Two @Bean methods with the same bean name should consistently throw an exception #33330
Support static headers for http interface clients #33309
Add DatabaseClient bind variant for list of positioned parameters #33274
HandlerMethodValidator should support simple Cross-Parameter constraints #33271
UserCredentialsConnectionFactoryAdapter should provide credentials to createContext #33270
Support flexible multi-unit duration format in @DurationFormat #33262
MockMvc should prepare a FilterRegistration when initializing filters #33252
Add option to ignore bean registration with AOT #33243
Support JAXBElement in Jaxb2RootElementHttpMessageConverter #33233
MimeMessageHelper does not set filename on inline MimeBodyPart #33230
Add handling for AsyncRequestNotUsableException to ResponseEntityExceptionHandler #33225
Allow formatting of Collection values for @RequestParam with HTTP interface client #33220
Support rendering stream of fragments #33194
Allow resolving nested placeholders if value is not String but CharSequence #32876
Support multiple style of parsing/printing Durations #30396
Restore support for Freemarker request parameters and taglibs now that it supports Jakarta #30186
AOT/native support when registering beans with the Kotlin DSL #29555
Offer a way for MockitoTestExecutionListener to enable strict stubbing #33318
Provide access to all counters in case of BatchUpdateException with multiple batches #23867
Low level cache failure for sync/reactive/future Cacheable get is not handled by CacheErrorHandler #21590
🐞 Bug Fixes
Programmatic NoUniqueBeanDefinitionException in CacheAspectSupport should match message structure #33305
JdbcClient.MappedQuerySpec::single can return null #33300
Registration of DynamicPropertyRegistry in a test context has broken native testing #33272
MapAccessor#canWrite incorrectly returns true for non-Map target #33265
BeanDefinition processed by AOT does not keep fallback flag #33261
ImportSelector#getExclusionFilter does not exclude matching candidates with import selector #27080
📔 Documentation
Document that SpEL expressions using bean references are not compilable #33363
Remove duplicated "the" in Javadoc #33308
Update documentation for fragment rendering #33195
Document ControllerAdviceBean as internal usage #32776
🔨 Dependency Upgrades
Upgrade to Micrometer 1.14.0-M2 #33327
Upgrade to Reactor 2024.0.0-M5 #33328




v6.2.0-M6 Pre-release
⭐ New Features
Initialize RequestPath on demand in AbstractServerHttpRequest #33227
Add support for making MapAccessor read-only #33222
DefaultPartHttpMessageReader should not instantiate Reactor Scheduler eagerly #33218
Change MIME type mapping for JavaScript to text/javascript #33197
Handle SimpleAsyncTaskExecutor in WebSocketMessageBrokerStats #33104
Support way to extract ConstraintViolation from HandlerMethodValidationException #33025
🐞 Bug Fixes
AssertJ support for multipart does not set property content type on the request #33232
MockMvc builders are not source and binary compatible with previous 6.x generations #33229
__BeanFactoryRegistrations generated file can be too large with a BeanFactory with lots of bean definitions #33126



v6.2.0-M5 Pre-release
⭐ New Features
Harmonize handling of current factory method in SimpleInstantiationStrategy #33192
Unwrap InvocationTargetException in SpEL's FunctionReference #33174
Support rendering multiple fragments #33162
Allow MessageHeaderAccessor to be created with existing headers #33153
Generalize message conversion for HTTP message content in AssertJ support #33148
Allow arbitrary packages to be scanned for Reflective usage #33132
Support external methods referenced by fully-qualified name in @TestBean #33125
Update Content-Type based on encoding in MVC FreeMarkerView #33119
Introduce SmartHttpMessageConverter #33118
Support property placeholders in @Sql script paths #33114
Reject ModelMap argument types in WebFlux #33109
Set output_encoding in FreeMarkerView implementations #33106
Allow encoding to be set with a Charset in FreeMarker support #33102
Let custom ObjectProvider implementations declare a single method only #33070
Add support for running assertions on resolved exception in MockMvcTester #33060
Add dedicated support for printing the MvcResult in MockMvcTester #33059
Provide a way to determine if a context is in the process of being closed #33058
MockHttpServletRequestBuilder should merge URI from the parent if necessary #33057
Fail fast if a @Bean method declares @Autowired as well #33051
Add dedicated async dispatch support for MockMvcTester #33040
Add dedicated multipart support for MockMvcTester #33027
spring-form JSP tags should escape HTML value based on response character encoding #33023
SimpleClientHttpResponse throws IOException when response body is empty and status code is >= 400 #33020
MockHttpServletResponse defaults to ISO-8859-1 for JSON while the rest of the framework defaults to UTF-8 #33019
Propagate context to message converters when streaming with Flux in Spring MVC #32813
Resolve URI to baseUrl in RestClient #32679
Constructor data binding support for List, Map and array arguments #32426
Implement Eclipse Jetty core HTTP handler adapter #32097
Add better control over generated files registration #31331
Provide more declarative control over reflection hint registration #29194
Replace @Nonnull(when = When.MAYBE)  by @CheckForNull in @Nullable #27183
Add JSON support to Protobuf codecs #25457
🐞 Bug Fixes
AntPathPatternMatcher hardcoded "/" separator in variables matching and comparator #33085
AOT generates a raw type for a generic type with nested unresolved generics #33069
Unwrap Kotlin inline value classes return values #33026
Kotlin Serialization support does not take null-safety into account #33016
📔 Documentation
Move Testing below other framework concerns in the reference documentation TOC #33083
Move Servlet HTTP Message Conversion to its own section #33063
Document AssertJ support for MockMvc #32454
🔨 Dependency Upgrades
Upgrade to HtmlUnit 4.2.0 #33081
Upgrade to Kotlin Coroutines 1.8.1 #33176
Upgrade to Micrometer 1.14.0-M1 #33170
Upgrade to Reactor 2024.0.0-M4 #33171




v6.2.0-M4 Pre-release
⭐ New Features
Add support for converting the whole JSON document without using JSONPath #33018
Support Protobuf 4.x #33011
Do not swallow exceptions on failing to release a savepoint #32992
Being able to provide extended timeouts for specific phases in the DefaultLifecycleProcessor #32985
Allow json content to be converted using AssertJ's AssertFactory #32953
Add support for BeanPostProcessor defined in Kotlin companion object #32946
Support @TestBean factory methods defined in interfaces #32943
Add a way to set the timeout to reactive jdk client #32941
Revise convention-based semantics for @TestBean factory methods #32940
Support field name as fallback qualifier for @TestBean, MockitoBean, and MockitoSpyBean #32939
Use getMessageSource internally in RequestContext #32926
MockMvc no longer needs methods that take a String httpMethod for custom methods #32914
Allow MockMvcTester to prepare the query without the need of static imports #32913
Rework Bean Overriding feature to better behave with TCF Context Caching #32884
Introduce API to initialize BeanFactory before singleton instantiation #32836
Introduce static MultiValueMap factory methods #32832
Make use of JSONAssert in public API optional #32791
Refine exception handling in AOT process to provide additional context #32777
Handle ResponseStatusException thrown by MVC functional endpoints #32689
Support data binding from request headers #32676
Ignore trailing semicolons when parsing Accept-Language header #32259
Introduce request attributes in RestClient #32027
Make WebSocketMessageBrokerStats optionally export stats to micrometer #31604
Add Partitioned cookie attribute support for reactive servers #31454
Add execution metadata to scheduled tasks #24560
🐞 Bug Fixes
Exception that prevents component scan with REGISTER_BEAN conditions should provide the affected configuration class #32998
Bean override with REPLACE_OR_CREATE_DEFINITION and byType lookup fails if no match is found #32990
Bean override factory post processing doesn't work with FactoryBean #32971
@TestBean factory method not found in multi-level @Nested hierarchy #32951
Support queries in opaque URLs #32920
AbstractJsonContentAssert should allow satistfies to run on the json content, not the raw string #32894
Content negotiation for exception handling fails with WebFlux #32878
📔 Documentation
Fix typo in WebTestClient expectedXml #32969
🔨 Dependency Upgrades
Upgrade to Micrometer 1.13.1 #33000
Upgrade to Reactor 2024.0.0-M3 #33006



v6.2.0-M3 Pre-release
⭐ New Features
Lazily register DynamicValuesPropertySource in the TestContext framework #32871
Introduce getRequest and getResponse on MvcTestResult #32846
Add support for qualifiers in test bean overriding and consider improving by-type matching #32822
Support Content Negotiation and view rendering in ResponseEntityExceptionHandler #31936
🐞 Bug Fixes
Change default phase for STOMP message handling components to be ahead of Boot's WebServerStartStopLifecycle default phase #27519



v6.2.0-M2 Pre-release
⭐ New Features
Make it easier to register reflection hints on interface hierarchies #32824
Support varargs invocations in SpEL for varargs array subtype in compiled expressions #32804
Align StandaloneMockMvcBuilder with trailing slash defaults #32796
Use lambda expressions consistently #32765
Bean overriding in tests should use by-type semantic if no name is specified #32761
Add ServerRequest.pathVariableOrNull Kotlin extension #32738
Throw an exception for suspending factory methods #32719
Introduce ReflectiveIndexAccessor convenience class in SpEL #32714
Add BodyInserters.fromValue(T, ParameterizedTypeReference<T>) and related APIs #32713
Rename AssertableMockMvc to MvcTester and review assertions structure #32712
Introduce generateCodeForArgument() in CodeFlow #32708
Make SpelNode compilation aware #32707
Add a requiredBody() extension to RestClient.ResponseSpec #32703
Add IndexAccessor support to SpEL's SimpleEvaluationContext #32702
Support compilation of array and list indexing with Integer in SpEL #32694
Avoid unnecessary compilation attempts in SpEL's Indexer #32677
Adds support for qualifying columns with table. #32653
Omit empty resource description in DeprecatedBeanWarner's log message #32647
Introduce getName() in SpEL's BeanReference #32640
Validate that private JUnit Jupiter lifecycle methods are not annotated with @Autowired #32627
Ensure removal of Content-Type header if body Publisher is empty #32622
Introduce CompilableIndexAccessor SPI in SpEL #32613
AbstractJackson2Decoder doesn't support decoding NDJSON arrays into Flux #32579
Handle DataBufferLimitException as HTTP 413 responses #32558
Introduce URL parser based on algorithm provided in Living URL standard #32513
JettyClientHttpRequestFactory should set request/response timeout #32330
Remove Hibernate substitutions and deprecated properties usage #32314
Register DynamicPropertyRegistry as a singleton bean in a test's ApplicationContext #32271
Allow for AbstractUrlHandlerMapping to add/remove handlers at runtime #32064
Make it possible for Spring Security to align with Spring MVC without HandlerMappingIntrospector #31823
Create Filter to handle URLs with trailing slashes #31366
Add testing support for WebMvc.fn #30477
Use URL and HTTP method in DefaultResponseErrorHandler #28958
CacheAspectSupport initialization failure should throw dedicated exceptions, rather than IllegalStateException #22442
Clear AspectJExpressionPointcut cache when it is no longer used #12334
🐞 Bug Fixes
MediaTypeAssert risk false negative with isNotEqual assertion #32756
IndexAccessor cannot support custom Collection target type #32736
Custom IndexAccessor cannot support String index type #32706
HttpHeaders should reject negative ContentLength values #32660
📔 Documentation
Improve wording in Spring Framework Overview documentation #32829
Clarify supported targets for annotations in the TestContext framework #32772
Modernize the lazy-initialized beans refdoc section #32767
Document SpEL IndexAccessor support in the reference manual #32735
Use lowercase package name in code snippets #32734
Fix class name typo in reference documentation #32664
Introduce configuration code includes and tabs in the Integration section #32600
Document bean override support in the TestContext framework in the reference manual #32490
🔨 Dependency Upgrades
Upgrade to HtmlUnit 4.1.0 #32740
Upgrade to Micrometer 1.13.0 #32811
Upgrade to Reactor 2024.0.0-M2 #32785
Upgrade to webjars-locator-lite 1.0.0 #32564



v6.2.0-M1 Pre-release
⭐ New Features
Remove unnecessary method.isAccessible() invocation #32548
Improve names of classes generated by the SpEL compiler #32497
Refine null-safety with NullAway build-time checks #32475
Consistent handling of undeclared checked exceptions in CGLIB proxies #32469
Resolve property-dependent parameter names for exception messages #32462
Consistent ErrorHandler support in TaskScheduler variants #32460
Add CBOR support to AllEncompassingFormHttpMessageConverter #32428
Reject null return value from MethodReplacer for primitive return type #32412
Make SpEL's OptimalPropertyAccessor private #32410
NPE when using pathExtension predicate for routes that have no file extensions #32404
Use Map#computeIfAbsent in SpEL support classes #32385
Use ELContext instead of deprecated VariableResolver API in JspPropertyAccessor #32383
Add web support for YAML via Jackson #32345
Add DataSource configuration/exposure to LocalEntityManagerFactoryBean #32344
ServletResponseHttpHeaders ignores content type in ServletResponse #32339
Use ConcurrentHashMap.newKeySet where feasible #32294
Avoid resizing of fixed-size HashSet/LinkedHashSet variants #32291
Support backticks for quoted identifiers in spring-r2dbc #32285
Avoid internal lifecycle synchronization for SingleConnectionFactory and SingleConnectionDataSource #32284
DefaultMessageListenerContainer should be able to scale down using default config #32260
Revise DefaultMessageListenerContainer for first-class virtual thread support #32252
Optimize Request Predicate attribute merging #32245
Add ThreadLocalAccessor for LocaleContext and RequestAttributes #32243
Avoid ASYNC dispatch if possible in DefaultAsyncServerResponse #32223
Deprecate LobHandler and SqlXmlHandler abstractions (including SqlLobValue and related support classes) #32179
Revisit default lifecycle phases and timeouts (e.g. for ThreadPoolTaskScheduler) #32152
Harmonize ChannelRegistration to use Executor rather than TaskExecutor #32129
Deprecate HttpHeaders.writableHttpHeaders #32116
JsonPathAssertions methods that take a type used as a lambda should be ordered consistently #32062
Deprecate local variable support in SpEL's internal ExpressionState #32004
Support sending large STOMP messages as fragmented frames on WebSocketStompClient #31970
NamedParameterJdbcTemplate does not support backticks for quoted identifiers #31944
Use UTF-8 by default for JSON multipart content in ContentRequestMatchers #31924
Add interception of RFC-7807 responses #31822
Provide more control over charset parameter when writing form data #31781
Enhance WebTestClient to support JSONPath decoding to higher level objects #31653
Enhance JsonPathExpectationsHelper to allow use of JSONPath Configuration #31651
Support "--" end of options in SimpleCommandLineArgsParser #31513
Make use of bean definition overriding more visible #31288
Initial support for Servlet 6.1 #31159
Initial support for JPA 3.2 #31157
Support to propagate a savepoint operation via TransactionSynchronization #30509
Resolve type variable recursively in GenericTypeResolver #30079
Propagate WebClient attributes into underlying HTTP client request where possible #29958
Provide a safe way to override and mock beans in the TestContext framework #29917
Invoke methods via public interface/superclass in compiled SpEL expressions #29857
Introduce null-safe index operator in SpEL #29847
@Valid annotation can't establish dependency relationship between beans #29730
Optimize constructor dependency injection performance for parameter name matches #28122
Efficient webjars version resolution via webjars-locator-lite #27619
Throw Exception when two primary beans are present in one factory #26612
Allow creation of Beans that cannot be autowired by type unless qualified #26528
Introduce IndexAccessor SPI to customize the SpEL Indexer #26478
Introduce support for non-@Primary fallback beans #26241
Optimize ConfigurationClassPostProcessor#enhanceConfigurationClasses method to shorten startup time #25738
Inherited @Transactional methods should be able to use class-level TransactionManager qualifier from concrete class #24291
TaskScheduler does not work with TaskDecorator #23755
Synchronization during singleton creation may result in deadlock #23501
Allow global default for @Transactional rollback behavior on checked exceptions #23473
Add support for resolving multiple bounds in type variables #22902
@Transactional annotation can't establish dependency relationship between beans #22526
Asynchronous EntityManagerFactory bootstrapping to complete on context refresh completion [SPR-17334] #21868
Provide a mechanism to be notified that a bean has been created [SPR-16822] #21362
Reduce the effect of different base package configuration on component scanning performance and make the effect more intuitive [SPR-16649] #21190
Support AssertJ variant in MockMvc [SPR-16637] #21178
Support configuration of connection URL via EmbeddedDatabaseBuilder [SPR-16619] #21160
Revisit storage of null attributes in AbstractFallbackTransaction/CacheAttributeSource [SPR-15513] #20072
Asynchronous initialization of beans during startup [SPR-14920] #19487
Autowiring with @Autowired/@Inject get much slower than with @Resource as the number of classes increases [SPR-13086] #17677
Parallel bean initialization during startup [SPR-8767] #13410
Support escaping prefix and separator in property placeholders [SPR-4953] #9628
🐞 Bug Fixes
Transactional event listener invoked like standard event listener if @EnableTransactionManagement not active #32319
Stop overriding thread name prefix for externally configured Executor in ChannelRegistration #32132
WebClient and RestClient's defaultRequest(..) is not invoked early enough #32053
Alias resolution in SimpleAliasRegistry depends on hash codes of alias values #32024
Fix DefaultDataBuffer#getNativeBuffer() to set correct limit #32009
DefaultDataBuffer#setNativeBuffer violates contract of DataBuffer #30984
The method getNativeBuffer() in DefaultDataBuffer returns misconfigured ByteBuffer #30967
ApplicationContext caches are not cleared as expected when beans are lazy initialized #30954
A configuration class superclass that is skipped due to register bean phase conditions is ignored when another configuration class that extends it is processed #28676
Configuration class parsing registers bean in parent class if overridden @Bean method defines an alternative name #28286
Conditions to determine if @ComponentScan should be applied can be chosen from the wrong class #27077
Fallback with placeholder is evaluated even if the fallback is not required #26268
Name of scanned @Configuration class affects @Import to work or fail #24643
Reject conditional @ComponentScan declarations that rely on the REGISTER_BEAN phase #23206
Initialization blocked by multi-threaded event publishing [SPR-16357] #20904
Invalid instance injected for generic type in case of partial type variable [SPR-16179] #20727
📔 Documentation
Polish Bean Overriding in Tests section of the reference guide #32411
Improve Javadoc for substituteNamedParameters() in NamedParameterUtils regarding empty lists #32380
StringUtils.uriDecode decodes strings with non-ASCII characters incorrectly #32360
Improve documentation for SpEL indexing support #32355
Document when the JPA infrastructure is ready for use #26153
Refactor configuration code samples to be more relevant for modern Spring applications #22171
🔨 Dependency Upgrades
Upgrade to HtmlUnit 3.11.0 #30392
Upgrade to Micrometer 1.13.0-RC1 #32595
Upgrade to Reactor 2024.0.0-M1 #32591



