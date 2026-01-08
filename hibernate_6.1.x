Changes in 6.1.7.Final (February 07, 2023)
------------------------------------------------------------------------------------------------------------------------

https://hibernate.atlassian.net/projects/HHH/versions/32126

** Bug
    * [HHH-16120] - Error advancing (next) ResultSet position with Hibernate v6
    * [HHH-16117] - Querying entity with collection in Embeddable causes 'A collection with cascade="all-delete-orphan" was no longer referenced by the owning entity instance'
    * [HHH-16075] - NPE Caused by "Cannot invoke "org.hibernate.engine.spi.EntityKey.getIdentifier()" because "this.entityKey" is null" @ AbstractEntityInitializer:445
    * [HHH-16070] - Exception when find by association id that is a generic @EmbeddedId with @MappedSuperclass
    * [HHH-16062] - jakarta.persistence.query.timeout not working on Hibernate 6.1.6 for Criteria Queries
    * [HHH-16061] - SqmDynamicInstantiation warns about dynamic Map instantiation when using an entity
    * [HHH-16049] - Setting a property to its current value with bytecode enhancement enabled results in unnecessary SQL Update in some (many) cases
    * [HHH-16043] - Hibernate 6.x breaks collection batch fetching
    * [HHH-16040] - AssertionError for @JoinColumn with char[] property referencing a String property
    * [HHH-16023] - ArrayIndexOutOfBoundsException: Index 1 out of bounds for length 1 for NamedNativeQuery with generics
    * [HHH-16020] - Hibernate doesn't set the correct bind parameter for the offset when using NativeQuery.setFirstResult() on Postgresql
    * [HHH-16014] - Querying property from treated path causes IllegalArgumentException: Already registered a copy
    * [HHH-16007] - PropertyAccessException when deleting entities with Embeddables with child collections
    * [HHH-16005] -  @BatchSize with @ManyToMany does not work as expected when migrating 5 -> 6
    * [HHH-16004] - Downcasting with CriteriaBuilder.treat causes ClassCastException
    * [HHH-16003] - Wrong alias used in subquery generated from JPQL
    * [HHH-15998] - Incomplete group by expression when with "NEW" operator
    * [HHH-15991] - Hibernate fails when grouping by a related many-to-one entity
    * [HHH-15986] - Eager Bidirectional association, initializing an HibernateProxy should associate to the circular association the HibernateProxy  itself
    * [HHH-15982] - Bidirectional one-to-one associations produce child entities with null parent entity references
    * [HHH-15970] - Issue when combining Postgres driver, @MappedSuperclass, generics and enums
    * [HHH-15969] - Inheritance: org.hibernate.PropertyAccessException Exception
    * [HHH-15967] - @OneToOne(mappedBy = ..., fetch = LAZY) in embedded referencing an association within another embedded 
    * [HHH-15957] - Hibernate 6.1.6 Infinite Recursion/StackOverflow Using DB2 Custom Dialect
    * [HHH-15950] - AssertionError with bidirectional OneToOne relation using AttributeConverter for the FK
    * [HHH-15944] - Joins on non-managed-type polymorphisms don't work
    * [HHH-15933] - broken SQL generated for @ManyToOne with @JoinColumn which references a column of a @SecondaryTable
    * [HHH-15928] -  Distinct with maxResults fails under SQLServer
    * [HHH-15916] -  Regressions when using JoinColumnOrFormula on char[] and String 
    * [HHH-15914] - Deprecated method QueryProducer.createNativeQuery alternative does not work for Example 556 and 557
    * [HHH-15902] - @OneToMany relationship with @Where on child table generates wrong sql
    * [HHH-15901] - Criteria Query throws a NullPointerException when I use an empty predicates list
    * [HHH-15890] -  springboot 3.0.0 + hibernate 6.1.5.Final + IBM DB2 error after migrating from springboot 2.7.0 + hibernate 5.6.9.Final
    * [HHH-15866] - Hibernate validation fails when OneToMany refers to fereign key in embeddable object and is marked as nullable false
    * [HHH-15865] - OneToMany foreign key relation throws when id is inside nested embeddables
    * [HHH-15864] - OrphanRemoval does not work with embeddables when deleting entity
    * [HHH-15859] - Fetching an entity with entity graph for an attribute of type Map fails with an assertion error
    * [HHH-15854] - Improve CollectionInitializer and EntityDelayedFetchInitializer resolveInstance methods performance when the parent entity is initialized
    * [HHH-15851] - Mixup of entities in refresh with BatchSize
    * [HHH-15850] - NullPointerException when parsing HQL query with like statement and interface is used
    * [HHH-15842] - Can't convert an enum that is inside an entity within an entity
    * [HHH-15840] - HibernateException: Found shared references to a collection when loading a collection from the cache
    * [HHH-15839] - CriteriaBuilder treat method on Path causes ClassCastException
    * [HHH-15823] - Unexpected java.lang.AssertionError when use AttributeConverter
    * [HHH-15822] - Unexpected org.hibernate.UnknownEntityTypeException: Unable to locate persister
    * [HHH-15805] - Subquery with where condition on a column with columnDefinition results in wrong SQL grammar
    * [HHH-15794] - NullPointerException when constructing mapping model for nested embeddables with not optional ManyToOne
    * [HHH-15784] - Primitive array as Natural ID causes ClassCastException
    * [HHH-15778] - Fetching an Entity with a lazily loaded Embeddable with more fields than the parent results in an ArrayIndexOutOfBoundsException
    * [HHH-15768] - incorrect deprecation warning being logged: HHH90000021: Encountered deprecated setting [javax.persistence.sharedCache.mode], use [jakarta.persistence.sharedCache.mode] instead 


