enum class Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY;

    fun name(): String {
        return when(this) {
            SUNDAY -> "Sunday"
            MONDAY -> "Monday"
            TUESDAY -> "Tuesday"
            WEDNESDAY -> "Wednesday"
            THURSDAY -> "Thursday"
            FRIDAY -> "Friday"
            SATURDAY -> "Saturday"
        }
    }

    fun shorthand(): String {
        return when(this) {
            SUNDAY -> "Sun"
            MONDAY -> "Mon"
            TUESDAY -> "Tue"
            WEDNESDAY -> "Wed"
            THURSDAY -> "Thu"
            FRIDAY -> "Fri"
            SATURDAY -> "Sat"
        }
    }
}