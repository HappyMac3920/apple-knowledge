# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/jekyll/all/jekyll.rbi
#
# jekyll-4.2.2

module Jekyll
  def self.configuration(override = nil); end
  def self.env; end
  def self.logger; end
  def self.logger=(writer); end
  def self.sanitized_path(base_directory, questionable_path); end
  def self.set_timezone(timezone); end
  def self.sites; end
end
class Jekyll::Plugin
  def <=>(other); end
  def initialize(config = nil); end
  def self.<=>(other); end
  def self.catch_inheritance(const); end
  def self.descendants; end
  def self.inherited(const); end
  def self.priority(priority = nil); end
  def self.safe(safe = nil); end
end
class Jekyll::Converter < Jekyll::Plugin
  def highlighter_prefix; end
  def highlighter_suffix; end
  def initialize(config = nil); end
  def self.highlighter_prefix(highlighter_prefix = nil); end
  def self.highlighter_suffix(highlighter_suffix = nil); end
  def self.inherited(const_); end
end
class Jekyll::Generator < Jekyll::Plugin
  def self.inherited(const_); end
end
class Jekyll::Command
  def self.add_build_options(cmd); end
  def self.configuration_from_options(options); end
  def self.inherited(base); end
  def self.process_site(site); end
  def self.process_with_graceful_fail(cmd, options, *klass); end
  def self.subclasses; end
end
module Jekyll::LiquidExtensions
  def lookup_variable(context, variable); end
end
module Jekyll::Filters
  def array_to_sentence_string(array, connector = nil); end
  def as_liquid(item); end
  def cgi_escape(input); end
  def compare_property_vs_target(property, target); end
  def find(input, property, value); end
  def find_exp(input, variable, expression); end
  def inspect(input); end
  def item_property(item, property); end
  def jsonify(input); end
  def markdownify(input); end
  def normalize_whitespace(input); end
  def number_of_words(input, mode = nil); end
  def parse_binary_comparison(parser); end
  def parse_comparison(parser); end
  def parse_condition(exp); end
  def parse_sort_input(property); end
  def pop(array, num = nil); end
  def push(array, input); end
  def read_liquid_attribute(liquid_data, property); end
  def sample(input, num = nil); end
  def sassify(input); end
  def scssify(input); end
  def shift(array, num = nil); end
  def slugify(input, mode = nil); end
  def smartify(input); end
  def sort(input, property = nil, nils = nil); end
  def sort_input(input, property, order); end
  def to_integer(input); end
  def unshift(array, input); end
  def uri_escape(input); end
  def where(input, property, value); end
  def where_exp(input, variable, expression); end
  def xml_escape(input); end
  include Jekyll::Filters::DateFilters
  include Jekyll::Filters::GroupingFilters
  include Jekyll::Filters::URLFilters
end
module Jekyll::Filters::DateFilters
  def date_to_long_string(date, type = nil, style = nil); end
  def date_to_rfc822(date); end
  def date_to_string(date, type = nil, style = nil); end
  def date_to_xmlschema(date); end
  def ordinal(number); end
  def stringify_date(date, month_type, type = nil, style = nil); end
  def time(input); end
end
module Jekyll::Filters::GroupingFilters
  def group_by(input, property); end
  def group_by_exp(input, variable, expression); end
  def groupable?(element); end
  def grouped_array(groups); end
  def parse_expression(str); end
end
module Jekyll::Filters::URLFilters
  def absolute_url(input); end
  def compute_absolute_url(input); end
  def compute_relative_url(input); end
  def ensure_leading_slash(input); end
  def relative_url(input); end
  def sanitized_baseurl; end
  def strip_index(input); end
end
module Jekyll::External
  def self.blessed_gems; end
  def self.require_if_present(names); end
  def self.require_with_graceful_fail(names); end
  def self.version_constraint(gem_name); end
