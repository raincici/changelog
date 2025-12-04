v6.1.21
🐞 Bug Fixes
Encode non-printable character in Content-Disposition parameter #35035
Allow update of existing WebSession after max sessions limit is reached #35018
Enhanced configuration class fails to call package-visible superclass constructor on WebSphere #34951
🔨 Dependency Upgrades
Upgrade to Reactor 2023.0.19 #35022


v6.1.20
⭐ New Features
Add option for case-insensitive match to PatternMatchUtils #34802
🐞 Bug Fixes
HttpComponentsClientHttpRequestFactory setConnectionRequestTimeout not working with httpclient 5.3.1 #34854
Accidental ClassLoader defineClass enforcement after #34677 #34839
📔 Documentation
Clarify CompositePropertySource behavior for EnumerablePropertySource contract #34887
🔨 Dependency Upgrades
Upgrade to Reactor 2023.0.18 #34899


v6.1.19
⭐ New Features
Suggest compilation with -parameters when AspectJAdviceParameterNameDiscoverer fails against ambiguity #34618
🐞 Bug Fixes
PropertyBatchUpdateException: causes of nested PropertyAccessExceptions not shown in output #34698
Change in Jar usecache behavior with Spring 6.1.x causing java.lang.IllegalStateException: zip file closed #34694
Startup performance regression due to CGLIB class load attempts in Spring 6.1.x #34693
IllegalAccessError for package-private member of AzureStorageConfiguration on WebSphere #34690
@Configuration classes can no longer be abstract without @Bean methods #34689
Generated-code for LinkedHashMap is missing static keyword #34661
AbstractReactiveTransactionManager throws IllegalStateException when rollback fails after commit attempt #34619
📔 Documentation
Add javadoc notes on potential exception suppression in ListableBeanFactory#getBeansOfType #34631
Remove remaining references to Forwarded headers in MvcUriComponentsBuilder #34626
MvcUriComponentsBuilder javadocs inaccurately reflects usage of forwarded headers #34620


v6.1.18
⭐ New Features
Avoid unnecessary CGLIB processing on configuration classes #34487
Inconsistent default class loaders in hint classes #34473
🐞 Bug Fixes
DefaultManagedTaskExecutor throws java.lang.UnsupportedOperationException: isShutdown when rejecting tasks #34515
Endless loop with DataSourceUtils in spring-jdbc #34497
MockHttpServletResponse - handle multiple values for Content-Language header #34491
MockHttpServletResponse#setHeader does not remove header for null values #34466
ContentCachingResponseWrapper.setHeader does not handle null value properly. #34465
Task scheduler configured by XML is not eligible for getting processed by all BeanPostProcessors #34436
NullPointerException thrown when ConfigurationClassEnhancer creates CGLIB proxy #34425
📔 Documentation
Fix broken antora task #34455
🔨 Dependency Upgrades
Upgrade to Reactor 2023.0.16 #34579


v6.1.17
⭐ New Features
Improve PathMatcher to PathPatternParser migration in mvc XML configuration #34102
Avoid logger serialization behind shared EntityManager proxy #34085
🐞 Bug Fixes
Check hasNext when when accessing sessionIds from UserDestinationResult #34397
Quartz-style Nth Day of Week cron expressions can overflow to other month #34377
Stop assuming that AspectJ Advice has JoinPoint as the first argument #34369
ConfigurationClassEnhancer should explicitly set custom ClassLoader on CGLIB Enhancer (aligned with CglibAopProxy) #34358
Property binding to Map that implements Iterable no longer works #34338
AnnotationBeanNameGenerator issues warning about explicitly aliased value attribute #34330
Connection reset exception from RestTemplate call in Spring Web MVC controller is ignored #34278
Wrong parentId tracking in FlightRecorderApplicationStartup #34254
Ensure AsyncListener#onError does not return until dispatch completes #34196
SpEL fails to invoke MethodHandle function reference accepting only varargs #34114
📔 Documentation
Clarify component scanning of abstract classes with @Lookup methods #34368
Fix broken links in the web reference documentation #34139
🔨 Dependency Upgrades
Upgrade to Reactor 2023.0.15 #34406
Upgrade to RSocket 1.1.5 #34405


v6.1.16
⭐ New Features
Log alias removal in DefaultListableBeanFactory #34071
OptionalValidatorFactoryBean suppresses Hibernate Validator configuration failures too much #34041
Update UndertowHttpHandlerAdapter to dispatch #33969
🐞 Bug Fixes
HandshakeWebSocketService assumes jakarta websocket is present #34023
📔 Documentation
Fix a typo in the filters documentation #33971
SpEL documentation contains syntax errors #33908
🔨 Dependency Upgrades
Upgrade to Reactor 2023.0.13 #34049
Upgrade to Undertow 2.3.18.Final #33976


v6.1.15
⭐ New Features
Use UriUtils to process static resource paths #33859
Prefer modified resources over the originals in TestCompiler #33850
Improve iteration methods in native headers to MultiValueMap adapters #33823
Deregister empty Cache from CacheManager #33813
Rename aopAvailable constants in TransactionSynchronizationUtils for better GraalVM native image support #33796
Load-time weaving support for WildFly 24+ #33728
🐞 Bug Fixes
DefaultClientRequestObservationConvention generates wrong uri tag when missing path #33867
HttpComponentsClientHttpRequestFactory setReadTimeout not working with httpclient 5.4 #33806
HttpHeaders.writeableHttpHeaders(new HttpHeaders(readOnlyHttpHeaders)) is not writeable #33789
RestClient exchange methods are not nullable #33779
Throw SpelParseException for unsupported character in SpelExpressionParser #33767
DefaultMessageListenerContainer reports incorrect jms.process.message count #33758
Autowiring fails if multiple non-highest @Priority beans exist with same priority #33733
Jackson2Decoder leaks on WebClient timeout #33731
DefaultServerRequestObservationConvention throws when response status is zero #33725
Aspect executed twice - @AfterThrowing #33704
parts w/o filename in Content-Disposition header are not cleaned from temp folder (skipped by StandardServletMultipartResolver) #33511
📔 Documentation
Resources link points to wrong section of reference guide #33882
Remove mentions of Joda-Time support #33881
SimpleAsyncTaskExecutor blocks calling thread when concurrencyLimit set #33873
Fix formatting issue in validation section of reference guide #33871
Fix typo in reference documentation #33865
Fix XML bean reference example in reference manual #33855
Fix a typo in documentation #33846
Numerous warnings when injecting dependencies into configuration that implements CachingConfigurer #33834
@Async documentation should not suggest deprecated classes #33805
Document that circular dependencies should be avoided in AOT mode #33786
Inconsistent Lifecycle Management with Virtual Threads in Spring Boot Async Configuration #33780
Fix incorrect regex rendering in MVC controller documentation #33766
Improve documentation for allowEagerInit parameter in getBeanNamesForType() #33740
Fix Javadoc in ReactorNetty2ResourceFactory #33735
Document options for handling Date/Time parsing and formatting issues with JDK 20+ #33151
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.12 #33877
Upgrade to Reactor 2023.0.12 #33879


v6.1.14
⭐ New Features
Use Locale.ROOT for locale neutral, case insensitive comparisons #33708
Improve checks for relative paths in static resource handling #33689
CorsUtils.isCorsRequest throws unhandled IllegalArgumentException and returns 500 Internal Server Error on malfomed Origin header #33682
Skip processing of Java annotations in QualifierAnnotationAutowireCandidateResolver #33580
Include argument name in MethodArgumentTypeMismatchException error message #33573
Preserve coroutine context in WebClientExtensions #33548
Blocking call detected in ConcurrentReferenceHashMap by BlockHound #33450
Warning message about bean post-processing and eager injection may suggest the wrong cause #33184
🐞 Bug Fixes
DelegatingFilterProxy Causes Pinned Virtual Threads #33656
Potential NPE from MethodParameter.getMethod() check in KotlinDelegate.hasDefaultValue() #33609
Missing native image hints for JDK proxies created by JMS connection factories #33590
AotTestExecutionListener should not be invoked for a @DisabledInAotMode test class #33589
Use encoded resource path instead of input path validation in spring-webflux #33568
org.springframework.util.ResourceUtils#toRelativeURL drops custom URLStreamHandler #33561
Current observation not in scope during WebClient ExchangeFilterFunction execution #33559
ZoneIdEditor throws wrong exception type for TypeConverterSupport #33545
MimeMessageHelper addInline with ByteArrayResource fail with null filename #33527
@Cacheable throws NullPointerException when RuntimeException is thrown inside annotated code #33492
Path variable values missing in RedirectView when PathPattern are used #33422
Reactive HttpComponentsClientHttpResponse ignores Expires cookie attribute #33157
📔 Documentation
Update fallback.adoc #33721
Update scheduling.adoc #33703
Fix link in testing/support-jdbc.adoc #33686
Adapt Javadoc note about log level of BeanPostProcessorChecker #33617
Reference the spring-framework-petclinic repository wich uses AspectJ #33539
🔨 Dependency Upgrades
Upgrade to Apache HttpClient 5.4 #33587
Upgrade to Apache HttpCore Reactive 5.3 #33588
Upgrade to Awaitility 4.2.2 #33604
Upgrade to Micrometer 1.12.11 #33647
Upgrade to Reactor 2023.0.11 #33637


