//
//  Created by Zsombor Szabo on 10/07/2020.
//  
//

import Foundation

extension CodableRegion.NextStep {

    static let infoAppIsActive: Self = .init(
        type: .info,
        description: "The app is active. You can now receive exposure notifications from others you were near who later report themselves as positive for COVID-19.",
        url: nil
    )

    static let infoKeepAppInstalled: Self = .init(
        type: .info,
        description: "Keep the app installed until the pandemic is over so that you can continue to help reduce the spread in your communities.",
        url: nil
    )

    static let shareTheApp: Self = .init(
        type: .share,
        description: "Share the app to improve your exposure notification accuracy.",
        url: "https://covidwatch.org"
    )

    static let nextStepsVerificationCodeDefault: Self = .init(
        type: .website,
        description: "For others, the app is currently under development to support other states and regions. Visit the Covid Watch website for more information.",
        url: "https://covidwatch.org"
    )

}

extension CodableRegion {

    static let all: [CodableRegion] = [
        `default`,
        universityOfArizona,
        arizonaStateUniversity,
        northernArizonaUniversity
    ]

    static let `default`: Self = .init(
        id: .arizonaState,
        name: "State of Arizona",
        isDisabled: true,
        nextStepsNoSignificantExposure: [
            .shareTheApp
        ],
        nextStepsSignificantExposure: [
            .shareTheApp
        ],
        nextStepsVerifiedPositive: [
            .shareTheApp
        ],
        nextStepsDisabled: [
            .init(
                type: .website,
                description: "Visit the Arizona Department of Health Services website to share your thoughts on this app.",
                url: "https://www.azdhs.gov"
            ),
            .shareTheApp
        ],
        nextStepsVerificationCode: [
            .nextStepsVerificationCodeDefault
        ]
    )

    static let universityOfArizona: Self = .init(
        id: .universityOfArizona,
        name: "University of Arizona",
        nextStepsNoSignificantExposure: [
            .init(
                type: .website,
                description: "Monitor COVID-19 symptoms.",
                url: "https://covid19.arizona.edu/prevention-health/covid-19-symptoms?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_covid19_symptoms_no_exposure"
            ),
            .init(
                type: .phone,
                description: "If you have COVID-19 symptoms, call Campus Health at (520) 621-9202.",
                url: "tel:1-520-621-9202"
            ),
            .init(
                type: .website,
                description: "Learn how to protect yourself and others.",
                url: "http://covid19.arizona.edu/prevention-health/protect-yourself-others?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_protect_yourself"
            ),
            .shareTheApp
        ],
        nextStepsSignificantExposure: [
            .init(
                type: .website,
                description: "Stay at home until DAYS_FROM_EXPOSURE{LATEST,14,FALSE}.",
                url:"http://covid19.arizona.edu/self-quarantine?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_self_quarantine"
            ),
            .init(
                type: .phone,
                description: "Call Campus Health at (520) 621-9202 and schedule a COVID-19 test for DAYS_FROM_EXPOSURE{EARLIEST,7,TRUE}.",
                url: "tel:1-520-621-9202"
            ),
            .init(
                type: .website,
                description: "Monitor COVID-19 symptoms and get tested ASAP if symptoms appear.",
                url: "https://covid19.arizona.edu/prevention-health/covid-19-symptoms?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_covid19_symptoms"
            ),
            .init(
                type: .website,
                description: "Register with University of Arizona's Contact Tracing team.",
                url: "https://covid19.arizona.edu/app-redcap?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_contact_tracing"
            ),
            .shareTheApp
        ],
        nextStepsVerifiedPositive: [
            .init(
                type: .phone,
                description: "Follow up with Campus Health at (520) 621-9202 and your healthcare provider for more instructions.",
                url: "tel:1-520-621-9202"
            ),
            .init(
                type: .website,
                description: "Register with University of Arizona's Contact Tracing team.",
                url: "https://health.arizona.edu/SAFER?utm_source=covid_watch_app&utm_medium=referral&utm_campaign=covid_watch_case_management"
            ),
            .shareTheApp
        ],
        nextStepsVerificationCode: [
            .init(
                type: .phone,
                description: "If you are a student or staff member at University of Arizona, please call Campus Health Services at 520-621-9202 to obtain one. If you were tested elsewhere, please have your results ready.",
                url: "tel:1-520-621-9202"
            ),
            .nextStepsVerificationCodeDefault
        ]
    )

    static let arizonaStateUniversity: Self = .init(
        id: .arizonaStateUniversity,
        name: "Arizona State University",
        nextStepsNoSignificantExposure: [
            .shareTheApp
        ],
        nextStepsSignificantExposure: [
            .shareTheApp
        ],
        nextStepsVerifiedPositive: [
            .shareTheApp
        ],
        nextStepsVerificationCode: [
            .nextStepsVerificationCodeDefault
        ]
    )

    static let northernArizonaUniversity: Self = .init(
        id: .northernArizonaUniversity,
        name: "Northern Arizona University",
        nextStepsNoSignificantExposure: [
            .init(
                type: .website,
                description: "Learn how to protect myself and others.",
                url: "https://in.nau.edu/campus-health-services/covid-19/"
            ),
            .init(
                type: .website,
                description: "Monitor COVID-19 symptoms.",
                url: "https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html"
            ),
            .init(
                type: .phone,
                description: "If you have COVID-19 symptoms, call Campus Health at (928) 523-2131.",
                url: "tel:1-928-523-2131"
            ),
            .shareTheApp
        ],
        nextStepsSignificantExposure: [
            .init(
                type: .website,
                description: "Please stay at home and follow the self-isolation guidelines.",
                url:"https://in.nau.edu/wp-content/uploads/sites/202/COVID-CHS-selfquarantine-7-16-20.pdf"
            ),
            .init(
                type: .website,
                description: "Monitor COVID-19 symptoms and get tested ASAP if symptoms appear.",
                url:"https://in.nau.edu/campus-health-services/covid-testing/"
            ),
            .init(
                type: .phone,
                description: "Call Campus Health at (928) 523-2131 or your health care provider for guidance.",
                url: "tel:1-928-523-2131"
            ),
            .shareTheApp
        ],
        nextStepsVerifiedPositive: [
            .init(
                type: .website,
                description: "Please stay at home and follow the self-isolation guidelines.",
                url:"https://in.nau.edu/wp-content/uploads/sites/202/COVID-CHS-selfisolation-7-16-201.pdf"
            ),
            .init(
                type: .phone,
                description: "Follow up with Campus Health at (928) 523-2131 or your healthcare provider for more instructions.",
                url: "tel:1-928-523-2131"
            ),
            .init(
                type: .website,
                description: "Register with NAU's Exposure Tracing team.",
                url: "https://in.nau.edu/campus-health-services/exposure-tracing"
            ),
            .shareTheApp
        ],
        nextStepsVerificationCode: [
            .init(
                type: .phone,
                description: "If you are a student or staff at NAU, please call Campus Health Services at (928) 523-2131 to obtain one. If you were tested elsewhere, have a copy of your results ready. ",
                url: "tel:1-928-523-2131"
            ),
            .nextStepsVerificationCodeDefault
        ]
    )

}