end
class Jekyll::LogAdapter
  def abort_with(topic, message = nil, &block); end
  def adjust_verbosity(options = nil); end
  def debug(topic, message = nil, &block); end
  def error(topic, message = nil, &block); end
  def formatted_topic(topic, colon = nil); end
  def info(topic, message = nil, &block); end
  def initialize(writer, level = nil); end
  def level; end
  def log_level=(level); end
  def message(topic, message = nil); end
  def messages; end
  def warn(topic, message = nil, &block); end
  def write(level_of_message, topic, message = nil, &block); end
  def write_message?(level_of_message); end
  def writer; end
end
class Jekyll::Stevenson < Logger
  def add(severity, message = nil, progname = nil); end
  def close; end
  def error(progname = nil, &block); end
  def initialize; end
  def logdevice(severity); end
  def warn(progname = nil, &block); end
end
module Jekyll::Drops
end
class Jekyll::Drops::Drop < Liquid::Drop
  def [](key); end
  def []=(key, val); end
  def content_methods; end
  def each; end
  def each_key(&block); end
  def fetch(key, default = nil, &block); end
  def hash_for_json(*arg0); end
  def initialize(obj); end
  def inspect; end
  def invoke_drop(key); end
  def key?(key); end
  def keys; end
  def merge!(other); end
  def merge(other, &block); end
  def mutations; end
  def self.data_delegator(key); end
  def self.data_delegators(*strings); end
  def self.delegate_method(symbol); end
  def self.delegate_method_as(original, delegate); end
  def self.delegate_methods(*symbols); end
  def self.getter_method_names; end
  def self.mutable(is_mutable = nil); end
  def self.mutable?; end
  def self.private_delegate_methods(*symbols); end
  def to_h; end
  def to_hash; end
  def to_json(state = nil); end
  include Enumerable
end
class Jekyll::Drops::DocumentDrop < Jekyll::Drops::Drop
  def <=>(other); end
  def categories; end
  def collapse_document(doc); end
  def collection; end
  def content; end
  def date; end
  def excerpt; end
  def fallback_data; end
  def hash_for_json(state = nil); end
  def id; end
  def next; end
  def output; end
  def path; end
  def previous; end
  def relative_path; end
  def tags; end
  def title; end
  def to_s; end
  def url; end
  extend Forwardable
end
module Jekyll::Commands
end
class Jekyll::Commands::Build < Jekyll::Command
  def self.build(site, options); end
  def self.init_with_program(prog); end
  def self.process(options); end
  def self.watch(site, options); end
end
class Jekyll::Commands::Clean < Jekyll::Command
  def self.init_with_program(prog); end
  def self.process(options); end
  def self.remove(filename, checker_func: nil); end
end
class Jekyll::Commands::Doctor < Jekyll::Command
  def self.allow_used_permalink?(item); end
  def self.case_insensitive_urls(things, destination); end
  def self.conflicting_urls(site); end
  def self.deprecated_relative_permalinks(site); end
  def self.destination_map(site); end
  def self.fsnotify_buggy?(_site); end
  def self.healthy?(site); end
  def self.init_with_program(prog); end
  def self.process(options); end
  def self.proper_site_url?(site); end
  def self.properly_gathered_posts?(site); end
  def self.url_absolute(url); end
  def self.url_exists?(url); end
  def self.url_valid?(url); end
  def self.urls_only_differ_by_case(site); end
end
class Jekyll::Commands::Help < Jekyll::Command
  def self.init_with_program(prog); end
  def self.invalid_command(prog, cmd); end
end
class Jekyll::Commands::New < Jekyll::Command
  def self.after_install(path, options = nil); end
  def self.blank_template; end
  def self.bundle_install(path); end
  def self.create_blank_site(path); end
  def self.create_sample_files(path); end
  def self.create_site(new_blog_path); end
  def self.gemfile_contents; end
  def self.init_with_program(prog); end
  def self.initialized_post_name; end
  def self.preserve_source_location?(path, options); end
  def self.process(args, options = nil); end
  def self.scaffold_path; end
  def self.scaffold_post_content; end
  def self.site_template; end