v6.1.13
⭐ New Features
Errors thrown from SmartLifeycle#stop results in (unnecessary) waiting for the shutdown timeout #33442
Updates to resource handling for functional endpoints #33434
Stop logging result in WebAsyncManager #33406
spring native not support method handler with kotlin default value #33384
🐞 Bug Fixes
BindingReflectionHintsRegistrar do not take into account the boxed type Boolean #33380
Ensure use of specified status code on redirect with Rendering #33498
Inconsistent handling of X-Forwarded-Prefix in servlet and reactive stack #33465
ServerHttpObservationFilter does not register against new async operations #33451
Revert removal of deprecated rawStatusCode methods #33440
PathMatchingResourcePatternResolver no longer follows symlinks #33424
Deadlock between SseEmitter and StandardServletAsyncWebRequest when clients disconnect #33421
RestClient doesn't open a scope for the processing of the request #33397
WebTestClient leaks when ParameterizedTypeReference is used #33389
📔 Documentation
Document fixed rate scheduling with CRaC #33490
Update information in SpEL Evaluation chapter in reference manual #33456
Stop documenting use of -debug compiler flag in reference manual #33453
Use discrete headings instead of titled blocks in reference manual #33447
Fix example for @ImportResource in the reference manual #33446
Fix a typo in the CDS documentation #33437
Fix link to chapter introduction #33417
Improve documentation on reading form data via Servlet request parameters vs @RequestBody #33409
🔨 Dependency Upgrades
Upgrade to Kotlin 1.9.25 #33471
Upgrade to Micrometer 1.12.10 #33518
Upgrade to Objenesis 3.4 #33526
Upgrade to Reactor 2023.0.10 #33519




v6.1.12
⭐ New Features
Efficient handling of conditional HTTP requests #33372
LocaleEditor cannot parse language tag with script like zh-Hans #33348
Reinstate qualifier support for legacy JSR-330 @javax.inject.Named annotation #33345
SimpleAsyncTaskScheduler stops accepting new tasks when isShutdown #33336
🐞 Bug Fixes
Fix incorrect weak ETag validation #33374
Avoid CacheAspectSupport#findInCaches falling through to the reactiveCachingHandler #33371
ScheduledAnnotationReactiveSupport starts the observation before it is opened #33349
RestClient observation flags error for UnknownContentTypeException twice #33347
RestClient instrumentation unnecessarily calls stop on a closed observation #33346
SimpleEvaluationContext does not enforce read-only semantics #33319
SpEL wraps primitive array in Object[] when invoking varargs method #33317
SpEL no longer supports lists for varargs invocations #33315
SpEL Indexer silently ignores failure to set property as index #33310
AOT-generated code produces deprecation warnings when using a deprecated class for autowiring #33295
@Scheduled method in test class not supported anymore #33286
AOT-generated code produces deprecation warnings when referencing a nested class of a deprecated class #33273
Jaxb2XmlEncoder does not support JAXBElement subtypes #33258
ShallowEtagHeaderFilter throws a NumberFormatException for responses bigger than 2Gb #33256
RequestPredicates fail with UnsupportedOperationException with a custom servlet path #33251
Missing observation for @JmsListener response messages #33221
ConversionService cannot convert primitive array to Object[] #33212
Spring coroutines AOP is not compatible with @Cacheable #33210
PathMatchingResourcePatternResolver#convertClassLoaderURL drops URLStreamHandler in version 6.1.x #33199
SpEL cannot invoke varargs MethodHandle function with a primitive array #33198
Trim last allowed origin when parsing comma-delimited string #33181
Multipart files not deleted after upload is finished with async request #33161
JaxbContextContainer does not define the ClassLoader to use to retrieve the JAXBContext to use #33158
Memory Leak in WebFlux application handling HTTP Multipart #33094
Support invoking bridged suspending functions in AopUtils #33045
📔 Documentation
Fix typo in the bean validation section of the reference manual #33354
Fix syntax error in RestClient documentation #33350
Add Kotlin example for expectAll() #33341
Javadoc of ReactorResourceFactory#setConnectionProviderSupplier wrongly states it can be ignored #33338
Improve EnableCaching & CachingConfigurer Javadoc #33288
Code sample has wrong reference to configurePathMatching #33277
Document that NoOpResponseErrorHandler is to be used with the RestTemplate #33276
Stop referring to Oracle STRUCT and ARRAY as they are deprecated #33248
Update links in reference manual #33245
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.9 #33325
Upgrade to Reactor 2023.0.9 #33326



v6.1.11
⭐ New Features
Ensure varargs component type for MethodHandle is not null in SpEL's ReflectionHelper #33193
Confusing WebClient exception message in case of Reactor-Netty PrematureCloseException during response #33127
Include the bean name in the exception when an invalid factoryBeanObjectType attribute is found #33117
Use error handler for reactive cache aspect #33073
getTypeForFactoryMethod should catch NoClassDefFoundError #33075
🐞 Bug Fixes
SpEL cannot invoke varargs MethodHandle function with an array #33191
SpEL cannot invoke varargs MethodHandle function with zero variable arguments #33190
Nested bean instance supplier invocation does not retain previous factory method #33180
DefaultErrorResponseBuilder does not implement headers(Consumer) #33156
Fix adaptation of violations on Set method parameter #33150
Web controller call with invalid body resulting in 500 instead of 400 when using kotlinx-serialization #33138
"file:." cannot be resolved to java.nio.file.Path (and plain "." value resolves to classpath root) #33124
Mockito mock falsely initialized as CGLIB proxy with AspectJ aspect #33113
Fix ClassCastException from return value validation with proxy when adaptConstraintViolations=true #33105
Spring coroutines AOP is not compatible with @Transactional #33095
ReactorClientHttpConnector creates new HttpClient for every request #33093
Trace and Span IDs are no longer propagated RequestBodyAdvice beans #33091
Early LocalContainerEntityManagerFactoryBean initialization fails in case of null bean definition #33082
ReactorNettyClientRequest.convertException should include original exception if cause is null #33080
SpEL incorrectly splits string arguments by comma for Object... varargs method #33013
ProtobufMessageConverter fails to parse JSON payload if byte array is used #27408
📔 Documentation
Harmonize phrasing in URI Encoding section #33166
Document that ModelMap is not a supported argument type in WebFlux #33107
Example in Method Injection section of Spring Framework documentation refers to wrong bean names #33096
Resource writer doesn't consider subclasses of InputStreamResource for content length bypass #33089
Improve documentation regarding encoding in FreeMarker support #33071
Exception for validation failure in WebFlux does not match the documentation #33061
🔨 Dependency Upgrades
Upgrade to Kotlin 1.9.24 #33177
Upgrade to Kotlin Serialization 1.6.3 #33175
Upgrade to Micrometer 1.12.8 #33168
Upgrade to Reactor 2023.0.8 #33169


v6.1.10
⭐ New Features
Defensive PersistenceExceptionTranslator bean retrieval in PersistenceExceptionTranslationInterceptor on shutdown #33067
Support all "connection reset" exception phrases in DisconnectedClientHelper #33064
🐞 Bug Fixes
Duplicate observations recorded with RestClient #33068
WebFlux validation requires Servlet API since Spring Framework 6.1.3 #33043
No qualifying bean of type 'java.lang.String' in case of accidental @Autowired @Bean method with @Value parameter #33030
ConfigurationClassEnhancer does not use correct ClassLoader when called multiple times #33024
📔 Documentation
Typo in Annotation-driven Listener Endpoints section of Spring Framework documentation #33050
Container Extension Points section of Spring Framework documentation refer to the wrong property name #33037
Fix typo in comment #33036
Incorrect constructor details in the javadoc for ApplicationContextEvent #33032



v6.1.9
⭐ New Features
CRaC: ignore checkpointOnRefresh afterRestore #32978
Add missing hints for Hibernate @TenantId #32967
AnnotationUtils performance degrades with deep stacks #32921
Missing hints for Hibernate generators #32842
AbstractAutoProxyCreator#determineBeanType can trigger bean initialization at build time for aspects implementing Ordered #32230
🐞 Bug Fixes
Behaviour change in ScheduledAnnotationBeanPostProcessor: canceling scheduled tasks on ContextClosedEvent v6.0 -> v6.1 #33009
ContentCachingRequestWrapper may allocate too much memory #32987
Support canEncode() for JAXBElement in Jaxb2XmlEncoder #32977
AspectJ CTW aspects executed twice #32970
@Valid annotations on container elements for handler argument validation not supported #32964
Add support for double backslashes to StringUtils#cleanPath #32962
@CacheEvict condition uses wrapper comparison instead of actual objects #32960
ConcurrentHashMap.computeIfAbsent used in AdvisedSupport can cause virtual thread pinning #32958
Exception mapping does not work as expected when plugging in ReactorNettyClientRequestFactory into RestTemplate and RestClient #32952
ReactorResourceFactory not working with CRaC onRefresh checkpoint #32945
SpEL compilation fails when indexing into an array or list with an Integer #32908
SpEL compilation fails when indexing into a Map with a primitive #32903
BeanUtils.copyProperties no longer copies generic type properties from a base class that has been enhanced #32888
Application not starting with @EnableTransactionManagement(mode = AdviceMode.ASPECTJ) #32882
ReactorNettyClientResponse should not throw exception if no body is available #32805
Observation in ServerHttpObservationFilter is never stopped for asynchronous requests #32730
📔 Documentation
Fix typo in the Simple Broker section of the reference documentation #32993
Remove outdated copyright from index.adoc #32983
Use HttpStatusCode consistently in reference guide #32966
Entity name in MappingSqlQuery example of reference guide is wrong #32957
Fix RegisterReflectionForBinding Javadoc #32947
Reference documentation sample for MethodValidationPostProcessor is missing a static keyword #32929
Fix typo in Jakarta validation documentation #32928
Refine KotlinDetector.isKotlinType documentation for Kotlin 2.x lambdas #32905
Complete Kotlin example for HTTP message codecs in reference doc #32877
Use Threadlocal.remove() instead of .set(null) in documentation #32874
Unexpected bean override / inject behavior #32825
Document why complex object structure are not supported as paremeters or properties by AOT #32273
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.7 #33001
Upgrade to Reactor 2023.0.7 #33007