Changes in 6.1.6.Final (December 07, 2022)
------------------------------------------------------------------------------------------------------------------------

https://hibernate.atlassian.net/projects/HHH/versions/32118

** Bug
    * [HHH-15765] - Build fails due to missing dependency on Maven Central of nu.studer.credentials
    * [HHH-15749] - Hibernate fails when selecting grouped by entities in a specific order
    * [HHH-15744] - HQL where clause parsing fails with StackOverflow exception
    * [HHH-15742] - Querying converter attribute fails
    * [HHH-15731] - Multi-level Derived Tables fail with Unsupported path source: org.hibernate.query.derived.AnonymousTupleSqmPathSource
    * [HHH-15730] - Hibernate throws NullPointerException if loading an Entity that contains a null Embedded field and enableDirtyTracking = true
    * [HHH-15721] - NullPointerException in BaseSqmToSqlAstConverter.visitJunctionPredicate with combination of treats
    * [HHH-15718] - Polymorphic queries with condition do not work
    * [HHH-15717] - SQL script executed twice when using persistence.xml jakarta.persistence.sql-load-script-source property with the default sql script name
    * [HHH-15716] - ClassCastException in QueryParameterBindingsImpl.generateQueryKeyMemento
    * [HHH-15715] - broken links in 6 docs
    * [HHH-15713] - UnknownTableReferenceException on @ElementCollection of @Embeddable containing a @MayToOne with a @ManyToMany
    * [HHH-15711] - ArgumentTypesValidator doesn't support enums in string functions
    * [HHH-15703] - SqlFunction does not render the fragment after the last parameter
    * [HHH-15699] - HibernateException: Found shared references to a collection when ShareCacheMode.All or ShareCacheMode.DISABLE_SELECTIVE
    * [HHH-15695] - Batch Fetching, Embeddable with an Association is considered null when all the other Embeddable attributes are null 
    * [HHH-15694] - HibernateException: Unable to resolve property xyz on ManyToOne with BatchSize
    * [HHH-15686] - Envers incorrect key parameter order in insert statement when InheritanceType.JOINED and @Embeddable ID
    * [HHH-15674] - @NamedEntityGraph not working on entity that have composite PK
    * [HHH-15666] - When a reference entry is found in the Second Level Cache there is not need to set its values 
    * [HHH-15658] - Embeddable with more fields than the parent fails with Index out of Bounds
    * [HHH-15656] - use privileged action when invoking ScheduledExecutorService.shutdown
    * [HHH-15655] - ByteBuddyState should use privileged action when defining classes
    * [HHH-15653] - Named Native Query cannot be registered/used with named parameters
    * [HHH-15648] - Fetching association and using implicit path in condition fails
    * [HHH-15646] - Using a generic DTO i get a ClassCastException: class sun.reflect.generics.reflectiveObjects.TypeVariableImpl cannot be cast to class java.lang.reflect.ParameterizedType
    * [HHH-15644] - ClassCastException when batch-fetching association in embeddable
    * [HHH-15640] - ElementCollection with SubSelect FetchMode throws NPE, "ownerEntry" is null
    * [HHH-15634] - Lazy basic property does not get updated on change
    * [HHH-15624] - java.lang.ClassCastException: class sun.reflect.generics.reflectiveObjects.WildcardTypeImpl cannot be cast to class java.lang.reflect.ParameterizedType when using generics and Wildcard
    * [HHH-15608] - Error In Native Query where column is mapped twice
    * [HHH-15606] - @OneToOne(mappedBy = ..., fetch = LAZY) in embedded leads to IllegalArgumentException: Can not set [...] to LazyPropertyInitializer$1

