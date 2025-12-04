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

