class Layouts::Simple < Layouts::Base
  include do
    def body
      div do
        div :id => 'page' do
          div :class => 'main' do
            div :id => 'content' do
              render :partial => 'layouts/flash'
              content
            end
          end
        end
      end
    end
  end
end