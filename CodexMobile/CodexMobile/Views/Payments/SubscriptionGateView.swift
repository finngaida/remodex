// FILE: SubscriptionGateView.swift
// Purpose: Legacy placeholder view kept until payment-specific Xcode references are removed.
// Layer: View

import SwiftUI

struct SubscriptionGateView: View {
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "checkmark.shield")
                .font(.system(size: 28, weight: .semibold))
                .foregroundStyle(.secondary)
            Text("All features available")
                .font(AppFont.headline(weight: .semibold))
            Text("RevenueCat has been removed from this build, so subscription gating is disabled.")
                .font(AppFont.body())
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(24)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    SubscriptionGateView()
}