end
class Jekyll::Commands::NewTheme < Jekyll::Command
  def self.init_with_program(prog); end
  def self.process(args, opts); end
end
class Jekyll::Commands::Serve < Jekyll::Command
  def self.boot_or_detach(server, opts); end
  def self.default_url(opts); end
  def self.enable_logging(opts); end
  def self.enable_ssl(opts); end
  def self.file_handler_opts; end
  def self.format_url(ssl_enabled, address, port, baseurl = nil); end
  def self.init_with_program(prog); end
  def self.launch_browser(server, opts); end
  def self.mime_types; end
  def self.mutex; end
  def self.process(opts); end
  def self.read_file(source_dir, file_path); end
  def self.register_reload_hooks(opts); end
  def self.run_cond; end
  def self.running; end
  def self.running?; end
  def self.server_address(server, options = nil); end
  def self.setup(destination); end
  def self.shutdown; end
  def self.start_callback(detached); end
  def self.start_up_webrick(opts, destination); end
  def self.stop_callback(detached); end
  def self.validate_options(opts); end
  def self.webrick_opts(opts); end
end
module Jekyll::Converters
end
class Jekyll::Converters::Identity < Jekyll::Converter
  def convert(content); end
  def matches(_ext); end
  def output_ext(ext); end
  def self.inherited(const_); end
end
class Jekyll::Converters::Markdown < Jekyll::Converter
  def convert(content); end
  def custom_class_allowed?(parser_name); end
  def custom_processor; end
  def extname_list; end
  def get_processor; end
  def matches(ext); end
  def output_ext(_ext); end
  def self.inherited(const_); end
  def setup; end
  def third_party_processors; end
  def valid_processors; end
end
module Kramdown
end
module Kramdown::Parser
end
class Kramdown::Parser::SmartyPants < Kramdown::Parser::Kramdown
  def initialize(source, options); end
  def parse_content; end
end
class Jekyll::Converters::SmartyPants < Jekyll::Converter
  def convert(content); end
  def initialize(config); end
  def matches(_ext); end
  def output_ext(_ext); end
  def self.inherited(const_); end
end
class Kramdown::JekyllDocument < Kramdown::Document
  def initialize(source, options = nil); end
  def self.options; end
  def self.parser; end
  def self.setup(options); end
  def self.try_require(type, name); end
  def to_html; end
end
class Jekyll::Converters::Markdown::KramdownParser
  def convert(content); end
  def highlighter; end
  def initialize(config); end
  def load_dependencies; end
  def modernize_coderay_config; end
  def setup; end
  def strip_coderay_prefix(hash); end
end
class Jekyll::Drops::CollectionDrop < Jekyll::Drops::Drop
  def directory; end
  def docs; end
  def fallback_data; end
  def files; end
  def label; end
  def output; end
  def relative_directory; end
  def to_s; end
  extend Forwardable
end
class Jekyll::Drops::ExcerptDrop < Jekyll::Drops::DocumentDrop
  def date; end
  def excerpt; end
  def layout; end
end
class Jekyll::Drops::JekyllDrop < Liquid::Drop
  def environment; end
  def self.global; end
  def to_h; end
  def to_json(state = nil); end
  def version; end
end
class Jekyll::Drops::SiteDrop < Jekyll::Drops::Drop
  def [](key); end
  def categories; end
  def collections; end
  def config; end
  def current_document=(arg0); end
  def data; end
  def documents; end
  def fallback_data; end
  def html_pages; end
  def key?(key); end
  def pages; end
  def posts; end
  def related_posts; end
  def static_files; end
  def tags; end
  def time; end
  extend Forwardable
end
class Jekyll::Drops::StaticFileDrop < Jekyll::Drops::Drop
  def basename; end
  def collection; end
  def extname; end
  def fallback_data; end
  def modified_time; end
  def name; end
  def path; end
  extend Forwardable