v6.1.8
⭐ New Features
Avoid creation of SAXParserFactory for every read operation in Jaxb2Marshaller and co #32851
Suppress deprecation warning for AOT-generated code that refers to a deprecated bean type #32850
🐞 Bug Fixes
Overridden aspect method runs twice #32865
@DateTimeFormat(iso = DateTimeFormat.ISO.DATE\_TIME) cannot convert UTC without milliseconds to java.util.Date #32856
Spring AOP fails against registered @Configurable aspect #32838
MockHttpServletRequest should not use a shared reader when no content is available #32820
📔 Documentation
Modernize Antora Build #32864
Modernize Antora Build #32863
Refine CDS documentation #32843
Revisit validation documentation to better explain when method validation is invoked #32807



v6.1.7
⭐ New Features
ResponseEntity is not reliably closed with InputStreamResource #32802
Accept ajc-compiled @Aspect classes for Spring AOP proxy usage #32793
Failure to process a bean definition ahead-of-time with an instance supplier should provide more contextual information #32775
Provide methods to unambiguously send form data with MockMvc #32757
Introduce NoOp implementation for ResponseErrorHandler #32750
Support varargs invocations in SpEL for varargs array subtype #32704
StreamUtils.copyRange overreads source stream in some cases #32695
Modify error message when timeout is less than TIMEOUT_DEFAULT #32635
Jetty HttpConnections not closed with SSE on Jetty 12.0.7+ when clients close the connection #32629
Prevent duplicate subscription ID's in destinationCache of DefaultSubscriptionRegistry #32625
When retrieval of a LoadTimeWeaverAware bean fails the resulting exception message may not indicate why it was being created #32470
🐞 Bug Fixes
Do not send Cookie header in reactive JdkClientHttpRequest if no cookies added #32799
Inconsistent use of cleaned URLs in PathMatchingResourcePatternResolver #32828
DeferredQueryInvocationHandler fails to unwrap QuerySqmImpl class outside of transaction #32766
BindingReflectionHintsRegistrar#registerReflectionHints can be invoked with a null type #32753
AnnotationConfigWebApplicationContext should propagate ApplicationStartup to BeanFactory #32747
Ignore non-String keys in PropertiesPropertySource.getPropertyNames() #32742
MergedAnnotations search does not find container for repeatable annotation #32731
"multiple subscribers not supported" when using WebClient exchange #32727
ConfigurationClassEnhancer should consistently trigger FastClass creation at build-time #32682
HttpComponentsClientHttpRequestFactory does not set Content-Length: 0 #32678
Wrong proxy generation order during AOT for classes with ScopedProxyMode.TARGET\_CLASS and advisors #32669
Unhandled JMS listener exceptions are not propagated #32666
beanFactory#getBean with arguments ignore them if an Instance supplier is defined #32657
Incorrect AsyncRequestTimeoutException handling in ResponseEntityExceptionHandler #32644
Include actual cause's message in various parsing exception messages #32636
Configuration class with Bean factory method on an interface generates wrong target with AOT #32609
RestClient observations are stopped before ResponseSpec calls #32575
MvcUriComponentsBuilder.fromMethodName does not pick the annotated method transparently #32553
Deadlock/Stall in ConcurrentWebSocketSessionDecorator with Undertow 2.3.10 #32445
RSocket setup payload can cause Netty ByteBuf leak #32424
WebFlux temporary file not always deleted with parallel uploads. #31217
📔 Documentation
Replace RFC 7807 by RFC 9457 in documentation #32806
Links to Framework and Servlet Javadoc from Framework's Kotlin API documentation are broken #32797
Fix incorrect class reference syntax in Kotlin code sample #32733
Improve documentation advising against use of HandlerInterceptor for security #32729
Inconsistent behaviour on transactional async method #32709
Document that getBean with arguments is not recommended with AOT #32690
Provide an example of custom request URL with RestClient in the reference guide #32685
Correct documentation on streaming with MockMvcWebTestClient #32687
Document limitations of CGLIB proxy class generation in JPMS module setups #32671
Update links to HttpOnly documentation at OWASP in ResponseCookie #32663
Document that RestTemplate may not return a body for certain exceptions #32641
Document that DataIntegrityViolationException can also be thrown on read-only queries #32631
Update documentation to explain streaming vs collecting and error handling with Flux<T> return values #32630
Revise "The IoC Container" section to be more relevant for modern Spring applications #32429
XML bean definition with factory-method does not always determine correct target type #32091
Document @Order behavior on types, bean methods, and config classes #30177
Clarify recommendation on self-injection for legitimate use cases (e.g. @Transactional re-entrant calls) #28299
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.6 #32810
Upgrade to Reactor 2023.0.6 #32786



v6.1.6
⭐ New Features
Log column type for limited support message in JdbcUtils.getResultSetValue #32601
Consistent support for generic FactoryBean type matching when using getBeanProvider #32590
@RequestParam binding does not support params with an empty array "[]" suffix #32577
Maximum Request Size handling support for Undertow in StandardMultipartHttpServletRequest #32549
Introduce common support for is-null-safe checks in SpEL nodes #32516
Avoid additional unnecessary Annotation array cloning in TypeDescriptor #32476
Avoid cloning empty Annotation array in TypeDescriptor #32405
🐞 Bug Fixes
Refine scheme, userinfo, host and port parsing in UriComponentsBuilder #32616
"GET must not have a request body" exception with OkhttpClient and BufferingClientHttpRequestFactory #32612
JMSTemplate.sendAndReceive does not propagate tracer over the wire #32606
Calling Kotlin suspend functions in non-reactive application crashes due to unresolvable class #32599
MethodIntrospector.selectMethods() fails to detect bridge methods across ApplicationContexts #32586
Fix handling value class with private constructor on proxy #32536
ReactorNettyClientResponse should not dispose connection #32528
CompoundExpression omits null-safe syntax in AST string representation of null-safe selection/projection in SpEL #32515
Generic Kotlin controllers got broken in 6.1.5 #32510
WebFlux Blocking controller runs on non-blocking thread when request input data present #32502
Generic interface on FactoryBean class not autowired in case of targetType mismatch #32489
HeaderContentNegotiationStrategy.resolveMediaTypes() throws unexpected InvalidMimeTypeException #32483
JmsUtils.commitIfNecessary catches and ignores JMS IllegalStateException, losing message with ActiveMQ Artemis #32473
Missing bean class in native image with a Kotlin nested class #32472
Spring MVC re-creates form data from request params and re-encoding can change the content-length #32471
Unhandled JMS exceptions are not always recorded as observation errors #32458
Consistently apply TaskDecorator to ManagedExecutorService as well #32455
📔 Documentation
SimpleAsyncTaskScheduler: Returned ScheduledFuture does not track provided task execution #32589
Remove link to unrelated method in javadoc of AnnotatedBeanDefinitionReader #32560
Fix typos and improve wording in reference documentation #32557
Document that active profiles are set at build time with AOT #32543
Fix broken link to vavr in the reference guide #32494
Document AOT limitations related to Kotlin identifiers with backticks #32487
Add Javadoc since to AbstractClientHttpRequestFactoryWrapper.getDelegate() #32474
Default strategy for ProblemDetail error codes wrongly document how "detail" is supported #32446
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.5 #32596
Upgrade to Reactor 2023.0.5 #32592



v6.1.5
⭐ New Features
Extract reusable method for URI validations #32440
Allow UriTemplate to be built with an empty template #32432
Optimize Coroutine invocations #32390
Improve exception message when Scheduled tasks that are using Virtual Threads fail on shutdown #32381
Add query parameters to MockMvc Kotlin DSL #32371
Optimize content type parsing in ServletServerHttpResponse #32361
Refine handling of disconnected client error in ExceptionHandlerExceptionResolver #32359
Refine \*HttpMessageConverter#getContentLength return value null safety #32325
Optimize HttpHeaders.getAcceptLanguageAsLocales #32318
SimpleAsyncTaskScheduler: consistently apply default error handling #32298
Use Spliterator of underlying collection in MutablePropertyValues / MutablePropertySources #32281
🐞 Bug Fixes
SpEL fails to compile expression indexing into boolean array #32400
WebClient Observations are missing error #32389
WebClient request sent twice instantly when using @Cacheable #32370
AopUtils.getMostSpecificMethod does not return original method for proxy-derived method anymore #32365
Fix ServletResponseHttpHeaders#get null handling #32362
Compiled SpEL expression fails if #root or #this is a non-public type #32356
Suspend handler methods fail on nullable value class parameters #32353
Better protect against concurrent error handling for async requests #32340
Performance degradation due to Kotlin value class checks #32334
With value referenced from property file in XML configuration, setter selection can be random in case of overloaded setter methods (e.g. on SimpleClientHttpRequestFactory) #32329
constructor-impl of Kotlin value class is not called #32324
ContentCachingResponseWrapper no longer honors Content-Type and Content-Length #32317
Hibernate native image support broken by HHH-17643 #32311
Revisit DatabaseMetadata#getProcedures to only apply fallback if original search yield more than one result #32295
Remove Observation.Context from WebClient request #32198
📔 Documentation
Refine "Redirecting to a resource" section code sample #32423
Javadoc of ReactorNettyClientRequestFactory#setExchangeTimeout methods have wrong default value #32419
Fix order of 2 sections in the Validation chapter of the reference manual #32408
Fix Javadoc #32403
Document that SpEL expressions using array construction cannot be compiled #32401
Improve documentation for @Sql execution phases regarding lifecycle #32343
Omit parameter names in REST Clients section of reference docs #32335
Different transaction name when using TransactionAspectSupport.currentTransactionStatus().transactionName #32310
Provide guidelines for using Kotlin properties with proxies (@RequestScope and similar use cases) #32287
Correct documentation for userDestinationPrefix in MessageBrokerRegistry #32272
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.4 #32431
Upgrade to Reactor 2023.0.4 #32420



