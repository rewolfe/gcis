
/* unused */

drop table dataset_lineage;
drop table submitter;
drop table ref_type;

/** table _report_editor **/
comment on table "_report_editor" is 'Users who have permissions to make changes to a given report.';
comment on column "_report_editor".report is 'The identifier of the report.';
comment on column "_report_editor".username is 'The name of the user.';

/** table _report_viewer **/
comment on table "_report_viewer" is 'Users who have permission to view non-public reports.';
comment on column "_report_viewer".report is 'The identifier of the report.';
comment on column "_report_viewer".username is 'The name of the user.';

/* activity */
comment on table activity is 'An activity is a process that occurs over a period of time, and may be associated with a pair of publications.';
comment on column activity.identifier is 'A globally unique identifier for this activity.';
comment on column activity.data_usage is 'A description of the way in which input data were used for this activity.';
comment on column activity.methodology is 'A detailed description of the procedure.';
comment on column activity.start_time is 'The time at which this activity began.';
comment on column activity.end_time is 'The time at which this activity ended.';    
comment on column activity.duration is 'The amount of time taken for this activity.';
comment on column activity.computing_environment is 'Operating systems and versions used to perform this activity';
comment on column activity.output_artifacts is 'Files/data products generated by this activity.';
comment on column activity.software is 'Primary software (with version) used.';
comment on column activity.visualization_software is 'Primary visualization software used.';
comment on column activity.notes is 'Other information about this activity which might be useful for traceability or reproducability.';

/* array */
comment on table "array" is 'An array is an n-dimensional grid of data, and may be associated with a table.';
comment on column "array".identifier is 'A globally unique identifier for this array, such as a UUID.';
comment on column "array".rows_in_header is 'The number of rows in the header of this array.';
comment on column "array".rows is 'The data in this array.';

/* array_table_map */
comment on table array_table_map is 'Arrays and tables have a many-to-many relationship.';
comment on column array_table_map.array_identifier is 'The array.';
comment on column array_table_map.table_identifier  is 'The table.';
comment on column array_table_map.report_identifier is 'The report associated with the table.';

/** table article **/
comment on table "article" is 'Articles are publications in peer reviewed journals, and generally have DOIs.';
comment on column "article".identifier is 'The identifier : this should be the DOI, if there is one.';
comment on column "article".title is 'The title of the article (source: crossref.org).';
comment on column "article".doi is 'The digital object identifier for the articel.';
comment on column "article".year is 'The year of publication.';
comment on column "article".journal_identifier is 'The GCIS identifier for the journal.';
comment on column "article".journal_vol is 'The volume of the journal in which the article appears (source: crossref.org)';
comment on column "article".journal_pages is 'The pages of the journal on which the article appears (source: crossref.org)';
comment on column "article".url is 'A URL for the article (not necessary if there is a DOI).';
comment on column "article".notes is 'Notes about this entry.';

/** table book **/
comment on table "book" is 'Entries in this table are publications classified as books.  They should have ISBN numbers. ';
comment on column "book".identifier is 'A globally unique identifier for this book.';
comment on column "book".title is 'The title of the book';
comment on column "book".isbn is 'The 10 or 13 digit ISBN number for this book.';
comment on column "book".year is 'The year of publication.';
comment on column "book".publisher is 'The name of the publisher.';
comment on column "book".number_of_pages is 'The number of pages in the book.';
comment on column "book".url is 'A url for a landing page for this book, or for the book itself, if it is available online.';
comment on column "book".in_library is 'Whether or not this book is available in the USGCRP resources library.';
comment on column "book".topic is 'A brief free form comma-separated list of topics associated with this book.';

/** table chapter **/
comment on table "chapter" is 'A chapter is part of a report.';
comment on column "chapter".identifier is 'A descriptive identifier for this chapter';
comment on column "chapter".title is 'The title.';
comment on column "chapter".report_identifier is 'The report containing this chapter.';
comment on column "chapter".number is 'The numeric chapter number.';
comment on column "chapter".url is 'The URL for a landing page for this chapter.';
comment on column "chapter".sort_key is 'A key used to order this chapter within a report.';
comment on column "chapter".doi is 'A digital object identifier for this chapter.';

