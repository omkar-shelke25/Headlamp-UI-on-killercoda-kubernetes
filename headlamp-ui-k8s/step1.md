# 🔑 Access Headlamp UI

Get your login token to access the dashboard securely:

```bash
cat /root/headlamp-token; echo
```

---

## 🌐 Accessing the Headlamp Dashboard

1. Click the **Traffic/Ports** button 🔗 at the top of the Killercoda environment.
2. Enter port **30080** and click **Access Port**.
3. Copy the token you retrieved above.
4. Paste it into the Headlamp login screen.

✅ You now have full access to manage, explore, and monitor Kubernetes resources visually using the **Headlamp UI**.



💡 **Tip:**
> Before logging in, make sure all Headlamp components are running in the namespace:
> kubectl get all -n headlamp
> All pods should show a **Running** status before you access the dashboard.
