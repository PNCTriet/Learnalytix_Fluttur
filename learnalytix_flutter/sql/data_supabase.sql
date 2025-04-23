-- DROP all dependent tables first
DROP TABLE IF EXISTS multiple_choice_options CASCADE;
DROP TABLE IF EXISTS flashcards CASCADE;

-- DROP ENUM types
DROP TYPE IF EXISTS question_type;
DROP TYPE IF EXISTS difficulty_level;
DROP TYPE IF EXISTS study_mode;

-- Recreate ENUM types
CREATE TYPE question_type AS ENUM ('multiple_choice', 'open_ended', 'fill_in_blank');
CREATE TYPE difficulty_level AS ENUM ('easy', 'medium', 'hard');
CREATE TYPE study_mode AS ENUM ('learn', 'review', 'practice');

-- Create flashcards table
CREATE TABLE flashcards (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    question TEXT NOT NULL,
    type question_type NOT NULL,
    difficulty difficulty_level NOT NULL,
    category TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    last_reviewed TIMESTAMP WITH TIME ZONE,
    next_review TIMESTAMP WITH TIME ZONE,
    time_limit INTEGER,
    study_mode study_mode NOT NULL DEFAULT 'learn',
    correct_answer TEXT,
    explanation TEXT,
    tags TEXT[]
);

-- Create multiple choice options table
CREATE TABLE multiple_choice_options (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    flashcard_id UUID REFERENCES flashcards(id) ON DELETE CASCADE,
    text TEXT NOT NULL,
    is_correct BOOLEAN NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);

-- Enable Row Level Security
ALTER TABLE flashcards ENABLE ROW LEVEL SECURITY;
ALTER TABLE multiple_choice_options ENABLE ROW LEVEL SECURITY;

-- Policies for flashcards
CREATE POLICY "Users can view their own flashcards"
    ON flashcards FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own flashcards"
    ON flashcards FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own flashcards"
    ON flashcards FOR UPDATE
    USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own flashcards"
    ON flashcards FOR DELETE
    USING (auth.uid() = user_id);

-- Policies for multiple choice options
CREATE POLICY "Users can view their own multiple choice options"
    ON multiple_choice_options FOR SELECT
    USING (
        EXISTS (
            SELECT 1 FROM flashcards
            WHERE flashcards.id = multiple_choice_options.flashcard_id
            AND flashcards.user_id = auth.uid()
        )
    );

CREATE POLICY "Users can insert their own multiple choice options"
    ON multiple_choice_options FOR INSERT
    WITH CHECK (
        EXISTS (
            SELECT 1 FROM flashcards
            WHERE flashcards.id = multiple_choice_options.flashcard_id
            AND flashcards.user_id = auth.uid()
        )
    );

CREATE POLICY "Users can update their own multiple choice options"
    ON multiple_choice_options FOR UPDATE
    USING (
        EXISTS (
            SELECT 1 FROM flashcards
            WHERE flashcards.id = multiple_choice_options.flashcard_id
            AND flashcards.user_id = auth.uid()
        )
    );

CREATE POLICY "Users can delete their own multiple choice options"
    ON multiple_choice_options FOR DELETE
    USING (
        EXISTS (
            SELECT 1 FROM flashcards
            WHERE flashcards.id = multiple_choice_options.flashcard_id
            AND flashcards.user_id = auth.uid()
        )
    );

-- Indexes
CREATE INDEX idx_flashcards_user_id ON flashcards(user_id);
CREATE INDEX idx_flashcards_next_review ON flashcards(next_review);
CREATE INDEX idx_multiple_choice_options_flashcard_id ON multiple_choice_options(flashcard_id);

-- Trigger to update `updated_at`
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = TIMEZONE('utc'::text, NOW());
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER update_flashcards_updated_at
BEFORE UPDATE ON flashcards
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

-- Comments for documentation
COMMENT ON TABLE flashcards IS 'Stores flashcard information including questions, answers, and review status';
COMMENT ON TABLE multiple_choice_options IS 'Stores options for multiple choice questions';
COMMENT ON COLUMN flashcards.time_limit IS 'Time limit in seconds for answering the question';
COMMENT ON COLUMN flashcards.study_mode IS 'Current study mode of the flashcard (learn, review, practice)';
COMMENT ON COLUMN flashcards.tags IS 'Array of tags for categorizing and filtering flashcards';