v6.1.4
⭐ New Features
Add missing RequestPredicate variants in coRouter #32256
Adapt ConcurrencyThrottleSupport to use ReentrantLock for better virtual thread support #32251
Create optimized versions of request predicates #32244
Include function name in SpelMessage.INCORRECT\_NUMBER\_OF\_ARGUMENTS\_TO\_FUNCTION #32239
Add Coroutines support to NonReactiveHandlerMethodPredicate #32227
RouterFunctionMapping does not implement MatchableHandlerMapping #32221
Initialize (another) Map with correct size in RequestPredicates #32215
Make SmartLifecycle phase value configurable in STOMP message handling components #32205
Initialize Map with correct size in RequestPredicates #32201
Let BeanPropertyRowMapper subclasses customize mapped names #32199
Improve client and server handling of STOMP heartbeat failures #32195
Optimize Map methods in ServletAttributesMap #32189
Support binary streams with JdbcClient #32161
Annotate core functional SPIs in SpEL with @FunctionalInterface #32135
Cannot use SimpleJdbcInsert with catalog name #32124
Refactor ReloadableResourceBundleMessageSource #32118
Reuse MapPropertySource for DynamicValuesPropertySource implementation (as a template for custom variants) #32110
Improve Spring AOP performance for methods without specific advice #32104
Make it possible to configure any TaskExecutor through ChannelRegistration #32081
Add support for JSON streams to Kotlin Serialization #32074
Avoid reflecting to obtain validationGroups every time the call is made #32068
Reject @RequestMapping and @HttpExchange declarations on the same element #32065
Missing toString for ExponentialBackOff #32061
Reject multiple @HttpExchange declarations on the same element #32049
ClientAbortException from StreamingResponseBody can cause infinite loop of dispatches #32042
Log warning if multiple @PostMapping, @GetMapping, etc. annotations are declared #31962
Using types in @SessionAttributes is sometimes not reflected in the model #30463
Improve read publisher cancel handling to avoid connections in CLOSE_WAIT state with WebSocket on Tomcat #30393
Provide more control over JPA entities scanning #27892
Provide and document a way to handle single-page application redirects #27257
MockMvcClientHttpRequestFactory swallows ServletResponse.errorMessage #26720
🐞 Bug Fixes
Cannot send Server-Sent Events without data using WebMvc.fn SseBuilder #32270
Fix pathExtension null-safety in Kotlin DSLs #32254
SimpleEvaluationContext.Builder is not final and has a public constructor #32253
@JsonDeserialize(builder = ...) does not work in GraalVM native image #32238
RestClientAdapter claims it supports request attributes when it does not #32232
ThreadPoolTaskExecutor rejecting tasks as soon as the context has been closed can lead to exceptions during web app shutdown #32226
Consistent parsing of user information in UriComponentsBuilder #32211
"IllegalStateException: Cannot call sendError() after the response has been committed" when IOException is thrown during resolving method argument values on Tomcat >= 10.1.16 #32206
No longer able to override the toString() in HandlerMethod from 6.1.3 #32184
6.1.3 regression: aspect not called with multiple inheritance #32181
Unable to use baseUrl on builders created from RestTemplate #32180
MessageDeliveryException on shutdown with open WebSocket connections #32171
With XML configuration, setter selection can be random in case of overloaded setter methods (e.g. on SimpleClientHttpRequestFactory in 6.1.3 from convertForProperty method) #32159
Cannot process AOT when spring-orm is on the classpath without JPA #32155
SpEL's Indexer.setArrayElement() incorrectly requests conversion to wrapper instead of primitive #32147
SpEL increment and decrement operators do not generate prefix AST representation #32144
Validation of PartEventHttpMessageReader#maxParts is off by one #32122
QualifierAnnotationAutowireCandidateResolver.checkQualifier does identity checks when comparing arrays used as qualifier fields #32106
Guard against multiple body subscriptions in Jetty and JDK reactive responses #32100
Parameter based cache keys on repository methods can't resolve after 6.1.2->6.1.3 #32087
Exceptions thrown by custom error handlers are not recorded in RestTemplate observations #32060
Static resources caching issues with ShallowEtagHeaderFilter and Jetty caching directives #32039
RestClient calls interceptors from RestTemplate twice #32038
DefaultRestClientBuilder.defaultRequest(...) doesn't do anything #32028
Alias resolution error message in SimpleAliasRegistry is misleading #32025
Destroy method not found in Native image for ExecutorService Bean type #32006
RequestPredicate fails with WebFlux 6.1.2 #31955
ChannelSendOperator.WriteBarrier race condition in request(long) method leads to response being dropped #31865
📔 Documentation
Fix Kotlin syntax errors in RestClient builder example in rest-clients.adoc #32265
Use double dot in "META-INF/aop.xml" documentation #32264
Document that functions are variables in SpEL EvaluationContexts #32258
Add section on AOT best practices about registering beans programmatically #32241
Add section on AOT best practices about registering singletons #32240
Fixes syntax error in JdbcClient examples #32236
Document @RequestAttribute in HTTP clients #32231
Fix typo in beanvalidation.adoc #32218
Variables definition fixed #32216
Document safe navigation support for collection selection/projection in SpEL #32208
Document usage of SpEL's power operator in the reference manual #32187
Document support for overloading operators in SpEL #32182
Update basics.adoc #32145
Document between operator in SpEL #32140
Update documentation for supported letters in variable names in SpEL #32138
Document repeat and characer subtraction String operators in SpEL #32137
Document increment and decrement operators in SpEL #32136
Document cron-vs-quartz parsing convention for dayOfWeek part in CronExpression #32128
Fix typo #32111
Graceful shutdown does not cancel @Scheduled tasks #32109
Fixes atlas-extension order #32083
Spring MVC and WebFlux docs need to say method validation applies if any method parameter has constraint annotations #32082
Add @see PathPattern to function router methods with a pattern parameter #32045
Rename class-data-sharing.html to cds.html #32044
Enable table striping by default in the reference manual #32022
Document that Conditions can be ordered #32019
Document how @JvmName could mitigate Kotlin internal modifier impact #32010
Update docs on server side use of @HttpExchange to make it more clear when it is a good fit #32008
Document safe navigation semantics within compound expressions in SpEL #21827
Document limitation of SpEL regarding minimum values for numeric literals #20779
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.3 and Context Propagation 1.1.1 #32277
Upgrade to Reactor 2023.0.3 #32274



v6.1.3
⭐ New Features
Perform checks for bean validation constraints in HandlerMethod only when needed #32007
Exclude URI query from remaining WebClient checkpoints #31992
Avoid early getMostSpecificMethod resolution in CommonAnnotationBeanPostProcessor #31967
Introduce processInjection() in CommonAnnotationBeanPostProcessor #31956
Make maximum length of SpEL expressions in an ApplicationContext configurable #31952
JdkClientHttpRequest may block indefinitely #31911
Allow Propagation.NOT\_SUPPORTED with @TransactionalEventListener #31907
Review HibernateJpaVendorAdapter to align dialect to use for recent Hibernate versions #31896
Improve method validation support for containers with constraints on container elements #31887
Method validation is not triggered when constraints are applied to the elements of a List #31870
Use standard String comparison in ExtendedBeanInfo.PropertyDescriptorComparator #31866
Detect Jetty 12 "max length exceeded" message for MaxUploadSizeExceededException #31850
Ensure that Observation is stopped and Scope is closed in doReceiveAndExecute() #31798
Support the use of @Resource in test classes in AOT mode #31733
Add support for configuring sslContext in StandardWebSocketClient #30680
Refine allocations for improved memory profile when creating a large amount of proxy instances #30499
Check ResponseStatusException reason as MessageSource code for ProblemDetail #30300
SpringValidatorAdapter fails in getRejectedValue if ValueExtractor used in property path to unwrap a container type #29043
Add CORS support for Private Network Access #28546
Introduce NoOpTaskScheduler for disabling @Scheduled tasks in test setups #28073
MvcUriComponentsBuilder should resolve property placeholders in request mapping paths #26795
Allow SockJsUrlInfo to be overridden in SockJsClient #25888
Extending abstract class does not expose parameter annotations #25788
DatabasePopulatorConfigUtils should only set a populator if matching scripts are defined #23405
@annotation pointcut is not matched with complex hierarchy and generics against classes compiled by Eclipse [SPR-17310] #21843
Allow registration of application event listeners in a functional way [SPR-16872] #21411
Allow CronTrigger to resume from specified timestamp [SPR-14909] #19475
🐞 Bug Fixes
Using a URI variable for port in WebClient causes an IllegalStateException #32003
[spring-tx] Unable to override prepareSynchronization of AbstractPlatformTransactionManager from v6.1.0 #32000
RestClientResponseException handles responseHeaders case-sensitive #31978
CronTrigger hard-codes default ZoneId instead of participating in scheduler-wide Clock setup #31948
HandlerMappingIntrospector is throwing PatternSyntaxException for wildcards in the request URL #31937
java.lang.NullPointerException with Scheduled tasks through DefaultScheduledTaskObservationConvention #31918
HibernateJpaVendorAdapter refers to org.hibernate.dialect.Oracle12cDialect that does not exist in recent Hibernate versions #31892
ClassNotFoundException: org.hibernate.dialect.MySQL57Dialect with Hibernate 6.4 #31889
Inconsistent inclusion of base URL in WebClient URI template attribute since Spring WebFlux 6.1.2 #31882
@Async does not support Unit? return type #31881
Web handlers don't support Kotlin extensions #31876
DefaultDataBuffer fails to transform its content to a string #31873
With XML configuration, setter selection can be random in case of overloaded setter methods (e.g. on SimpleClientHttpRequestFactory in 6.1) #31872
Complete frame callback when opcode is not PONG #31869
@Cacheable does not respect cache hit when empty Mono/Flux response is returned #31868
Unable to use sync cache with reactivestreams #31861
Spring Websocket - JettyWebsocketHandlerAdapter copyByteBuffer fills Buffer with zeros #31857
NullPointerException with @RequestMapping on Kotlin property accessors #31856
Non-deterministic native image JSON hints invalidate Gradle build cache #31852
DefaultServerRequestObservationConvention is silently used when multiple convention beans are defined #31864
Significant increase in memory consumption StringDecoder when splitting input by delimiters. #31848
Convert args to Kotlin value class in CoroutinesUtils #31846
ForwardedHeaderFilter should reject invalid requests #31842
NotReadablePropertyException due to mismatch between ConstraintViolation property path and BindingResult target in MethodValidationAdapter #31746
Built-in method validation validates @RequestBody parameter twice #31711
Double error response handling on suspended methods #31541
Spring AOP does not propagate arguments for dynamic prototype-scoped advice #28407
Only log status in ServletRequestHandledEvent #27595
MergedAnnotation swallows IllegalAccessException for attribute method #27182
AOP pointcut erroneously matching ProceedingJoinPoint.proceed when called from within another advised bean #26068
📔 Documentation
Document exception handling for HTTP Interface client with RestClient and RestTemplate #31991
Update ContentRequestMatchers#multipartData Javadoc #31988
Update Spring Properties section of reference manual #31987
Document Kotlin internal modifier impact on @Bean #31985
Add missing preposition in reference guide #31977
Adapt Jackson2ObjectMapperBuilder documentation to mention ParameterNamesModule registration #31959
Fix typo in kotlin.adoc #31958
Fix references to "application/*+xml" in Javadoc #31951
Update outdated elements in Kotlin reference documentation #31943
Update autowired-qualifiers.adoc to refer the -parameters Java compiler flag #31939
Fix Kotlin example for simpler SELECT variant using IN #31932
Fix usage of WebClientAdapter in reference documentation #31917
With virtual threads enabled, separate fixed-delay tasks cannot run concurrently #31900
Fix formatting in scheduling.adoc #31899
Specify use of regexp Path Pattern in javadoc #31886
Improve the documentation and discoverability of CoWebFilter #31877
Add Javadoc for MockHttpServletResponse getContentLength method #31833
Revisit JdbcClient/JdbcTemplate javadoc for operations that take a KeyHolder #31486
Document that CGLIB cannot proxy package private methods declared in a superclass is in a different package #28973
Doc: ConfigurationClassParser's property source composition requires distinct (Resource)PropertySources names #28886
Provide guidelines in AspectJ documentation to avoid dumps #27650
Document autowiring of ServletRequest and other scoped proxy beans provided by WebApplicationContext #26201
Clarify assisted constructor injection through getBean call with provided arguments #24955
Document behaviour of @Transactional in reactive environments with non-reactive signatures #23277
Thread-safety and visibility issues not documented [SPR-4307] #8986
🔨 Dependency Upgrades
Early support for Java 23 #31929
Upgrade to Kotlin 1.9.22 #31971
Upgrade to Micrometer 1.12.2 #31996
Upgrade to Reactor 2023.0.2 #31995



