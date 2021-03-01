// To parse this JSON data, do
//
//     final HighProfiles = HighProfilesFromMap(jsonString);

import 'dart:convert';

class HighProfiles {
    HighProfiles({
        this.highProfiles,
    });

    final List<HighProfile> highProfiles;

    factory HighProfiles.fromJson(String str) => HighProfiles.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HighProfiles.fromMap(Map<String, dynamic> json) => HighProfiles(
        highProfiles: List<HighProfile>.from(json["high_profiles"].map((x) => HighProfile.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "high_profiles": List<dynamic>.from(highProfiles.map((x) => x.toMap())),
    };
}

class HighProfile {
    HighProfile({
        this.profileId,
        this.profileName,
        this.firstElements,
        this.otherElements,
        this.genericFeedback,
        this.contexts,
    });

    final String profileId;
    final String profileName;
    final List<String> firstElements;
    final List<String> otherElements;
    final String genericFeedback;
    final List<Context> contexts;

    factory HighProfile.fromJson(String str) => HighProfile.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HighProfile.fromMap(Map<String, dynamic> json) => HighProfile(
        profileId: json["profile_id"],
        profileName: json["profile_name"],
        firstElements: List<String>.from(json["first_elements"].map((x) => x)),
        otherElements: List<String>.from(json["other_elements"].map((x) => x)),
        genericFeedback: json["generic_feedback"],
        contexts: List<Context>.from(json["contexts"].map((x) => Context.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "profile_id": profileId,
        "profile_name": profileName,
        "first_elements": List<dynamic>.from(firstElements.map((x) => x)),
        "other_elements": List<dynamic>.from(otherElements.map((x) => x)),
        "generic_feedback": genericFeedback,
        "contexts": List<dynamic>.from(contexts.map((x) => x.toMap())),
    };
}

class Context {
    Context({
        this.contextName,
        this.contextId,
        this.feedback,
    });

    final String contextName;
    final String contextId;
    final String feedback;

    factory Context.fromJson(String str) => Context.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Context.fromMap(Map<String, dynamic> json) => Context(
        contextName: json["context_name"],
        contextId: json["context_id"],
        feedback: json["feedback"],
    );

    Map<String, dynamic> toMap() => {
        "context_name": contextName,
        "context_id": contextId,
        "feedback": feedback,
    };
}
