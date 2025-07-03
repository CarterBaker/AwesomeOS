AwesomeOS

    🚧 WORK IN PROGRESS — Abandoned for Now, but Not Forgotten 🚧

AwesomeOS is (or was intended to be) a completely custom operating system built from the ground up. The original vision was ambitious: to create an OS purely in x86 assembly. However, after a solid week of exploring the low-level trenches, it's clear that assembly is a brutal beast — not ideal for rapid prototyping or sanity retention.

This repository contains the initial structure and groundwork for AwesomeOS, started as an educational experiment in OS development from scratch. The project has been paused indefinitely, but the spirit of AwesomeOS may live on in a more manageable form (read: written in C).
🚀 Vision (Original Goals)

    Bootable OS from scratch (no pre-made kernels)

    Handcrafted assembly code for maximum control

    Real-mode bootloader and protected-mode switch

    Minimal shell or text-based interface

    Deep understanding of how hardware and software interact at the lowest level

❌ Why It's Paused

    Learning assembly deeply enough to build an entire OS in one week was too unrealistic

    Assembly is incredibly verbose and unforgiving for quick iteration

    Time constraints and competing priorities made progress slow

    Lack of proper debugging tools for such low-level work within the given timeframe

💡 Future Plans

While this version of AwesomeOS has been shelved, the concept isn't dead:

    Reboot the project using C (and maybe some inline assembly)

    Use C for portability, readability, and quicker development

    Possibly target the Multiboot Specification and use GRUB for bootloading

    Modularize kernel features: memory management, file system, basic multitasking, etc.
    

🧠 Lessons Learned

    Assembly teaches you exactly what your system is doing — but at a high mental cost.

    OSDev is not beginner-friendly, and tooling/debugging at this level is punishing.

    C is likely the better entry point for aspiring kernel developers.

🙏 Thanks

To the OSDev wiki and the broader hobbyist community — you are the last line of sanity when boot sectors go wrong.
📜 License

MIT License. Use this for educational purposes, or as a reminder that even failed projects can teach you something valuable.