/** table contributor **/
comment on table "contributor" is 'A contributor is an organization, a role, and optionally a person.';
comment on column "contributor".id is 'An opaque numeric identifier for this contributor.';
comment on column "contributor".person_id is 'The person (optional).';
comment on column "contributor".role_type_identifier is 'The role.';
comment on column "contributor".organization_identifier is 'The organization.';

/** table country **/
comment on table "country" is 'A list of countries used in GCIS.';
comment on column "country".code is 'Two letter code (ISO 3166-1 alpha-2)';
comment on column "country".name is 'Country name.';

/** table dataset **/
comment on table "dataset" is 'Datasets are arbitrary collections of data.  They are a type of publication and may be associated with other publications.';
comment on column "dataset".identifier is 'A globally unique identifier for this dataset.  This may be a composite identifier derived from external identifier or publications associated with this dataset.';
comment on column "dataset".name is 'A brief descriptive name.';
comment on column "dataset".type is 'A free form type for this dataset.';
comment on column "dataset".version is 'The version.';
comment on column "dataset".description is 'A narrative description of this dataset.  If the description is a direct quote available at a URL, put that URL into description_attribution.';
comment on column "dataset".description_attribution is 'A URL which contains a description of this dataset.';
comment on column "dataset".native_id is 'The identifier for this dataset given by the producer or archive for the dataset.';
comment on column "dataset".access_dt is 'The data on which this dataset was accessed.';
comment on column "dataset".url is 'A URL for a landing page.';
comment on column "dataset".data_qualifier is 'Assumptions or qualifying statements about this data.';
comment on column "dataset".scale is 'If the data has been scaled, describe that here.';
comment on column "dataset".spatial_ref_sys is 'The spatial reference system.';
comment on column "dataset".cite_metadata is 'The preferred way to cite this dataset.';
comment on column "dataset".scope is 'The scope of the data.';
comment on column "dataset".spatial_extent is 'Brief description of the spatial extent, which corresponds to lat_min/lat_max, lon_min/lon_max';
comment on column "dataset".temporal_extent is 'Brief description of the temporal extent, which corresponds to start_time/end_time';
comment on column "dataset".vertical_extent is 'A brief description of the vertical extent.';
comment on column "dataset".processing_level is 'The processessing level, if applicable.';
comment on column "dataset".spatial_res is 'The spatial resolution.';
comment on column "dataset".doi is 'A digital object identifier.';
comment on column "dataset".release_dt is 'The date on which this dataset was released.';
comment on column "dataset".publication_year is 'The date on which this dataset was initially published.';
comment on column "dataset".attributes is 'Free form comma separated attributes for this dataset.';
comment on column "dataset".variables is 'Variables represented by this dataset.';
comment on column "dataset".start_time is 'The beginning of the temporal extent.';
comment on column "dataset".end_time is 'The end of the temporal extent.';
comment on column "dataset".lat_min is 'The southernmost latitude in the bounding box for this dataset.';
comment on column "dataset".lat_max is 'The nothernmost latitude in the bounding box for this dataset.';
comment on column "dataset".lon_min is 'The westernmost longitude in the bounding box for this dataset.';
comment on column "dataset".lon_max is 'The eastermost longitude in the bounding box for this dataset.';

/** table exterm **/
comment on table "exterm" is 'External terms which can be mapped to GCIS identifiers.';
comment on column "exterm".context is 'A brief identifier for the context of this term.';
comment on column "exterm".term is 'The term itself.';
comment on column "exterm".lexicon_identifier is 'The lexicon associated with this term.';
comment on column "exterm".gcid is 'The GCIS identifier (URI) to which this term is mapped.';

