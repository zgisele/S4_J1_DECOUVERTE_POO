class User

    attr\_accessor :email, :encrypted\_password

      @@user\_count = 0

      def initialize(email\_to\_save)

        @email = email\_to\_save

        @@user\_count = @@user\_count + 1

      end

      def change\_password(new\_password)

        @encrypted\_password = encrypt(new\_password)

      end

      def show\_itself

        puts self

      end

      def self.count

        return @@user\_count

      end

      private

        def encrypt(string\_to\_encrypt)

          return "##ENCRYPTED##"

        end

  end