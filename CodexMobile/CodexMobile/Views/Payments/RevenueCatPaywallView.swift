// FILE: RevenueCatPaywallView.swift
// Purpose: Legacy placeholder view shown after removing RevenueCat integration.
// Layer: View

import SwiftUI

struct RevenueCatPaywallView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "lock.slash")
                    .font(.system(size: 36, weight: .semibold))
                    .foregroundStyle(.secondary)

                Text("In-app purchases removed")
                    .font(AppFont.title3(weight: .semibold))

                Text("This build no longer includes RevenueCat or a hosted paywall flow.")
                    .font(AppFont.body())
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)

                SettingsButton("Close") {
                    dismiss()
                }
            }
            .padding(24)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
            .navigationTitle("Remodex Pro")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RevenueCatPaywallView()
}
