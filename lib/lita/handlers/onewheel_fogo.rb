module Lita
  module Handlers
    class OnewheelFogo < Handler
      route /fogo\s+\$*(\d+\.*\d*)/i, :fogo

      def fogo(response)
        request = response.matches[0][0]
        output = request.to_f / 30.0
        if output.to_i == output
          output = output.to_i
        else
          output = output.round(2)
        end

        response.reply "$#{request} equals (fogo)#{output}."
      end

      Lita.register_handler(self)
    end
  end
end
