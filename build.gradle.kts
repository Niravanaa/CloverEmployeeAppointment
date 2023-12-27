// Top-level build file where you can add configuration options common to all sub-projects/modules.
plugins {
    id("com.android.application") version "8.2.0" apply false
    id("org.jetbrains.kotlin.android") version "1.9.10" apply false
    id("io.github.gradle-semantic-release") version "1.8.0"
}

semanticRelease {
    githubToken = project.findProperty("github.token")?.toString() ?: ""
    releaseBranches = listOf("main", "develop") // Set branches for releasing
}