** Improvement
    * [HHH-15836] - Cleanup unneccessary String <> Serializable casts in TimestampsCacheEnabledImpl
    * [HHH-15835] - Avoid using functions in PersistenceContext#clear implementation
    * [HHH-15825] - Avoid pointless auto-boxing of timestamp in QueryResult's CacheItem 
    * [HHH-15811] - Avoid secondary super-type cache pollution when casting to AttributeMapping
    * [HHH-15810] - Avoid secondary super-type cache pollution when casting to EntityInitializer
    * [HHH-15809] - Secondary super-type cache pollution mitigations for HibernateBasicProxy
    * [HHH-15808] - ByteBuddyProxyFactory#getHibernateProxy is triggering type pollution via generic PrivilegedAction
    * [HHH-15804] - Avoid JDK functional interfaces in ManagedTypeHelper
    * [HHH-15803] - Have the default EmptyInterceptor avoid triggering type pollution
    * [HHH-15793] - Mitigate type pollution on ColumnReference#getExpressionType
    * [HHH-15790] - Secondary super-type cache pollution mitigations for Enhanced Proxies and Components
    * [HHH-15787] - DefaultMergeEventlistener#onMerge is performing runtime services lookup
    * [HHH-15779] - Avoid stateful lambdas in hot processing of JdbcValuesResultSetImpl
    * [HHH-15776] - Avoid type checking for ManagedEntity in StatefulPersistenceContext#addReferenceEntry
    * [HHH-15728] - Consider parameter values in QueryKey hashCode but disregard firstResult/maxResults
    * [HHH-15719] - Hint UniqueSematics.NONE for entity queries without collection join fetches
    * [HHH-15662] - ClasscastException caused by check for Managed rather than ManagedEntity
    * [HHH-15651] - StatefulPersistenceContext#clear shouldn't need defensive copies for iteration


Changes in 6.1.5.Final (October 28, 2022)
------------------------------------------------------------------------------------------------------------------------

https://hibernate.atlassian.net/projects/HHH/versions/32113

** Bug
    * [HHH-15622] - Query bug in @NamedEntityGraph when doing Eager loading of @OneToOne mappings in Single Table inheritance
    * [HHH-15620] - HBM transformed model is wrongly marked metadata-complete
    * [HHH-15619] - Named query from HBM doesn't apply cacheable configuration
    * [HHH-15607] - @NamedEntityGraph is not working when try to load Basic attribute with OneToMany relation.
    * [HHH-15605] - Parameter binding of converted TemporalJavaType fails
    * [HHH-15597] - Gradle plugin should use full compilation classpath for enhancement
    * [HHH-15592] - Use of JdbcExceptionHelper.extractSqlState in string switches causes NPE
    * [HHH-15590] - UUIDJdbcType and VarcharUUIDJdbcType lack getJdbcLiteralFormatter implementation
    * [HHH-15582] - SpannerDialect, schema update tries to create existing tables
    * [HHH-15580] - Emulate lt/gt/le/ge tuple-comparisons when unsupported
    * [HHH-15573] - SpannerDialect, schema creation generates SQL containing 'null' instead of the column type
    * [HHH-15561] - Function "IDENTITY" not found when inserting audited revision using Hibernate Envers
    * [HHH-15558] - Hibernate's Gradle plugin does not work with three-part source set names
    * [HHH-15531] - Use dense_rank instead of row_number when query uses distinct
    * [HHH-15528] - Add Cockroach to Jenkins nightly test matrix and fix issues
    * [HHH-15277] - Reflection error when committing one to one relationship with embedded ids
    * [HHH-14940] - Unidirectional one-to-many associations annotated with @OnDelete must define @JoinColumn not working with CompositeKey (JoinColumns)
    * [HHH-14687] - Cannot refer in JoinColumn to a field introduced by another JoinColumn
    * [HHH-14544] -  Document Ehcache Performance degradation when the default cache is used
    * [HHH-13054] - ManyToOne and referencedColumnName  => org.hibernate.AnnotationException: referencedColumnNames ... not mapped to a single property
    * [HHH-12930] - non-primary embedded composite @ManyToOne mapping fails -> AnnotationException: referencedColumnNames ... not mapped to a single property