/** table figure **/
comment on table "figure" is 'A figure appears in a report and may consist of one or more images.';
comment on column "figure".identifier is 'A descriptive identifier for this figure.';
comment on column "figure".chapter_identifier is 'The chapter in which this figure appears.';
comment on column "figure".title is 'The short title, if any.';
comment on column "figure".caption is 'The figure caption.';
comment on column "figure".attributes is 'A free form list of attributes for this figure.';
comment on column "figure".time_start is 'The start of the spatial extent represtented by this figure.';
comment on column "figure".time_end is 'The end of the spatial extent represtented by this figure.';
comment on column "figure".lat_min is 'The southernmost latitude in the bounding box for this figure.';
comment on column "figure".lat_max is 'The nothernmost latitude in the bounding box for this figure.';
comment on column "figure".lon_min is 'The westernmost longitude in the bounding box for this figure.';
comment on column "figure".lon_max is 'The eastermost longitude in the bounding box for this figure.';
comment on column "figure".usage_limits is 'Copyright restrictions describing how this figure may be used.';
comment on column "figure".submission_dt is 'The date on which this figure was submitted.';
comment on column "figure".create_dt is 'The date on which this figure was created.';
comment on column "figure".source_citation is 'Text describing the source of this figure.';
comment on column "figure".ordinal is 'The numeric position of this figure within a chapter.';
comment on column "figure".report_identifier is 'The report associated with this figure';

/** table file **/
comment on table "file" is 'Files are distinct downloadable entities which may be associated with publications.';
comment on column "file".file is 'The URI for this file (relative to /assets/ or to the location)';
comment on column "file".identifier is 'A globally unique identifier for this file (a UUID).';
comment on column "file".thumbnail is 'The location of a thumbnail version of this file (relative to /assets/)';
comment on column "file".mime_type is 'The MIME Type (RFC 2046).';
comment on column "file".sha1 is 'A SHA1 hash of the contents of this file.';
comment on column "file".size is 'The number of bytes in the file.';
comment on column "file".location is 'The host for this file, if it is outside of GCIS.';
comment on column "file".landing_page is 'A URL for the landing page for this file.';

/** table finding **/
comment on table "finding" is 'A finding is associated with a report and optionally a chapter.';
comment on column "finding".identifier is 'A descriptive identifier for this finding.';
comment on column "finding".chapter_identifier is 'The chapter containing this finding.';
comment on column "finding".statement is 'The statement of the finding.';
comment on column "finding".ordinal is 'The numeric position of this finding with a chapter (or report).';
comment on column "finding".report_identifier is 'The report associated with this finding.';
comment on column "finding".process is 'The process for developing this finding.';
comment on column "finding".evidence is 'A description of the evidence base.';
comment on column "finding".uncertainties is 'A description of the uncertainties.';
comment on column "finding".confidence is 'An assessment of the confidence in this finding based on the evidence.';

/** table gcmd_keyword **/
comment on table "gcmd_keyword" is 'Keywords from the Global Change Master Directory <http://gcmd.nasa.gov/learn/keyword_list.html>.';
comment on column "gcmd_keyword".identifier is 'The UUID for this keyword.';
comment on column "gcmd_keyword".parent_identifier is 'The UUID for the parent keyword.';
comment on column "gcmd_keyword".label is 'The brief label for this keyword.';
comment on column "gcmd_keyword".definition is 'The definition.';

/** table generic **/
comment on table "generic" is 'Generic publications, not covered by other GCIS publication types.';
comment on column "generic".identifier is 'A globally unique identifier (UUID)';
comment on column "generic".attrs is 'Arbitray attributes and values for this generic publication.';

/** table image **/
comment on table "image" is 'An image may be associated with multiple figures, may have provenance and other attributes distinct from that of a parent figure.';
comment on column "image".identifier is 'A globally unique identifier (UUID).';
comment on column "image".position is 'A description of where this image is within other figures.';
comment on column "image".title is 'A title for this image.';
comment on column "image".description is 'An optional description of this image.';
comment on column "image".attributes is 'Comma separated free form attributes of this image.';
comment on column "image".time_start is 'The start of the spatial extent represtented by this image.';
comment on column "image".time_end is 'The end of the spatial extent represtented by this image.';
comment on column "image".lat_min is 'The southernmost latitude in the bounding box for this image.';
comment on column "image".lat_max is 'The nothernmost latitude in the bounding box for this image.';
comment on column "image".lon_min is 'The westernmost longitude in the bounding box for this image.';
comment on column "image".lon_max is 'The eastermost longitude in the bounding box for this image.';
comment on column "image".usage_limits is 'Copyright restrictions describing how this image may be used.';
comment on column "figure".submission_dt is 'The date on which this image was submitted.';
comment on column "figure".create_dt is 'The date on which this image was created.';