end
class Jekyll::Drops::UnifiedPayloadDrop < Jekyll::Drops::Drop
  def content; end
  def content=(arg0); end
  def fallback_data; end
  def highlighter_prefix; end
  def highlighter_prefix=(arg0); end
  def highlighter_suffix; end
  def highlighter_suffix=(arg0); end
  def jekyll; end
  def layout; end
  def layout=(arg0); end
  def page; end
  def page=(arg0); end
  def paginator; end
  def paginator=(arg0); end
  def site; end
end
class Jekyll::Drops::UrlDrop < Jekyll::Drops::Drop
  def categories; end
  def collection; end
  def day; end
  def fallback_data; end
  def hour; end
  def i_day; end
  def i_month; end
  def long_day; end
  def long_month; end
  def minute; end
  def month; end
  def name; end
  def output_ext; end
  def path; end
  def second; end
  def short_day; end
  def short_month; end
  def short_year; end
  def slug; end
  def slugified_categories; end
  def title; end
  def w_day; end
  def w_year; end
  def week; end
  def y_day; end
  def year; end
  extend Forwardable
end
module Jekyll::Tags
end
class Jekyll::Tags::HighlightBlock < Liquid::Block
  def add_code_tag(code); end
  def initialize(tag_name, markup, tokens); end
  def parse_options(input); end
  def render(context); end
  def render_codehighlighter(code); end
  def render_pygments(code, _context); end
  def render_rouge(code); end
  include Liquid::StandardFilters
end
class Jekyll::Tags::IncludeTag < Liquid::Tag
  def add_include_to_dependency(site, path, context); end
  def could_not_locate_message(file, includes_dirs, safe); end
  def file_read_opts(context); end
  def initialize(tag_name, markup, tokens); end
  def load_cached_partial(path, context); end
  def locate_include_file(context, file, safe); end
  def outside_site_source?(path, dir, safe); end
  def parse_params(context); end
  def read_file(file, context); end
  def realpath_prefixed_with?(path, dir); end
  def render(context); end
  def render_variable(context); end
  def syntax_example; end
  def tag_includes_dirs(context); end
  def valid_include_file?(path, dir, safe); end
  def validate_file_name(file); end
  def validate_params; end
end
class Jekyll::Tags::OptimizedIncludeTag < Jekyll::Tags::IncludeTag
  def add_include_to_dependency(inclusion, context); end
  def locate_include_file(file); end
  def outside_scope?(path, dir); end
  def realpath_prefixed_with?(path, dir); end
  def render(context); end
  def valid_include_file?(path, dir); end
end
class Jekyll::Tags::IncludeRelativeTag < Jekyll::Tags::IncludeTag
  def page_path(context); end
  def resource_path(page, site); end
  def tag_includes_dirs(context); end
end
class Jekyll::Tags::Link < Liquid::Tag
  def initialize(tag_name, relative_path, tokens); end
  def render(context); end
  def self.tag_name; end
  include Jekyll::Filters::URLFilters
end
class Jekyll::Tags::PostComparer
  def ==(other); end
  def date; end
  def deprecated_equality(other); end
  def initialize(name); end
  def name; end
  def path; end
  def post_date; end
  def post_slug(other); end
  def slug; end
end
class Jekyll::Tags::PostUrl < Liquid::Tag
  def initialize(tag_name, post, tokens); end
  def render(context); end
  include Jekyll::Filters::URLFilters
end
module Jekyll::Utils
  def add_permalink_suffix(template, permalink_style); end
  def deep_merge_hashes!(target, overwrite); end
  def deep_merge_hashes(master_hash, other_hash); end
  def duplicable?(obj); end
  def duplicate_frozen_values(target); end
  def has_liquid_construct?(content); end
  def has_yaml_header?(file); end
  def mergable?(value); end
  def merge_default_proc(target, overwrite); end
  def merge_values(target, overwrite); end
  def merged_file_read_opts(site, opts); end
  def parse_date(input, msg = nil); end
  def pluralized_array_from_hash(hash, singular_key, plural_key); end
  def replace_character_sequence_with_hyphen(string, mode: nil); end
  def safe_glob(dir, patterns, flags = nil); end
  def slugify(string, mode: nil, cased: nil); end
  def stringify_hash_keys(hash); end
  def symbolize_hash_keys(hash); end
  def titleize_slug(slug); end
  def transform_keys(hash); end
  def value_from_plural_key(hash, key); end
  def value_from_singular_key(hash, key); end
  extend Jekyll::Utils
