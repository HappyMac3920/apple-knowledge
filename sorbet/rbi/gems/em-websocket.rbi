# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/em-websocket/all/em-websocket.rbi
#
# em-websocket-0.5.3

module EventMachine
end
module EventMachine::WebSocket
  def self.close_timeout; end
  def self.close_timeout=(arg0); end
  def self.max_frame_size; end
  def self.max_frame_size=(arg0); end
  def self.run(options); end
  def self.start(options, &blk); end
  def self.stop; end
end
module EventMachine::WebSocket::Debugger
  def debug(*data); end
end
class EventMachine::WebSocket::WebSocketError < RuntimeError
end
class EventMachine::WebSocket::HandshakeError < EventMachine::WebSocket::WebSocketError
end
class EventMachine::WebSocket::WSProtocolError < EventMachine::WebSocket::WebSocketError
  def code; end
end
class EventMachine::WebSocket::InvalidDataError < EventMachine::WebSocket::WSProtocolError
  def code; end
end
class EventMachine::WebSocket::WSMessageTooBigError < EventMachine::WebSocket::WSProtocolError
  def code; end
end
class EventMachine::WebSocket::Connection < EventMachine::Connection
  def abort(reason); end
  def acceptable_close_code?(code); end
  def close(code = nil, body = nil); end
  def close_timeout; end
  def close_websocket(code = nil, body = nil); end
  def close_websocket_private(code, body); end
  def dispatch(data); end
  def initialize(options); end
  def max_frame_size; end
  def max_frame_size=(arg0); end
  def onbinary(&blk); end
  def onclose(&blk); end
  def onerror(&blk); end
  def onmessage(&blk); end
  def onopen(&blk); end
  def onping(&blk); end
  def onpong(&blk); end
  def ping(body = nil); end
  def pingable?; end
  def pong(body = nil); end
  def post_init; end
  def receive_data(data); end
  def remote_ip; end
  def send(data); end
  def send_binary(data); end
  def send_data(data); end
  def send_flash_cross_domain_file; end
  def send_healthcheck_response; end
  def send_text(data); end
  def state; end
  def supports_close_codes?; end
  def trigger_on_binary(msg); end
  def trigger_on_close(event = nil); end
  def trigger_on_error(reason); end
  def trigger_on_message(msg); end
  def trigger_on_open(handshake); end
  def trigger_on_ping(data); end
  def trigger_on_pong(data); end
  def unbind; end
  include EventMachine::WebSocket::Debugger
end
class EventMachine::WebSocket::Handshake
  def headers; end
  def headers_downcased; end
  def initialize(secure); end
  def origin; end
  def parser; end
  def path; end
  def process(headers, remains); end
  def protocol_version; end
  def query; end
  def query_string; end
  def receive_data(data); end
  def secure?; end
  include EventMachine::Deferrable
end
module EventMachine::WebSocket::Handshake75
  def self.handshake(headers, path, secure); end
  def self.validate_protocol!(protocol); end
end
module EventMachine::WebSocket::Handshake76
  def self.handshake(headers, path, secure); end
  def self.numbers_over_spaces(string); end
  def self.solve_challenge(first, second, third); end
  def self.validate_protocol!(protocol); end
end
module EventMachine::WebSocket::Handshake04
  def self.handshake(headers, _, __); end
  def self.validate_protocol!(protocol); end
end
module EventMachine::WebSocket::Framing76
  def initialize_framing; end
  def process_data; end
  def send_text_frame(data); end
end
module EventMachine::WebSocket::Framing03
  def data_frame?(type); end
  def fin; end
  def initialize_framing; end
  def opcode_to_type(opcode); end
  def process_data; end
  def send_frame(frame_type, application_data); end
  def send_text_frame(data); end
  def type_to_opcode(frame_type); end
end
module EventMachine::WebSocket::Framing04
  def fin; end
  include EventMachine::WebSocket::Framing03
end
module EventMachine::WebSocket::Framing05
  def data_frame?(type); end
  def initialize_framing; end
  def opcode_to_type(opcode); end
  def process_data; end
  def send_frame(frame_type, application_data); end
  def send_text_frame(data); end
  def type_to_opcode(frame_type); end
end
module EventMachine::WebSocket::Framing07
  def data_frame?(type); end
  def initialize_framing; end
  def opcode_to_type(opcode); end
  def process_data; end
  def send_frame(frame_type, application_data); end
  def send_text_frame(data); end
  def type_to_opcode(frame_type); end
end
module EventMachine::WebSocket::Close75
  def close_websocket(code, body); end
  def supports_close_codes?; end
end
module EventMachine::WebSocket::Close03
  def close_websocket(code, body); end
  def supports_close_codes?; end
end
module EventMachine::WebSocket::Close05
  def close_websocket(code, body); end
  def supports_close_codes?; end
end
module EventMachine::WebSocket::Close06
  def close_websocket(code, body); end
  def supports_close_codes?; end
end
class EventMachine::WebSocket::MaskedString < String
  def getbyte(index); end
  def getbytes(start_index, count); end
  def read_mask; end
  def unset_mask; end
end
module EventMachine::WebSocket::MessageProcessor03
  def message(message_type, extension_data, application_data); end
  def pingable?; end
end
module EventMachine::WebSocket::MessageProcessor06
  def message(message_type, extension_data, application_data); end
  def pingable?; end
end
class EventMachine::WebSocket::Handler
  def close_websocket(code, body); end
  def fail_websocket(e); end
  def initialize(connection, debug = nil); end
  def ping; end
  def pingable?; end
  def receive_data(data); end
  def request; end
  def self.klass_factory(version); end
  def start_close_timeout; end
  def state; end
  def unbind; end
  include EventMachine::WebSocket::Debugger
end
class EventMachine::WebSocket::Handler75 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close75
  include EventMachine::WebSocket::Framing76
  include EventMachine::WebSocket::Handshake75
end
class EventMachine::WebSocket::Handler76 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close75
  include EventMachine::WebSocket::Framing76
  include EventMachine::WebSocket::Handshake76
end
class EventMachine::WebSocket::Handler03 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close03
  include EventMachine::WebSocket::Framing03
  include EventMachine::WebSocket::MessageProcessor03
end
class EventMachine::WebSocket::Handler05 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close05
  include EventMachine::WebSocket::Framing05
  include EventMachine::WebSocket::MessageProcessor03
end
class EventMachine::WebSocket::Handler06 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close06
  include EventMachine::WebSocket::Framing05
  include EventMachine::WebSocket::MessageProcessor06
end
class EventMachine::WebSocket::Handler07 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close06
  include EventMachine::WebSocket::Framing07
  include EventMachine::WebSocket::MessageProcessor06
end
class EventMachine::WebSocket::Handler08 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close06
  include EventMachine::WebSocket::Framing07
  include EventMachine::WebSocket::MessageProcessor06
end
class EventMachine::WebSocket::Handler13 < EventMachine::WebSocket::Handler
  include EventMachine::WebSocket::Close06
  include EventMachine::WebSocket::Framing07
  include EventMachine::WebSocket::MessageProcessor06
end