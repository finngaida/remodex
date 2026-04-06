// FILE: SubscriptionService.swift
// Purpose: Legacy placeholder for removed in-app purchase support.
// Layer: Service
// Exports: SubscriptionService, SubscriptionPackageOption

import Foundation
import Observation

struct SubscriptionPackageOption: Identifiable, Hashable, Sendable {
    let id: String
    let title: String
    let subtitle: String?
    let priceDescription: String
}

@MainActor
@Observable
final class SubscriptionService {
    enum BootstrapState: Equatable, Sendable {
        case idle
        case ready
    }

    private(set) var bootstrapState: BootstrapState = .ready
    private(set) var hasProAccess = true
    private(set) var isPurchasing = false
    private(set) var isRestoring = false
    private(set) var lastErrorMessage: String?
    private(set) var packageOptions: [SubscriptionPackageOption] = []

    func bootstrap() async {
        bootstrapState = .ready
    }

    func refreshCustomerInfoSilently() async {
    }

    func purchase(_ option: SubscriptionPackageOption) async {
    }

    func restorePurchases() async {
    }
}
