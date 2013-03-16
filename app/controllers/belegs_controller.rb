class BelegsController < ApplicationController

  def show
    @beleg = Beleg.new
    @beleg.summeUebernachtung = Money.new(0)
    @beleg.summeVerpflegung = Money.new(0)
    @beleg.summeNebenkosten = Money.new(0)
    @beleg.summeGesamt = Money.new(0)
    @beleg.summeReisekosten = Money.new(0)

    @reise = Reise.find(params[:id])

    if @reise.privatPkw == true
      @beleg.summeKilometergeld = Money.new(@reise.kilometer * 100 * 0.3)
    else
      @beleg.summeKilometergeld = Money.new(0)
    end

    @belegpositionen = Array.new

    for i in 0..((@reise.abreise - @reise.ankunft) / 1.day)
      @belegposition = Belegposition.new

      @belegposition.uebernachtung = Money.new(0)
      @belegposition.verpflegung = Money.new(0)
      @belegposition.nebenkosten = Money.new(0)

      @belegposition.datum = @reise.ankunft + i.days

      if Date.new(@belegposition.datum.year, @belegposition.datum.month, @belegposition.datum.day) == Date.new(@reise.abreise.year, @reise.abreise.month, @reise.abreise.day)
        @belegposition.stunden = @reise.abreise.hour
        @belegposition.uebernachtung = 0
      else
        if Date.new(@belegposition.datum.year, @belegposition.datum.month, @belegposition.datum.day) == Date.new(@reise.ankunft.year, @reise.ankunft.month, @reise.ankunft.day)
          @belegposition.stunden = 24 - @reise.ankunft.hour
        else
          @belegposition.stunden = 24;
        end

        if @reise.uebernachtungInklFruehstueck == true
          if @reise.uebernachtungskosten < Money.new(700)
            @belegposition.uebernachtung = @reise.uebernachtungskosten
          else
            @belegposition.uebernachtung =  Money.new(@reise.uebernachtungskosten * 100) - Money.new(700)
          end
        else
          @belegposition.uebernachtung = @reise.uebernachtungskosten
        end
      end

      @belegposition.nebenkosten = Money.new(0)

      @beleg.summeUebernachtung += Money.new(@belegposition.uebernachtung * 100)
      @beleg.summeVerpflegung += Money.new(@belegposition.verpflegung * 100)
      @beleg.summeNebenkosten += Money.new(@belegposition.nebenkosten * 100)

      @belegposition.summe = Money.new((@belegposition.uebernachtung + @belegposition.verpflegung + @belegposition.nebenkosten) * 100)

      @beleg.summeGesamt = Money.new((@beleg.summeUebernachtung + @beleg.summeVerpflegung + @beleg.summeNebenkosten) * 100)

      @belegpositionen << @belegposition
    end

      @beleg.summeReisekosten = Money.new((@beleg.summeGesamt + @beleg.summeKilometergeld + @reise.betrag) * 100)

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf           => @reise.id.to_s,
               #:template      => 'belegs/show.pdf.haml',
               :layout        => 'pdf',
               #:footer        => { :right => '[page] von [topage]' },
               #:save_to_file => Rails.root.join('pdfs', "#{@user.name}.pdf")
               :show_as_html => params[:debug].present?
      end
    end
  end

  ## GET /belegs/1
  ## GET /belegs/1.json
  #def show
  #  @beleg = Beleg.find(params[:id])

  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @beleg }
  #  end
  #end

end