v6.1.2
⭐ New Features
Optimize ContentCachingRequestWrapper allocation for known request size #31834
Inherit parent context in coRouter DSL #31831
Declare isStatic and releaseTarget as default methods on TargetSource #31820
Delegation support for JDBC 4.3 ConnectionBuilder and ShardingKeyBuilder #31795
Support for a read-only DataSource in LazyConnectionDataSourceProxy #31785
Add MySQLIdentityColumnMaxValueIncrementer #31784
Introduce overloaded MockPart constructor that accepts the Content-Type #31757
Introduce toString(Charset) in FastByteArrayOutputStream #31737
Avoid byte array copy in getContentAsString #31731
Improve "active" metrics handling in WebClient observations #31702
Make ResourceArrayPropertyEditor supports comma delimited location patterns #31700
Consistently log exceptions from TestExecutionListeners at WARN level #31688
Document need for -parameters flag in exception messages #31675
Improve @RegisterReflectionForBinding for enums #31570
Support direct shard database operation routing in Spring JDBC #31506
Log test aborted/skipped exceptions at INFO level in the TestContext framework #31479
Avoid double proxying for @Resource @Lazy fallback autowiring #31447
Add support for tuning the code generation for bean property values #31427
Avoid race condition in ConcurrentReferenceHashMap #31008
Allow functional bean registration to set bean order (equivalent to @Order) #30849
Allow AOT generated classes to be excluded from code analyzer tools #30824
Error page does not utilize forwarded prefix #30828
Fix SimpleJdbcCall named parameter binding for Sybase ASE #30231
DefaultWebClient ignores baseUrl when setting URI_TEMPLATE_ATTRIBUTE #30027
Avoid eager checkDefaultConnectionProperties call in LazyConnectionDataSourceProxy #29931
Allow TransactionAwareDataSourceProxy to eagerly fetch the connection #29423
Extract common value generator out of BeanDefinitionPropertyValueCodeGenerator #28999
PostgresCallMetaDataProvider should detect current schema as indicated by the JDBC Connection #28723
Implement setMaxTextMessageSize and setMaxBinaryMessageSize in JettyWebSocketSession #28325
Optimize cache used in AutowiredAnnotationBeanPostProcessor #28293
@Async aspect should clear cached executors when different BeanFactory set #28201
Component scanning should be able to ignore encrypted classes with invalid class version #27691
Property to control URL decoding in ServletCookieValueMethodArgumentResolver #26989
Support Predicate- based mappedHandler config in AbstractHandlerExceptionResolver #26772
SimpleJdbcCall with namedBinding=true for MS SQL Server #26072
Improve default setNull performance on PostgreSQL and MS SQL Server (e.g. for NamedParameterJdbcTemplate batch updates) #25679
🐞 Bug Fixes
<replaced-method /> unnecessarily requires explicit arg-type since 6.0 #31826
Avoid nested constructor data binding if there are no request parameters #31821
Custom Init or Destroy method from an interface cannot be invoked in a native image #31819
Avoid potential refresh deadlock with AbstractApplicationContext#registerShutdownHook #31811
Classes proxied by CGLIB produces NPE with coroutine async job on Springboot 3.2.0 #31809
Fix Comparators.nullsLow and Comporators.nullsHigh behavior #31808
MergedAnnotations finds duplicate annotations on method in multi-level interface hierarchy #31803
Pickup coroutineContext saved by CoWebFilter in coRouter #31793
Support for multiple CoWebFilters that change CoroutineContext #31792
TestCompiler should not discover annotation processors on the classpath by default #31791
@Cacheable key generator is called after invoking the cached method in case of a miss #31789
Encountered NotSerializableException for HttpComponentsHeadersAdapter when serializing HttpClientErrorException #31787
Exclude Part from nested constructor binding in WebFlux #31778
Fix condition for "Too many elements" in MimeTypeUtils.sortBySpecificity() #31769
AnnotatedTypeMetadata's getMergedRepeatableAnnotationAttributes() method ignores classValuesAsString #31768
SimpleAsyncTaskScheduler: task with fixed delay stops working after unhandled exception #31749
Spring unable to decode aggregated JSON content #31747
cannot resolve ServerRequest::pathVariable in nested RequestPredicate again #31732
@NotNull on JPA entity not respected in schema generation #31726
@Cacheable throws NullPointerException when encountering cached null value for empty Mono #31722
RestClient ResponseSpec.body() throws an exception instead of returning null if no response body is available #31719
UrlResource getFilename() suddenly returns null for certain paths #31718
DisconnectedClientHelper is missing "AbortedException" #31717
Constructor binding fails for Duration argument if request parameter is not present #31709
TraceId is missing in WebFlux controller handlers #31706
Wrong observation status tag when a Not Found in a webflux application #31703
Correct conversion from Resource[] with length 1 to Collection #31699
@ComponentScan added directly and via a meta-annotation leads to multiple scanning #31704
Unable to use kotlin value classes as function arguments to functions mapping web endpoints #31698
@DisabledInAotMode does not work in native image #31705
GenericTypeResolver does not resolve nested generics - causes issues with Jackson & Spring MVC #31690
DefaultManagedTaskScheduler created manually now throws a NPE if the scheduled executor is not configured #31751
Include Hibernate's Query.scroll() in SharedEntityManagerCreator's queryTerminatingMethods set #31682
TypeDescriptor does not check generics in equals method (for ConversionService caching) #31672
DataBinder fails with "No primary or single unique constructor found for interface MultipartFile" #31669
SpEL expression on a reloadable type can no longer be resolved #31668
Programmatic registration of RequestMappingInfo leads to "IllegalArgumentException: Expected lookup path" #31662
Current Observation.Context missing from WebClient request #31609
Multipart messages with empty parts are not correctly parsed in WebFlux #30953
Always fall back to original method if annotation pointcut used #30534
PathEditor cannot handle absolute Windows paths with forward slashes #29881
@Resource dependency injection fails with AOT/native #29614
Reactor Netty can only get the first cookie value when multiple cookies with the same name exist #28490
Slow SpEL performance due to method sorting in ReflectiveMethodResolver #28377
Cache-busting does not work when lazy-initialization is enabled #25488
Fail to register MBean with bean name containing invalid character #23608
Use of DatabaseMetadata#getProcedures (and functions) should take search string escape into account #22725
📔 Documentation
Fix link text in WebFlux @HttpExchange section of reference docs #31796
Improve documentation for custom exception requirements for RestClient #31783
Java-based Container Configuration section contains duplicated Section Summary #31777
SpEL Language Reference section contains duplicated Section Summary #31776
Incorrect #this and #root variable examples in SpEL documentation #31770
Document explicit @ModelAttribute is required for reflection hints inference #31765
Fix Javadoc for MockRestServiceServer.bindTo(RestClient.Builder) #31741
Document -Dspring.context.exit=onRefresh for Project CRaC testing purpose #31724
Link to spring.factories used in the TestContext framework in the reference manual #31723
Clarify that DI is a type of IoC #31679
Polish GenericTypeResolver Javadoc #31663
RestClient documentation improvements #31659
Add Javadoc to MvcResult getResponse().getErrorMessage() #31386
Review Default Profile section in the reference documentation #30319
Documentation needs to be updated with instructions for STOMP Client #28409
Document LazyConnectionDataSourceProxy setup for routing datasource to act on transaction definition read-only flag #21415
Document LazyConnectionDataSourceProxy for IsolationLevelDataSourceRouter usage with DataSourceTransactionManager #19688
🔨 Dependency Upgrades
Upgrade to Kotlin 1.9.21 #31667
Upgrade to Micrometer 1.12.1 #31813
Upgrade to Reactor 2023.0.1 #31814



