module FLV
  module IOUtils

    class << self

      def read__UI8(io_stream)
        io_stream.readbyte
      end
      
      def read__UI16(io_stream)
        (io_stream.readbyte << 8) + io_stream.readbyte
      end
      
      def read__UI24(io_stream)
        (io_stream.readbyte << 16) + (io_stream.readbyte << 8) + io_stream.readbyte
      end
      
      def read__UI32(io_stream)
        (io_stream.readbyte << 24) + (io_stream.readbyte << 16) + (io_stream.readbyte << 8) + io_stream.readbyte
      end
      
      def read__STRING(io_stream, length)
        string = io_stream.read length
        string.to_s
      end
      
      
      def write__UI8(io_stream, value)
        io_stream.write [value].pack('C')
      end
      
      def write__UI24(io_stream, value)
        io_stream.write [value >> 16].pack('c')
        io_stream.write [(value >> 8) & 0xff].pack('c')
        io_stream.write [value & 0xff].pack('c')
      end
      
      def write__UI32(io_stream, value)
        io_stream.write [value].pack('N')
      end
      
      def write__STRING(io_stream, string)
        io_stream.write string
      end

    end

  end
end