require "diary"
require "diary_entry"

RSpec.describe "diary integration test" do

  it "adds an entry to the diary" do

    new_diary = Diary.new
    new_entry = DiaryEntry.new("Best Day", "Today is awesome")
    new_diary.add(new_entry)

    expect(new_diary.all).to eq [new_entry]

  end

  it "adds multiple entries to the diary" do

    new_diary = Diary.new
    new_entry_1 = DiaryEntry.new("Best Day", "Today is awesome")
    new_entry_2 = DiaryEntry.new("Worst Day", "Today is Hell")
    new_diary.add(new_entry_1)
    new_diary.add(new_entry_2)

    expect(new_diary.all).to eq [new_entry_1, new_entry_2]

  end

  it "counts words in the contents of an entry" do # <- unit test!
    new_entry = DiaryEntry.new("Best Day", "Today is awesome")

    expect(new_entry.count_words).to eq 3

  end

  it "counts words in the contents of all entries" do

    new_diary = Diary.new
    new_entry_1 = DiaryEntry.new("Best Day", "Today is awesome")
    new_entry_2 = DiaryEntry.new("Tuesday", "Washed the stray cat")
    new_diary.add(new_entry_1)
    new_diary.add(new_entry_2)

    expect(new_diary.count_words).to eq 7

  end

  it "gives reading time for given text" do # <- unit test!
    new_entry = DiaryEntry.new("Best Day", "Today is really awesome for sure")

    expect(new_entry.reading_time(2)).to eq 3

  end

  it "gives reading time for all entries' texts" do 

    new_diary = Diary.new
    new_entry_1 = DiaryEntry.new("Best Day", "Today is really awesome for sure")
    new_entry_2 = DiaryEntry.new("Tuesday", "Washed the stray cat")
    new_diary.add(new_entry_1)
    new_diary.add(new_entry_2)

    expect(new_diary.reading_time(2)).to eq 5

  end

  it "chunk of text read in given time" do # <- unit test!
    new_entry = DiaryEntry.new("Best Day", "Today is really awesome for sure I really do think")

    expect(new_entry.reading_chunk(2, 3)).to eq "Today is really awesome for sure"

  end

  it "chunk of text read in given time if ran consequitvely" do # <- unit test!
    new_entry = DiaryEntry.new("Best Day", "Today is really awesome for sure I really do think")
    new_entry.reading_chunk(2, 3)

    expect(new_entry.reading_chunk(2, 3)).to eq "I really do think"

  end

  it "chunk of text read in given time if ran consequitvely after sentence done" do # <- unit test!
    new_entry = DiaryEntry.new("Best Day", "Today is really awesome for sure I really do think")
    new_entry.reading_chunk(2, 3)
    new_entry.reading_chunk(2, 3)

    expect(new_entry.reading_chunk(2, 3)).to eq "Today is really awesome for sure"

  end

  it "takes a look at diary entries and selects the entry
  that is closest to the total length the user could read in the allotted time" do

    new_diary = Diary.new
    new_entry_1 = DiaryEntry.new("Best Day", "Today is really awesome")
    new_entry_2 = DiaryEntry.new("Tuesday", "Washed the stray cat hated it")
    new_entry_3 = DiaryEntry.new("Wednesday", "I did not think this was even remotely possible")
    new_diary.add(new_entry_1)
    new_diary.add(new_entry_2)
    new_diary.add(new_entry_3)

    expect(new_diary.find_best_entry_for_reading_time(2,3)).to eq "Washed the stray cat hated it"

  end

end