v6.1.1
⭐ New Features
Skip buffer allocation in StreamUtils.copy(String) #31621
Caching and Event Listening support do not reuse internal delegates for their evaluation contexts #31617
Java 17: resource.isReadable() with concurrency leaks large amounts of non-heap memory #30955
🐞 Bug Fixes
Spring MVC: Unexpected bytes added to the HTTP response for kotlin.Unit return type in controller methods #31648
Spring Data Redis Cache implementation is not compatible with Cache.retrieve(key) semantics #31637
GeneratedFiles#addSourceFile should not allow to add a source in the default package #31628
<jee:local-slsb> no longer works with a business-interface attribute #31627
Non-blocking @Cacheable method does not support condition with #result #31626
PathResourceResolver.getResource() does not log warning if Resource#getURL() throws exception #31623
Jackson encoder releases resources in wrong order #30493
WebSocketMessageBrokerStats has null stats for stompSubProtocolHandler since 5.3.2 #26536
📔 Documentation
Fix links related to Spring WebFlux #31632
Extract recurring asciidoc links to attributes #31619
Improve STOMP WebSocket documentation for input message buffer size #31616
Document support for AppCDS #31497


v6.1.0
⭐ New Features
When using Oracle, JdbcClient.update(KeyHolder) does not work without explicit key column names #31607
Introduce way to convert ClientHttpResponse to desired type #31597
Property-driven onRefresh exit for AppCDS purpose #31595
No Micrometer traceId in JMS listener container errorHandler #31559
Register Hibernate @EmbeddableInstantiators registered on JPA embeddables for reflection #31534
Improve method validation support for errors on elements within a container #31530
Support pattern matching for method names in ControlFlowPointcut #31435
Review reachability metadata contributions after GraalVM changes #31213
handleEmptyBody of RequestBodyAdvice should apply also when content-type is not set #30522
🐞 Bug Fixes
Regression with @EnableJpaAuditing using Spring Boot 3.2-RC2 in native image #31575
Retrieving the response body as a List of POJOs fails with RestClient but passes with WebTestClient #31574
ExecutorLifecycleDelegate should call ExecutorService.isTerminated() in ?.isRunning() #31549
RestTemplate POST to endpoint using Digest Auth no longer works in 6.1 #31516
Code generation for constructor arguments must cast null indexed argument value #31508
\n in form model when using Jetty 12 client and multipart/form-data #31361
Add status handler to recognize unknown status codes outside of 4xx/5? #31202
📔 Documentation
Document how to log @Sql scripts and statements #31589
Link to KDoc API documentation from Javadoc overview #31587
Fix link in Javadoc of ConfigurableMockMvcBuilder #31542
Add note about @[Enabled|Disabled]InNativeImage in reference manual #31438
Document @DisabledInAotMode in the reference manual #31437
Document @Sql class-level execution phase support in the reference manual #31377
Document that Micrometer's "error" tag should be preferred vs. legacy "exception" tag #31514
🔨 Dependency Upgrades
Upgrade to Context Propagation 1.1.0 #31599
Upgrade to Kotlin 1.9.20 #31539
Upgrade to Micrometer 1.12.0 #31556
Upgrade to Reactor 2023.0.0 #31557


v6.1.0-RC2 Pre-release
⭐ New Features
Support ContextLoader config in @SpringJUnitConfig and @SpringJUnitWebConfig #31498
TypeDescriptor and ResolvableType cache in GenericTypeAwarePropertyDescriptor #31490
Consistent Class and array matching in ResolvableType.isAssignableFrom #31487
BeanDefinitionRegistryPostProcessor should declare empty default postProcessBeanFactory method #31476
Remove support for Protobuf 2.x and protobuf-java-format #31465
Refine CRaC restoration logs #31462
Allow repeatable writes in StreamingHttpOutputMessage #31449
Add support for merging two BeanRegistrationAotContribution instances #31446
Kotlin BeanFactory.getBean extension fails with nested generic in context #31439
Log warning and skip resource hint registration for classpath location patterns #31429
Revisit AOT support for generic constructor argument values #31420
Add UriBuilderFactoryArgumentResolver. #31413
Add Coroutines support for @Cacheable #31412
PartEvent API should support limiting the number of file parts #31343
Revise support for quoted identifiers in SimpleJdbcInsert #31208
When configuration class parsing fails, provide more information about the class that triggered the failure #31146
WebClientResponseException defaults to ISO-8859-1 #31072
Introduce @DisabledInAotMode in the TestContext framework #30834
Support TypedStringValue during AOT processing #29074
Support ETag generation on ResourceHttpRequestHandler #29031
Better error reporting for @Bean creating when bean instance has been replaced with an incompatible type #28897
Add Coroutines support for @EventListener #28343
Support "*" catch-all mappings for MockMvc Filter registrations #28041
Guard against ConcurrentModificationException when the response processes commitActions #27587
Improve ControlFlowPointcut extensibility #27187
Uploading a too-large file should be a 4xx client error, not a 500 Internal Server Error #27170
Add special handling of disconnected client errors in ExceptionHandlerExceptionResolver #26181
🐞 Bug Fixes
ConstructorResolver rejects a candidate if the parameter value is null #31495
3.2.0-RC1: No primary or single unique constructor found for interface java.util.Set #31488
Can't link to Spring Framework 6.1.0 release candidate documentation #31480
In MockMvc tests all filters end up with empty-string filterName, breaking OncePerRequestFilter #31474
<mvc:annotation-driven> should not instantiate bean property values #31472
Graal VM native image: Substitution target for o.s.o.j.v.Target_BytecodeProvider is not loaded #31452
JdkClientHttpRequest does not support Content-Length 0 #31451
Fix typo in ClassUtils.forName() #31428
AOT processing fails to determine proper target for a FactoryBean that produces an array #31426
BeanDefinitionPropertyValueCodeGenerator#orderForConsistency expects values to be Comparable #31419
Conversion not applied to @RequestParam default value if used for "null after conversion" case #31336
HandlerMethodValidationException.Visitor incorrectly triggers other() method instead of requestParam() for @RequestParam validation errors #31329
AbstractApplicationContext.refresh() leaves bean resources uncleaned when SmartInitializationSingleton throws a non BeansException #28878
📔 Documentation
Document pattern matching support in NameMatchMethodPointcut #31500
Fix small typo in javadoc #31455
Expand explanation for the "lite" bean approach #29957
🔨 Dependency Upgrades
Upgrade to ASM 9.6 #31431
Upgrade to Kotlin 1.9.20-RC2 #31494



v6.1.0-RC1 Pre-release
Enforce REQUIRES_NEW for correct transaction configuration on transactional event listeners #31414
TestCompiler should allow to configure the Locale that renders compiler messages #31408
Consistent Object result declarations for JdbcClient's ResultQuerySpec #31403
Move ReactorResourceFactory  to org.springframework.http.client package #31399
Prevent message resolution after context close #31397
Handle STOMP messages to user destination in order #31395
AOT bean registrations miss reflection hints on property fields #31390
Support Jackson's DatatypeFeature in Jackson2ObjectMapperBuilder #31380
Allow Filters to be initialized when they're added to MockMvc #31362
Use schema-based config in sql-error-codes.xml #31354
Optimize uses of onErrorResume() #31352
AOT bean registrations miss reflection hints on interfaces #31350
SimpleAsyncTaskScheduler should run fixed-delay tasks on scheduler thread #31334
Allow custom observation convention for RestClient #31325
MockMvcHttpClientConnector support for RequestPostProcessor hook #31298
Expose shouldHandle(ApplicationEvent) in ApplicationListenerMethodAdapter #31295
Make ReactorNettyClientRequestFactory lifecycle-aware #31281
Add a constructor with externally managed Reactor Netty resources to ReactorNettyClientRequestFactory #31280
Consistent CannotAcquireLockException translation for PostgreSQL serialization failure behind JPA #31274
Simplify ServerRequestExtensions.queryParamOrNull() #31264
Reduce nested class lookups in ClassUtils #31258
Print JVM restoration time in DefaultLifecycleProcessor #31252
ValueLoaderEntryProcessor should not be created for every call to JCacheCache#get #31250
Introduce initialize() method in AbstractRoutingDataSource and AbstractRoutingConnectionFactory #31248
Add MappingJackson2MessageConverter constructors that accept an ObjectMapper #31234
Eliminate synchronized block to avoid thread pinning in SingletonSupplier #31227
Add OuputStream BodyInserter #31184
SseEmitter should format a multiline String #30965
Suppress logging from HandlerMapping when used for Spring Security's mvcRequestMatcher #30349
Lenient handling of unencoded URIs in ForwardedHeaderTransformer #30137
Support DispatcherType.INCLUDE in DefaultServletHttpRequestHandler #30113
Introduce caching for functional routing #29985
Log CglibAopProxy errors as WARN instead of INFO #29773
Add CharBufferDecoder #29741
Provide the HttpRequest on the ClientResponse interface #28397
Batch update return generated keys #28132
Allow filters to be registered with MockMvc for particular dispatcher types #27717
Introduce class-level execution phases for @Sql #27285
Add default methods to MailSender and JavaMailSender as appropriate #23651
Remove all ApplicationListenerMethodAdapters on context close [SPR-17456] #21988
Handle STOMP messages from client session in order #21798
Call Lifecycle.stop() for already started beans on failed refresh [SPR-15468] #20028
🐞 Bug Fixes
Fix regression in JmsAccessor#setSessionAcknowledgeMode #31328
JdbcClient does not update KeyHolder when using positional parameters #31297
AOT bean registrations miss reflection hints on public methods #31293
DefaultFetchSpec should not buffer results in temporary list buffers #31282
Missing reflection hint on Publisher for bean destroy methods support #31278
Missing reflection hint on Eclipse FileLocator #31271
Missing resource hint for spring.properties #31270
Missing reflection hints on Kotlin classes for KotlinDetector #31269
Missing reflection hint on MonetaryAmount in conversion service #31266
Missing reflection hints for jakarta.inject classes #31259
ResponseBodyEmitter ignores calls to complete but remains open after JSON write error while sending #30687
The task in AsyncTaskExecutor throws an exception before execution, and ControllerAdvice will be called twice. #30232
Suppress deprecation warning for AOT-generated code that refers to a deprecated member #29597
Avoid duplicate ApplicationListener firing (proxy vs. target) #28322
JCacheCache#putIfAbsent is not atomic #21591
📔 Documentation
Add Search in all Spring Docs #31290
Add missing period in RestClient documentation #31237
Improve wording in Javadoc for @Autowired #31235
Clarify ClientHttpRequestInterceptor#intercept() must close response if it throws exception after receiving the response #29751
Create migration guide from RestTemplate to RestClient #23269
🔨 Dependency Upgrades
Upgrade to Micrometer 1.12.0-RC1 #31398
Upgrade to Reactor 2023.0.0-RC1 #31406