/** table image_figure_map **/
comment on table "image_figure_map" is 'A figure can have many images and vice versa.';
comment on column "image_figure_map".image_identifier is 'The image.';
comment on column "image_figure_map".figure_identifier is 'The figure.';
comment on column "image_figure_map".report_identifier is 'The report containing the figure.';

/** table instrument **/
comment on table "instrument" is 'An instrument is used for measurement.';
comment on column "instrument".identifier is 'A descriptive identifier for this instrument.';
comment on column "instrument".name is 'A brief name for this instrument.';
comment on column "instrument".description is 'A description of this instrument.';
comment on column "instrument".description_attribution is 'A URL which contains the description of this instrument.';

/** table instrument_instance **/
comment on table "instrument_instance" is 'An instrument instance is the association of an instrument with a platform.';
comment on column "instrument_instance".platform_identifier is 'The platform.';
comment on column "instrument_instance".instrument_identifier is 'The instrument.';
comment on column "instrument_instance".location is 'The location of the instrument on the platform.';

/** table instrument_measurement **/
comment on table "instrument_measurement" is 'An instrument measurement is a way of associating an instrument instance with a dataset.';
comment on column "instrument_measurement".platform_identifier is 'The platform of the instrument.';
comment on column "instrument_measurement".instrument_identifier is 'The instrument.';
comment on column "instrument_measurement".dataset_identifier is 'The dataset.';

/** table journal **/
comment on table "journal" is 'A journal is a peer reviewed publication which contains articles.';
comment on column "journal".identifier is 'A descriptive identifier for this journal.';
comment on column "journal".title is 'The title of the journal (source: crossref.org)';
comment on column "journal".print_issn is 'The 10 or 13 digit ISSN for the print version of this journal.';
comment on column "journal".online_issn is 'The 10 or 13 digit ISSN for the online version of this journal.';
comment on column "journal".publisher is 'The publisher of the journal.';
comment on column "journal".country is 'The country of publication.';
comment on column "journal".url is 'A URL for the landing page for this journal.';

/** table lexicon **/
comment on table "lexicon" is 'A lexicon is a list of terms which correspond to GCIS identifiers.';
comment on column "lexicon".identifier is 'A brief descriptive identifier for this lexicon.';
comment on column "lexicon".description is 'A description of the lexicon, possibly including the organization associated with it.';
comment on column "lexicon".url is 'A url for further information.';

/** table methodology **/
comment on table "methodology" is 'A methodology is a publication associated with an activity';
comment on column "methodology".activity_identifier is 'The activity.';
comment on column "methodology".publication_id is 'The publication.';

/** table model **/
comment on table "model" is 'Models may be associated with scenarios, model runs, and projects.';
comment on column "model".identifier is 'A unique descriptive identifier.';
comment on column "model".project_identifier is 'A project associated with this model.';
comment on column "model".name is 'A brief name.';
comment on column "model".version is 'A version.';
comment on column "model".reference_url is 'A URL to find publiations with details about this model.';
comment on column "model".website is 'A public website with high level descriptions about this model.';
comment on column "model".description is 'A description.';
comment on column "model".description_attribution is 'A URL containing the description of this model.';

/** table model_run **/
comment on table "model_run" is 'A model run associates a model with a scenario and a project.';
comment on column "model_run".identifier is 'A unique identifier for this model run.';
comment on column "model_run".doi is 'A digital object identifier.';
comment on column "model_run".model_identifier is 'The model.';
comment on column "model_run".scenario_identifier is 'The scenario.';
comment on column "model_run".spatial_resolution is 'The spatialr resolution of this run.';
comment on column "model_run".range_start is 'The start of time range convered by this model';
comment on column "model_run".range_end is 'The end of time range convered by this model';
comment on column "model_run".sequence is 'An index distinguishing this run from other runs with similar parameters.';
comment on column "model_run".sequence_description is 'A description of how this run differens from others with similar parameters.';
comment on column "model_run".activity_identifier is 'An activity associated with this model run.';
comment on column "model_run".project_identifier is 'A project associated with this model.';
comment on column "model_run".time_resolution is 'The temporal resolution of this run.';

