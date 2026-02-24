notes = [7.5, 8.0, 6.5, 9.0, 5.5]

def analyze_notes(notes)
    average = (notes.sum / notes.size.to_f).round(2)
    max_note = notes.max
    min_note = notes.min
    if block_given?
        notes.each do |note|
            yield(note, average)
        end
    else
        puts "Average notes: #{average}"
        puts "Max Note: #{max_note}"
        puts "Min note #{min_note}"
    end
end

analyze_notes(notes) 