end
module Jekyll::Convertible
  def [](property); end
  def asset_file?; end
  def coffeescript_file?; end
  def converters; end
  def defaults; end
  def do_layout(payload, layouts); end
  def hook_owner; end
  def invalid_layout?(layout); end
  def no_layout?; end
  def output_ext; end
  def place_in_layout?; end
  def published?; end
  def read_yaml(base, name, opts = nil); end
  def render_all_layouts(layouts, payload, info); end
  def render_liquid(content, payload, info, path); end
  def render_with_liquid?; end
  def renderer; end
  def sass_file?; end
  def to_liquid(attrs = nil); end
  def to_s; end
  def transform; end
  def type; end
  def validate_data!(filename); end
  def validate_permalink!(filename); end
  def write(dest); end
end
class Jekyll::Page
  def basename; end
  def basename=(arg0); end
  def content; end
  def content=(arg0); end
  def data; end
  def data=(arg0); end
  def destination(dest); end
  def dir; end
  def dir=(arg0); end
  def excerpt; end
  def excerpt_separator; end
  def ext; end
  def ext=(arg0); end
  def extname; end
  def generate_excerpt; end
  def generate_excerpt?; end
  def html?; end
  def index?; end
  def initialize(site, base, dir, name); end
  def inspect; end
  def name; end
  def name=(arg0); end
  def output; end
  def output=(arg0); end
  def pager; end
  def pager=(arg0); end
  def path; end
  def permalink; end
  def process(name); end
  def relative_path; end
  def render(layouts, site_payload); end
  def site; end
  def site=(arg0); end
  def template; end
  def trigger_hooks(hook_name, *args); end
  def url; end
  def url_dir; end
  def url_placeholders; end
  def write?; end
  include Jekyll::Convertible
end
module Jekyll::Hooks
  def self.insert_hook(owner, event, priority, &block); end
  def self.priority_value(priority); end
  def self.register(owners, event, priority: nil, &block); end
  def self.register_one(owner, event, priority, &block); end
  def self.trigger(owner, event, *args); end
end
class Jekyll::Hooks::NotAvailable < RuntimeError
end
class Jekyll::Hooks::Uncallable < RuntimeError
end
class Object < BasicObject
  def require_all(path); end
end
module Jekyll::Errors
end
class Jekyll::Errors::FatalException < RuntimeError
end
class Jekyll::Errors::InvalidThemeName < Jekyll::Errors::FatalException
end
class Jekyll::Errors::DropMutationException < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidPermalinkError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidYAMLFrontMatterError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::MissingDependencyException < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidDateError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidPostNameError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::PostURLError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidURLError < Jekyll::Errors::FatalException
end
class Jekyll::Errors::InvalidConfigurationError < Jekyll::Errors::FatalException
end
class Jekyll::StaticFile
  def basename; end
  def cleaned_relative_path; end
  def copy_file(dest_path); end
  def data; end
  def defaults; end
  def destination(dest); end
  def destination_rel_dir; end
  def extname; end
  def initialize(site, base, dir, name, collection = nil); end
  def inspect; end
  def modified?; end
  def modified_time; end
  def mtime; end
  def name; end
  def path; end
  def placeholders; end
  def relative_path; end
  def self.mtimes; end
  def self.reset_cache; end
  def to_json(*args, ****, &block); end
  def to_liquid; end
  def type; end
  def url; end
  def write(dest); end
  def write?; end
  extend Forwardable
end