/** table organization **/
comment on table "organization" is 'An organization is an entity with which people and publications may be associated.';
comment on column "organization".identifier is 'A descriptive identifier.';
comment on column "organization".name is 'The name.';
comment on column "organization".url is 'The URL for the organization.';
comment on column "organization".country_code is 'The country with which this organizaion is affiliated.';
comment on column "organization".organization_type_identifier is 'The type of organization.';

/** table organization_map **/
comment on table "organization_map" is 'Organizations may be associated with other organizations.';
comment on column "organization_map".organization_identifier is 'The first organization.';
comment on column "organization_map".other_organization_identifier is 'The target.';
comment on column "organization_map".organization_relationship_identifier is 'The relationship.';

/** table organization_relationship **/
comment on table "organization_relationship" is 'These are the possible ways in which two organizations may be related.';
comment on column "organization_relationship".identifier is 'A descriptive identifier.';
comment on column "organization_relationship".label is 'A human readable label.';

/** table organization_type **/
comment on table "organization_type" is 'The distinct types of organizations represented.';
comment on column "organization_type".identifier is 'A descriptive identifier.';

/** table person **/
comment on table "person" is 'People are stored using opaque numeric identifiers.';
comment on column "person".id is 'A unique numeric identifier.';
comment on column "person".url is 'A URL with information about this person.';
comment on column "person".orcid is 'An ORCID (<http://orcid.org>) for this person.';
comment on column "person".first_name is 'The given name of the person.';
comment on column "person".last_name is 'The family name of the person.';
comment on column "person".middle_name is 'The middle name of the person.';

/** table platform **/
comment on table "platform" is 'A platform may be associated with one more more instruments.';
comment on column "platform".identifier is 'A descriptive identifier for this platform.';
comment on column "platform".name is 'A brief name.';
comment on column "platform".description is 'A description.';
comment on column "platform".description_attribution is 'A URL containing the description.';
comment on column "platform".url is 'A landing page with information about this platform.';
comment on column "platform".platform_type_identifier is 'The type.';
comment on column "platform".start_date is 'The date on which this platform first began operating.';
comment on column "platform".end_date is 'The date on which this platform ceased operations.';

/** table platform_type **/
comment on table "platform_type" is 'Platforms have a type.';
comment on column "platform_type".identifier is 'A descriptive identifier for this type.';

/** table project **/
comment on table "project" is 'A project may be associated with a collection of models.';
comment on column "project".identifier is 'A descriptive identifier.';
comment on column "project".name is 'A short name.';
comment on column "project".description is 'A description.';
comment on column "project".description_attribution is 'A URL containing the description.';
comment on column "project".website is 'A website officially assocaited with this project.';

/** table publication **/
comment on table "publication" is 'A publication, similar to an entity, is a generic term for something that has been released to the public.';
comment on column "publication".id is 'An opaque numeric identifier';
comment on column "publication".publication_type_identifier is 'The type';
comment on column "publication".fk is 'Column column names and values of the primary key of this entitiy in its native table.';

/** table publication_contributor_map **/
comment on table "publication_contributor_map" is 'Publications can have one more contributors.';
comment on column "publication_contributor_map".publication_id is 'The publication.';
comment on column "publication_contributor_map".contributor_id is 'The contributor.';
comment on column "publication_contributor_map".reference_identifier is 'A reference which makes the association between the publicaton and the contributor.';
comment on column "publication_contributor_map".sort_key is 'A sort key for this entry.';

/** table publication_file_map **/
comment on table "publication_file_map" is 'Publications may have zero or more files.  And vice versa.';
comment on column "publication_file_map".publication_id is 'A publication.';
comment on column "publication_file_map".file_identifier is 'A file.';

/** table publication_gcmd_keyword_map **/
comment on table "publication_gcmd_keyword_map" is 'Publications can have zero or more keywords.  And vice versa.';
comment on column "publication_gcmd_keyword_map".publication_id is 'A publication.';
comment on column "publication_gcmd_keyword_map".gcmd_keyword_identifier is 'A keyword.';