** Improvement
    * [HHH-15639] - Upgrade to ByteBuddy 1.12.18
    * [HHH-15637] - Upgrade to Byteman 4.0.20
    * [HHH-15636] - Indexed fetchable access via IndexedConsumer and by position
    * [HHH-15635] - Avoid type pollution in EnhancedSetterImpl
    * [HHH-15633] - Intern entity name to improve EntityKey#equals
    * [HHH-15632] - Avoid unnecessary PersistenceContext#getEntity call in AbstractEntityInitializer
    * [HHH-15616] - Mitigate performance impact of entity enhancement on Klass's _secondary_super_cache
    * [HHH-15613] - remove lateral from roots and JpaDerivedFrom
    * [HHH-15610] - Remove internal CacheKeyValueDescriptor uses from Type and JavaType
    * [HHH-15585] - Add support for DB2 aliases for schema validation
    * [HHH-15355] - Create virtual synthetic properties for multi-column inverse one-to-ones

** Task
    * [HHH-15615] - Add EDB PostgreSQL Advanced to test matrix and fix issues


Changes in 6.1.4.Final (October 05, 2022)
------------------------------------------------------------------------------------------------------------------------

https://hibernate.atlassian.net/projects/HHH/versions/32106

** Bug
    * [HHH-15576] - Emulation of tuple comparison produces a wrong SQL query for NOT EQUAL operator
    * [HHH-15572] - Emulation of tuple comparison produces a wrong SQL query, missing a closing parenthesis
    * [HHH-15554] - Merge of an Entity with an immutable composite user type throws Exception 
    * [HHH-15552] - Embeddable type cannot be cast to org.hibernate.usertype.CompositeUserType if referred to from a mapped superclass with generic parameter
    * [HHH-15548] - PostgreSQL: java.util.Instant - Hibernate creates column with typecode 93 and then expects typecode 3003
    * [HHH-15543] - CNFE with OracleDialect when JDBC driver classes are invisible
    * [HHH-15542] - Stored Procedure, 'registerStoredProcedureParameter(..., ResultSet.class, ParameterMode.REF_CURSOR);' throws NPE : cannot invoke "org.hibernate.query.BindableType.getBindableJavaType()" because "parameterType" is null
    * [HHH-15537] - Lateral subquery emulation fails on MySQL 5.7
    * [HHH-15522] - Hibernate.isInitialized method not working for Envers Collections
    * [HHH-15520] - ValueGeneration on @OneToOne leads to boot error 
    * [HHH-15517] - "insert from select" With hibernate.default_schema Configured Doesn't Work With Hibernate 6
    * [HHH-15514] - EntityTestCase Test failures with Hibernate ORM when run under security manager
    * [HHH-15512] - Querying for an entity persisted but not flushed to the database causes the exception 'A collection with cascade="all-delete-orphan" was no longer referenced by the owning entity instance'
    * [HHH-15511] - CockroachDB dialect version incorrectly determined
    * [HHH-15505] - Getter of loaded entity returns null when using bytecode enhancement on entity whose field is defined both in mapped superclass and concrete entity
    * [HHH-15498] - Enum, Query fails to determine the ValueMapping for SqmParameter
    * [HHH-15497] - Count query when counting polymorphic subclasses by type fails when run twice
    * [HHH-15495] - BINARY (and by extension UUID) is no longer comparable in Hibernate 6
    * [HHH-15482] - CoercionException in criteria simple case statement
    * [HHH-15481] - NaturalId and Lazy create a class cast Exception
    * [HHH-15235] - PropertyAccessException on OneToOne mapping after migration to Hibernate 5.6
    * [HHH-15045] - onFlushDirty() invoked on parent entity in a @OneToOne relationship when no table columns are changed

** Deprecation
    * [HHH-15536] - Deprecate SharedSessionContractImplementor#getTransactionStartTimestamp() and CacheTransactionSynchronization#getCurrentTransactionStartTimestamp()

** Improvement
    * [HHH-15578] - Add min/max emulation for uuid on PostgreSQL
    * [HHH-15527] - Use SimpleInsertQueryPlan when query assigns id even if optimizer increment is bigger than 1
    * [HHH-15500] - Cache key is huge since migration to 6

** Task
    * [HHH-15579] - Replace inaccessible docker image for SAP Hana with new version
    * [HHH-15538] - Move Jenkinsfile timeout around shell command
    * [HHH-15534] - Publish recent version of Hibernate Gradle plugin
    * [HHH-15533] - Introduce versionless CI matrix entries for the PostgreSQL and MySQL minimum supported version
    * [HHH-15494] - Upgrade to ANTLR 4.10.1
