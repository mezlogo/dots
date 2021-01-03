plugins { id("org.jetbrains.kotlin.jvm") version "1.4.0" }

repositories { jcenter() }

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")
}

val jar by tasks.getting(org.gradle.jvm.tasks.Jar::class) {
    manifest {
        attributes["Main-Class"] = "mezlogo.basic_piocli_kts.MainKt"
    }
    from(configurations["runtimeClasspath"].map { if (it.isDirectory) it else zipTree(it) })
}