v6.1.0-M5 Pre-release
⭐ New Features
JdbcClient should reject a List as the parameter of the IN clause of an SQL statement when using positional parameters #31215
Support one-time @Scheduled tasks #31211
Deprecate JOptCommandLinePropertySource #31207
Use MergedAnnotations API directly in AnnotationBeanNameGenerator where possible #31203
Introduce MethodInvoker API for TestExecutionListeners #31199
Use Method#isDefault to find default methods in interfaces #31197
Refine logic to release WebSocket ByteBuffer via Callback with Jetty 12 #31182
Make ReactorClientHttpConnector lifecycle-aware #31180
Make ReactorResourceFactory lifecycle-aware #31178
Consolidate HTTP Interface client support for MultipartFile and @RequestPart #31164
Register reflection hints for @TestPropertySource factory #31160
Introduce TaskDecorator variant for Context Propagation #31130
Introduce reverse methods in AOP MethodMatchers and ClassFilters #26725
Replace Reactive awaitSingle() usages by the Mono variant #31127
Clarify and log that return value of HandlerMethod is ignored if reason of @ResponseStatus present #31121
Instrument RestClient for Observability #31114
Attempt to reset Servlet response before calling ExceptionHandlers #31104
Raise log level to warn when configuration class enhancement cannot apply due to circular reference #31102
Refine "checkpoint on refresh" error handling #31096
Deprecate convention-based @Component stereotype names in favor of @AliasFor #31093
Reinstate support for legacy JSR-250 @javax.annotation.ManagedBean and JSR-330 @javax.inject.Named annotations #31090
Look up @Component stereotype names using @AliasFor semantics #31089
Add @Nullable to value in param() methods in JdbcClient #31084
Ensure direct @PropertySource annotations override meta-annotations #31074
Introduce var-args params() method in JdbcClient's StatementSpec #31070
Introduce overloaded methods in JdbcTestUtils that accept JdbcClient instead of JdbcOperations #31066
Revise JdbcTestUtils method signatures to accept JdbcOperations instead of JdbcTemplate #31065
Adapt native support for Hibernate 6.3.0 bytecode provider changes #31051
Move blocking writeResource operation to boundedElastic #30928
Move blocking view resolution to boundedElastic #30903
Support parameter injection in @BeforeTransaction/@AfterTransaction methods #30736
Introduce getContentAsString() in ContentCachingRequestWrapper #30709
Support configuring Jetty WebSocket server parameters #30344
Optimize InlineMap and InlineList in SpEL #30251
Update Pointcuts to match getter methods by also excluding void return type #30068
Improve attribute handling in RequestPredicates #30028
Add support for JSR-330 and Jakarta @Inject for autowiring test constructors #29851
Optimize initial size in ContentCachingRequestWrapper when contentCacheLimit set #29775
Optimize Hibernate native footprint by making ByteBuddy unreachable #29549
Execute preflight checks before interceptors #29509
Use Arrays.hashCode(...) in ObjectUtils #29051
Improve toString representation of complex parameters in SimpleKey #27670
Propagate CoroutineContext in CoWebFilter #27522
Add ParameterNamesModule to "well known" jackson modules #27511
Optimize for single TransactionSynchronization #27335
Improve performance of CompositePropertySource#getPropertyNames #27236
Avoid calling executeBatch() with 0 batch size #27154
Add maxAttempts to ExponentialBackOff #27071
Spring Webflux: CoRouterFunctionDsl should expose the used CoroutineContext #27010
spring-webflux filters don't pass CoroutineContext #26977
Support declarative ContextCustomizer registration in the TestContext framework #26148
Improve SpEL inline collection caching #25921
Use Comparable instead of dedicated implementations #25478
Support method injection when @Autowired(require=false) is used on mixed nullability args #24773
Add factory method to create a NamedThreadLocal with an initial value #24705
CglibAopProxy: Skip non-overridden methods of Object.class as those which for sure have no advice #24649
Add conversion support for Pattern/Regex #24311
Support quoted identifiers in SimpleJdbcInsert #24013
Add composite for TaskDecorator #23692
Spring AOP is not compatible with Kotlin Coroutines #22462
Added Basic Authorization for UrlResource #1822
Allow component name to be specified in @ControllerAdvice [SPR-16566] #21108
MethodValidationInterceptor support for Mono and Flux method parameters #20781
Support validating collection of objects on web controller method #16917
🐞 Bug Fixes
AOT check on a bean definition with an instance supplier is not consistent #31200
Pass correct SqlParameterSource to NamedParameterJdbcTemplate in DefaultJdbcClient #31195
Various methods in SimpleJdbcInsert prevent method chaining #31177
Client observations URI template missing when using RestTemplateAdapter #31144
Validator resolution can no longer be lazy #31137
Make the JdbcClient method update(KeyHolder generatedKeyHolder) work with positional parameters #31122
AOT processing fails for @ConfigurationProperties class without default constructor #31117
Built-in method validation does not work with Boot auto-configuration #31082
📔 Documentation
Stop referring to JDO and outdated JDBC versions in documentation #31183
WebFlux blocking configuration documentation fix #31150
typo in "such as" #31145
Fix typo in reference documentation #31135
Document RestClient in the reference manual #30826
Add example of buffering with WebClient to the reference documentation #28758
🔨 Dependency Upgrades
Upgrade to Context Propagation 1.1.0-M4 #31220
Upgrade to CRaC 1.4.0 #31190
Upgrade to Jetty 12 #30698
Upgrade to Kotlin 1.9.10 #31106
Upgrade to Kotlin Coroutines 1.7.3 #31108
Upgrade to Kotlin Serialization 1.6.0 #31107
Upgrade to Micrometer 1.12.0-M3 #31218
Upgrade to Reactor 2023.0.0-M3 #31219


v6.1.0-M4 Pre-release
⭐ New Features
Support resource patterns in @TestPropertySource locations #31055
Support text blocks for inlined properties in @TestPropertySource #31053
@Bean method should be always allowed to override scanned class matching its return type #31052
Support finding repeatable annotations in AnnotatedTypeMetadata #31041
Fail fast if a @Bean method has a void return type #31007
Use Class#arrayType() where feasible #31002
ReactiveAdapterRegistry is not compatible with Mutiny 2 #31000
Avoid thread pinning in SseEmitter write operations #30996
Add support for property file encoding in @TestPropertySource #30982
Support custom properties file formats in @TestPropertySource #30981
Support @HttpExchange for server side handling #30980
Fail on error by default during test AOT processing #30977
Deprecate applyBeanPostProcessorsBeforeInitialization and applyBeanPostProcessorsAfterInitialization in the AutowireCapableBeanFactory interface #30974
Provide methods for obtaining include/exclude path patterns in MappedInterceptor #30971
Introduce SimpleAsyncTaskScheduler with virtual threads support (as an alternative to ThreadPoolTaskScheduler) #30956
Support declarative mode for data binding #30948
Support customizing the bind parameter name for constructor binding #30947
Support @RSocketExchange for responding #30936
Introduce JdbcClient with unified parameter capabilities (as a JDBC variant of DatabaseClient) #30931
Allow preferred constructor to be defined at the BeanDefinition level #30917
Remove obsolete native image reflection hint registration for TransactionDefinition constants #30854
Deprecate Constants utility and stop using it internally #30851
Use Long.parseLong(CharSequence,int,int,int) to avoid intermediate String creation #30710
Support Kotlin value class properties in SpEL #30468
Add observability support for JMS #30335
@TransactionalEventListener does not work with SimpleApplicationEventMulticaster.setTaskExecutor #30244
Direct autowiring of existing collection subtype bean if ApplicationContext contains beans of type T #30022
Clarify FactoryBean.OBJECT\_TYPE\_ATTRIBUTE supported types #29799
Add support for Kotlin inline/value classes in BeanUtils #28638
Publish event for @TransactionalEventListener with Spring WebFlux #27515
Introduce TransactionExecutionListener callback API #27479
R2DBC - DatabaseClient - Add bind method to accept an object #27282
Introduce RowMapper with automatic binding to fields #26594
Add support for Class-based mapping in DatabaseClient #26021
@Component not picked up by @ComponentScan if it has the same simple name as the main class #25952
Support custom TimeUnits in StopWatch #25803
@Lookup doesn't work in case of AbstractBeanFactory's cacheBeanMetadata=false #25749
Injection of List is inconsistent with Resource[] #24845
Provide guidance and better diagnostics when dependency injection makes a bean ineligible for complete post-processing #24092
Availability of a bean definition's resolved factory method depends upon a side-effect of getBeanNamesForType which is lost when metadata caching is disabled #23795
Validate afterThrowing method signature in ThrowsAdviceInterceptor #1896
Support resource patterns in @PropertySource locations [SPR-16785] #21325
Increase reusability of Validator [SPR-15314] #19877
Support additional file formats in ReloadableResourceBundleMessageSource #18990
Reactive types support for @Cacheable methods [SPR-14235] #17920
Support caching annotations for CompletableFuture return values [SPR-12967] #17559
🐞 Bug Fixes
Move ServerWebExchange Kotlin extensions to the right package #31046
Spring does not find all @ComponentScan or @PropertySource annotations #30941
404 on static resource does not return ProblemDetail response #30930
📔 Documentation
Document @AliasFor support in AnnotatedTypeMetadata.getAnnotationAttributes() #31042
Update documentation for HTTP Interface return values #30959
Update documentation for data binding improvements #30952
Use of ApplicationEventPublisher in a reactive call stack [SPR-16481] #21025
🔨 Dependency Upgrades
Upgrade to JUnit 5.10 #30970
Upgrade to Micrometer 1.12.0-M2 #30997
Upgrade to Reactor 2023.0.0-M2 #31014