/** table publication_map **/
comment on table "publication_map" is 'Publications can be related to other publications.';
comment on column "publication_map".child is 'The child publication.';
comment on column "publication_map".relationship is 'The relationship, in the form ontology:term.';
comment on column "publication_map".parent is 'The parent publication.';
comment on column "publication_map".note is 'A narrative comment about this relationship.';
comment on column "publication_map".activity_identifier is 'XXX';

/** table publication_region_map **/
comment on table "publication_region_map" is 'Publications can have many regions and vice versa.';
comment on column "publication_region_map".publication_id is 'A publication.';
comment on column "publication_region_map".region_identifier is 'A region.';

/** table publication_type **/
comment on table "publication_type" is 'Publications have types which correspond to database tables.';
comment on column "publication_type".identifier is 'A descriptive type.';
comment on column "publication_type".table is 'The database table.';

/** table reference **/
comment on table "reference" is 'A reference is a bibliographic entry.  It relates two publications.';
comment on column "reference".identifier is 'A unique identifier (a UUID).';
comment on column "reference".attrs is 'Arbitrary name-value pairs for this reference.';
comment on column "reference".publication_id is 'The publication in which this reference appears.';
comment on column "reference".child_publication_id is 'The publication to which this reference refers.';

/** table region **/
comment on table "region" is 'A region is a geographical area.';
comment on column "region".identifier is 'A descriptive identifier.';
comment on column "region".label is 'A human readable label.';
comment on column "region".description is 'A description.';

/** table report **/
comment on table "report" is 'A report is a publication that may have chapters, figures, findings, and tables.';
comment on column "report".identifier is 'A descriptive identifier.';
comment on column "report".title is 'The title.';
comment on column "report".url is 'A url for a landing page.';
comment on column "report".doi is 'A digital object identifier.';
comment on column "report"._public is 'Indicates that this report is publically readable.';
comment on column "report".report_type_identifier is 'The type of this report.';
comment on column "report".summary is 'A brief summary';
comment on column "report".frequency is 'If this is a periodic report, how often it is released.';
comment on column "report".publication_year is 'The year of publication.';
comment on column "report".topic is 'A brief free form comma-separated list of topics associated with this report.';
comment on column "report".in_library is 'Whether or not this report is available in the USGCRP resources library.';

/** table report_type **/
comment on table "report_type" is 'A list of report types.';
comment on column "report_type".identifier is 'A descriptive identifer.';

/** table role_type **/
comment on table "role_type" is 'A list of roles that contributors may have.';
comment on column "role_type".identifier is 'A descriptive identifier.';
comment on column "role_type".label is 'A human readable label.';
comment on column "role_type".sort_key is 'A key for sorting contributors of this type.';

/** table scenario **/
comment on table "scenario" is 'A scenario may be associated with a model via a model run.';
comment on column "scenario".identifier is 'A desciptive identifier.';
comment on column "scenario".name is 'A brief name.';
comment on column "scenario".description is 'A description.';
comment on column "scenario".description_attribution is 'A URL containing the description.';

/** table subpubref **/
comment on table "subpubref" is 'Publications contained in other publications (e.g. chapters in reports) may be assocaited with references.';
comment on column "subpubref".publication_id is 'The publication.';
comment on column "subpubref".reference_identifier is 'The reference.';

/** table table **/
comment on table "table" is 'A table is in a report, and may contain one or more arrays.';
comment on column "table".identifier is 'A desciptive identifier.';
comment on column "table".report_identifier is 'The report.';
comment on column "table".chapter_identifier is 'The chapter containing this table.';
comment on column "table".ordinal is 'The numeric postiion of this table within the chapter.';
comment on column "table".title is 'The title of the table.';
comment on column "table".caption is 'The caption for the table.';

/** table webpage **/
comment on table "webpage" is 'A webpage is a type of publication.';
comment on column "webpage".identifier is 'A globally identifier (UUID)';
comment on column "webpage".url is 'The URL.';
comment on column "webpage".title is 'The title of the webpage.';
comment on column "webpage".access_date is 'The date on which this webpage was accessed.';
