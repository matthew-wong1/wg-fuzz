export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    
    
    texture001.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    texture500.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.destroy();
    
    device20.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.destroy();
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    texture700.destroy();
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    texture701.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device90.destroy();
    
    device70.destroy();
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device110.destroy();
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    texture1200.destroy();
    
    
    
    
    device80.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device120.destroy();
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    
    
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    texture1000.destroy();
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1001.insertDebugMarker("marker");
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture1301.destroy();
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    device100.destroy();
    
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    texture1300.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1303 = device130.createTexture({
        label: "texture1303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    texture1303.destroy();
    texture1302.destroy();
    
    
    
    
    
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1300.insertDebugMarker("marker");
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device130.destroy();
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    texture1400.destroy();
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device190.destroy();
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    const bind_group_layout1501 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    
    
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout1502 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1502",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    device150.destroy();
    
    
    device140.destroy();
    
    const texture_view16001 = texture1600.createView({ label: "texture_view16001" });
    
    
    
    
    
    
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view16002 = texture1600.createView({ label: "texture_view16002" });
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const texture_view16003 = texture1600.createView({ label: "texture_view16003" });
    
    
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    
    device200.destroy();
    
    render_bundle_encoder1700.insertDebugMarker("marker");
    
    
    
    
    
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    texture1700.destroy();
    
    
    render_bundle_encoder1600.insertDebugMarker("marker");
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    
    
    
    const render_bundle_encoder1701 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1702 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1702",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder2200 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2200",
        colorFormats: ["bgra8unorm"]
    });
    device160.destroy();
    const texture1701 = device170.createTexture({
        label: "texture1701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view17010 = texture1701.createView({ label: "texture_view17010" });
    const bind_group_layout2300 = device230.createBindGroupLayout({ 
        label: "bind_group_layout2300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder1700.insertDebugMarker("marker");
    
    
    device170.destroy();
    
    
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const render_bundle_encoder2300 = device230.createRenderBundleEncoder({
        label: "render_bundle_encoder2300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder2300.pushDebugGroup("group_marker");
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder1801 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1800.insertDebugMarker("marker");
    
    
    
    const texture1802 = device180.createTexture({
        label: "texture1802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const texture2200 = device220.createTexture({
        label: "texture2200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    const texture2201 = device220.createTexture({
        label: "texture2201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    
    render_bundle_encoder1801.pushDebugGroup("group_marker");
    const bind_group_layout2200 = device220.createBindGroupLayout({ 
        label: "bind_group_layout2200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    render_bundle_encoder1800.insertDebugMarker("marker");
    
    
    const render_bundle_encoder2101 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture2300 = device230.createTexture({
        label: "texture2300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture2200.destroy();
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const texture2301 = device230.createTexture({
        label: "texture2301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device180.destroy();
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const render_bundle_encoder2102 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2102",
        colorFormats: ["bgra8unorm"]
    });
    device210.destroy();
    const texture_view22010 = texture2201.createView({ label: "texture_view22010" });
    texture2301.destroy();
    const texture_view22011 = texture2201.createView({ label: "texture_view22011" });
    
    texture2201.destroy();
    
    
    
    
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    device220.destroy();
    
    device230.destroy();
    
    
    
    
    
    
    const texture2400 = device240.createTexture({
        label: "texture2400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    
    
    
    const texture_view24000 = texture2400.createView({ label: "texture_view24000" });
}