v6.1.0-M3 Pre-release
⭐ New Features
Update warning log messages for SimpleAsyncTaskManager to take into account virtual thread mode #30902
Extract forwarded header handling out of UriComponentsBuilder #30886
Reduce logging for ResourceNotFoundException #30884
Revisit public API for MBeanExporter #30874
Early support for JDK 22 #30845
DataAccessUtils result accessors with Optional return value #27735
Add convert(Object, TypeDescriptor) method to ConversionService #25394
Revisit DataAccessException translation API #24634
🐞 Bug Fixes
@CachePut evaluates key before cache condition #22769
Topic messages are not sent when using transacted JmsTemplate in 'TransactionSynchronization.afterCommit' phase [SPR-16270] #20817
📔 Documentation
Update javadoc to take virtual threads into account #30905



v6.1.0-M2 Pre-release
⭐ New Features
Refine the log message printed after restoration with CRaC #30876
Add HttpExchangeAdapter for RestClient #30869
Use latest version of sockjs-client in AbstractSockJsService #30848
ClientHttpRequestFactory based on Reactor Netty HttpClient #30835
Pause/resume capability for ThreadPoolTaskExecutor and ThreadPoolTaskScheduler #30831
Rearrange HttpHeader adapters #30823
Support use of MockRestServiceServer with RestClient #30821
Allow built ServerResponse to throw exception #30818
Method validation error handling by controller method parameter type #30813
Add RestClient Kotlin extensions #30807
Detect interface parameter annotations also from spring-messaging HandlerMethod #30801
Allows JdkClientHttpRequest.DISALLOWED_HEADERS to be customized. #30788
Change restore logging to info level #30775
Add MultipartFileArgumentResolver for HTTP interface client #30728
Align KeyValues of Scheduled-annotated observability with OpenTelemetry conventions #30721
Detect invalid transaction configuration for transactional event listeners #30679
Blocking execution for WebFlux controller methods #30678
Add a CoExchangeFilterFunction for WebClient similar to CoWebFilter #30650
Built-in Web Support for Method Bean Validation #30645
Spring MVC and WebFlux handling of method validation errors #30644
HttpClient based ClientHttpRequestFactory #30478
HTTP interface client infrastructure and adapter for RestTemplate #30117
Instrument Scheduled-annotated methods for observability #29883
Add AOT support for Kotlin constructors with optional parameters #29820
Introduce RestClient #29552
Space in integer request parameter neither triggers the default value nor generates a 400 #29550
Improve 404 error handling in Spring MVC #29491
Issue with equals(?)/hashCode() for ResolvableType.forRawClass(?) #28608
Introduce ModuleResource for resources loaded from a given Module #28507
ArrayToCollectionConverter should default to List if target type is Collection #28048
ResolvableType should allow to determine matching type argument for generic return type #27748
Parallel graceful shutdown for ThreadPoolTaskExecutor and ThreadPoolTaskScheduler #27090
Support target instantiation and binding via constructor in DataBinder #26721
Support for MultiValueMap elements in web data binding #26297
Add binding support to functional servlet and reactive stack #25943
@Scheduled methods in beans created by FactoryBeans are not cancelled #24629
ExecutorConfigurationSupport API refinement to control internal executor shutdown #24497
DataBinder using constructor parameter should use path variables #22748
Add JDBC SqlValue classes for arrays #1850
Support Kotlin parameter default values in HTTP handler methods #21139
Multiple TaskSchedulers to be supported with @Scheduled [SPR-16271] #20818
Let the DataBinder construct nested objects #20806
Add support to any Iterable types on PropertyAccessor #907
🐞 Bug Fixes
ScheduledAnnotationBeanPostProcessor fails without Reactive Streams on the classpath #30707
@SessionAttributes handler invoked too early if controller method execution is deferred #30337
Fix AbstractMessageConverter not delegating to ContentTypeResolver when message header is null #29768
JSON deserialization for Kotlin collections on inherited classes #24033
📔 Documentation
Update documentation on customizing validation errors with MessageSource #30653
Update documentation for method validation improvements in spring-context, Spring MVC, and WebFlux #30643
🔨 Dependency Upgrades
Upgrade to Context Propagation 1.1.0-M3 #30882
Upgrade to Kotlin 1.9.0 #30719
Upgrade to Kotlin Coroutines 1.7.2 #30833
Upgrade to Micrometer 1.12.0-M1 #30872
Upgrade to Project CRaC 1.3.0 #30812
Upgrade to Reactor 2023.0.0-M1 #30856



v6.1.0-M1 Pre-release
⭐ New Features
Consistent simple value type check (including UUID treatment for data binding) #30664
Release shared JMS Connection when message listener container is stopped #30612
Property-driven onRefresh checkpoint during application context bootstrap #30606
Support letters other than A-Z in identifiers in SpEL expressions #30580
Remove System.out calls in PreComputeFieldFeature #30571
Have the ErrorResponse.Builder take in a custom ProblemDetail instance #30568
Allow setting the ProblemDetail.type via a MessageSource #30566
ClientHttpRequestFactory based on Jetty HttpClient #30564
Remove buffering in ClientHttpRequestFactory implementations #30557
Support JAXBElement in Jaxb2XmlEncoder #30552
Disable SpEL selector support in WebSocket messaging by default #30550
Enforce JPA bootstrap failure for incomplete Hibernate Validator setup #30549
Support parsing long dates in InstantFormatter #30546
Port BeanPropertyRowMapper and DataClassRowMapper for r2dbc #30530
Add non-null precondition checks in DefaultEntityResponseBuilder #30433
Deprecate spring-context-indexer #30431
Update RuntimeHintsAgentPlugin to use the native image code path #30422
HTTP interface client should not have blockingTimeout set and leave it to the underlying client by default #30403
Improve toString() for Profiles.of() implementation #30374
Add ReloadableResourceBundleMessageSource Resource selection hook #30369
Optimize DefaultLifecycleProcessor::stopBeans #30361
Deprecate AutowireCapableBeanFactory.createBean(Class, int, boolean) for consistent usage of createBean(Class) #30345
Support setCharacterEncoding(null) in MockHttpServletResponse #30341
Add support for converting a String to an Instant #30312
Refine RouterFunctionMapping ordering consistency #30278
CRaC Resource adapter for bean lifecycle in application context #30242
Configuration options for virtual threads #30241
Support for SequencedCollection/Set/Map #30239
MethodArgumentNotValidException::errorsToStringList should include only the resolved message when MessageSource is used #30198
Support @XmlSeeAlso in Jaxb2XmlDecoder #30167
Add SpEL support for registered MethodHandles #30045
Add test support to record async events, with JUnit Jupiter caveat #30020
Returning a CompletableFuture.failure() from an async, transactional method should mark the transaction as roll back #30018
Support @Scheduled on Reactive methods and Kotlin suspending functions #29924
Compatibility with JVM checkpoint restore (OpenJDK's Project CRaC) #29921
Validator factory methods with BiConsumer #29890
Spring MVC and WebFlux method validation support that also adapts ConstraintViolations #29825
Remove LocalVariableTableParameterNameDiscoverer #29559
Avoid use of java.net.URL constructors #29481
Creating relative resource for URL resource should create relative Resource even if relative path has URL in it #28522
ModelAttributeMethodArgumentResolver does not support custom field binding for immutable objects #28284
ConcurrentTaskScheduler and ConcurrentTaskExecutor can create an executor with no way to shut it down #27914
R2DBC ConnectionFactory bean .close() method should be called/subscribed when available #26991
org.springframework.web.servlet.mvc.method.annotation.ReactiveTypeHandler does not handle vendor-specific application/x-ndjson media types #26817
Improve the experience of handling validation errors in controller methods #26219
Compatibility with virtual threads (OpenJDK's Project Loom) #23443
Avoid repeated attempts to load a failing ApplicationContext in the TestContext framework [SPR-9548] #14182
🐞 Bug Fixes
Retain profiles used when running AOT #30421
Automatic context propagation stops working after an error occurs #30013
📔 Documentation
Introduce JVM checkpoint/restore support documentation #30647
Fix link in Javadoc of PassThroughFilterChain #30365
Clarify behavior of the Elvis SpEL operator in documentation #30352
Fix link to releases feed #30340
🔨 Dependency Upgrades
Upgrade to Jackson 2.15 #30665
Upgrade to Kotlin 1.8 #29754
Upgrade to Kotlin Coroutines 1.7 #30514
Upgrade to Kotlin Serialization 1.5 #30515
Upgrade to SnakeYAML 2.0 #30048


