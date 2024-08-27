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
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const array0 = new Float32Array([0.75, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, -0.5, -0.5, 0.75, -0.5, -0.5, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, -0.75, 0.0, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.0, -1.0, 0.5, 0.0, -0.5, -0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 0.25, -0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -1.0, -0.5, 0.5, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, -0.75, -0.75, -1.0, -0.25, 0.0, 0.25, -1.0, -1.0, 0.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, -1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -0.25, 0.5, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array1 = new Float32Array([-0.25, -0.5, 0.0, 0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 0.75, 0.75, 0.75, 0.0, 0.0, -1.0, 0.25, -1.0, -1.0, 0.0, -1.0, -1.0, 0.5, -0.75, -0.25, 0.5, -0.5, -0.25, 0.75, 0.5, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, 0.25, -0.25, 1.0, -1.0, 0.0, 0.0, -0.25, 0.25, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, 0.75, 0.25, 0.0, 0.0, 0.75, 0.75, 0.75, -0.5, -1.0, -0.25, 0.25, 0.25, 0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, 1.0, 0.5, 0.25, -0.75, 0.0, ]);
    const array2 = new Float32Array([0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.5, 0.0, 1.0, 0.25, 1.0, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, 0.0, 0.0, -0.75, 0.75, 0.25, 0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -0.5, -0.5, 1.0, 1.0, 1.0, 0.0, -0.75, -0.5, 0.25, 0.5, -0.75, 0.0, -1.0, 0.5, 1.0, -0.5, -1.0, 0.0, -0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.0, 0.25, -0.75, -0.25, -0.75, 0.5, -0.5, 1.0, -0.75, 1.0, -1.0, -1.0, 1.0, 0.5, ]);
    device10.destroy();
    const array3 = new Float32Array([-0.75, 0.5, 0.25, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, -0.75, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 0.5, -0.25, -0.25, -0.25, 1.0, -0.75, 1.0, -0.25, 0.0, 0.0, -0.75, 0.5, -0.25, 0.0, 1.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, 0.25, -0.25, 0.5, 0.75, 0.0, 0.75, 1.0, -1.0, 0.25, 0.5, 0.75, 0.5, -0.75, 0.0, 0.0, -1.0, -0.75, 0.25, 0.0, -0.5, 0.75, 0.5, -1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, 0.75, 0.0, 0.0, -1.0, 0.75, -0.75, -0.5, 0.0, 0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, 0.25, 1.0, ]);
    
    
    
    
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    device60.destroy();
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query400.destroy()
    device40.destroy();
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device50.destroy();
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    
    
    
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    texture200.destroy();
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture700.destroy();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    
    device70.destroy();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([-1.0, 0.75, -0.25, 0.5, -0.25, -1.0, -0.75, -1.0, 0.25, -0.5, 1.0, 0.5, 1.0, -0.75, 0.5, -0.5, -1.0, 0.5, 0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 0.25, 0.25, 1.0, 0.25, -0.25, -1.0, 0.75, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, 0.5, -1.0, -0.5, -0.5, 0.0, -0.25, -0.25, -0.5, 0.5, 0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -1.0, 0.75, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, 0.75, -0.5, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, -0.25, 1.0, -0.25, -1.0, 0.0, -1.0, 0.0, 0.5, 0.75, 0.5, -1.0, 0.5, 0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.75, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, ]);
    
    
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    device100.destroy();
    
    
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    
    
    query902.destroy()
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    query905.destroy()
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    query900.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query906 = device90.createQuerySet({
        label: "query906",
        type: "occlusion",
        count: 32,
    });
    query902.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query904.destroy()
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device90.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    render_bundle_encoder600.popDebugGroup();
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    device120.destroy();
    const array5 = new Float32Array([0.75, 0.25, -0.75, 0.25, 1.0, 0.5, -0.75, 0.75, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, 0.25, -0.25, 1.0, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.25, 0.5, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, -1.0, -0.75, -1.0, 0.25, 1.0, -0.5, -0.5, -0.75, 0.0, -0.25, 0.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.25, 0.5, -0.25, -0.75, 0.5, -0.5, 0.0, 1.0, 1.0, 0.5, 0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, -0.5, 0.75, 0.75, -0.5, 0.25, 1.0, -0.25, 0.0, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.0, -0.75, -0.5, -0.5, -0.5, 0.75, 0.0, -0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.0, ]);
    
    device70.destroy();
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    device30.destroy();
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const array6 = new Float32Array([-0.25, 0.75, 0.5, 1.0, 1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.75, 1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 1.0, -0.75, 0.5, 1.0, 0.0, 0.5, -0.25, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, 0.75, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, 0.25, -0.5, 1.0, 0.25, -0.75, 1.0, -0.25, -1.0, -0.25, 1.0, 0.75, -1.0, -0.25, 0.0, 0.25, -0.75, -0.75, -0.25, 0.25, 0.0, -0.5, -1.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.75, -0.25, -0.5, 0.25, 0.0, 0.5, -0.75, 0.5, -0.75, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, -1.0, 0.25, -0.25, -0.25, 0.0, 0.75, ]);
    
    
    device90.queue.submit([]);
    query901.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const array7 = new Float32Array([-0.5, 0.0, -1.0, 0.5, 0.5, -0.5, -0.5, -0.75, 0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, 0.25, -0.5, -0.5, 0.25, 1.0, 0.0, 0.25, -0.5, 1.0, 1.0, -0.5, 0.75, 0.25, 0.25, 0.75, 0.25, -0.25, 0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, -0.25, -1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.75, 1.0, -0.25, 0.5, -1.0, 0.25, -0.75, -0.5, 0.75, 0.5, 0.5, 0.25, -1.0, -0.5, 0.75, 0.25, 0.25, 0.25, 0.5, 0.0, 0.75, -0.25, 1.0, 0.5, 0.0, 0.0, 0.25, -0.75, -0.75, -0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.25, 1.0, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, ]);
    
    device80.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    
    
    
    device140.destroy();
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array8 = new Float32Array([-0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 0.75, 0.0, 0.0, -1.0, 0.5, 0.25, 0.0, -0.75, 0.75, -0.5, -0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, -1.0, -0.25, 0.25, 0.0, 0.0, 1.0, -0.5, -0.75, 0.5, -0.5, -0.5, -0.5, -0.25, 0.75, 0.25, -0.5, 1.0, -0.75, 1.0, 0.0, 1.0, 0.5, 0.25, -0.5, -1.0, 1.0, 0.75, 0.75, 0.75, 0.0, -0.25, -1.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.25, 0.0, -0.5, -1.0, 0.75, -1.0, -1.0, 0.25, -0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.75, 0.75, 1.0, -0.75, -0.5, 0.5, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, ]);
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array9 = new Float32Array([0.25, -0.5, -1.0, 0.0, -1.0, 0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 1.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.5, -1.0, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.5, -0.75, -0.75, 0.5, 0.5, 0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 0.0, 0.75, 1.0, -0.5, -0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, -1.0, 1.0, -0.25, -1.0, 0.75, 0.5, 1.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.5, -0.75, -1.0, -0.25, 0.75, -0.75, 0.0, 0.75, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, -0.75, -1.0, -0.5, 0.0, -1.0, -0.5, 0.25, 0.5, -0.5, ]);
    const render_pipeline1300 = device130.createRenderPipeline({
        label: "render_pipeline1300",
        vertex: {
            module: shader_module1300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device140.queue.submit([]);
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder1300.setPipeline(render_pipeline1300);
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    query903.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    device50.destroy();
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
    render_bundle_encoder1300.insertDebugMarker("marker");
    device90.destroy();
    const render_pipeline1301 = device130.createRenderPipeline({
        label: "render_pipeline1301",
        vertex: {
            module: shader_module1301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline1302 = device130.createRenderPipeline({
        label: "render_pipeline1302",
        vertex: {
            module: shader_module1301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module1301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device150.queue.submit([]);
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device150.destroy();
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder1301.pushDebugGroup("group_marker");
    
    
    
    
    render_bundle_encoder1301.setPipeline(render_pipeline1302);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    device130.destroy();
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device90.destroy();
    query900.destroy()
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
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
    
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder702.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    
    const array10 = new Float32Array([-0.75, -0.5, -0.25, -0.75, 0.0, -0.75, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, -0.25, -1.0, -0.75, 1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 0.75, -0.5, -0.5, 0.5, -0.75, -0.75, 0.25, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.75, -1.0, 0.5, 0.25, 1.0, -0.25, 0.5, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, 0.5, 0.25, 0.0, 0.5, 0.75, -0.5, 0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.5, -0.25, 0.5, -1.0, -0.75, 0.5, -0.75, 0.75, 0.0, 0.0, -1.0, 1.0, 1.0, 0.0, 0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -0.25, -0.75, 0.75, 0.25, -0.25, ]);
    const array11 = new Float32Array([-0.75, 0.5, -0.5, -0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, 0.0, -0.25, 0.75, -1.0, -0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 1.0, -0.5, 1.0, -0.75, -0.25, 0.5, 0.5, 0.75, -0.5, 0.25, 0.75, 0.75, -0.5, -0.75, 0.75, 0.0, -0.5, 0.5, 0.5, -0.5, 1.0, 1.0, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, 0.75, -1.0, 1.0, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.75, 0.25, 0.5, -0.5, 0.25, 0.25, 1.0, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.25, -1.0, 1.0, 0.5, -1.0, -1.0, -0.25, 0.25, -1.0, 0.5, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    
    
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeTexture({ texture: texture1000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.destroy();
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder200.popDebugGroup();
    
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder1100.insertDebugMarker("marker");
    query200.destroy()
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device20.destroy();
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    query905.destroy()
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    device110.destroy();
    
    
    
    const query1402 = device140.createQuerySet({
        label: "query1402",
        type: "occlusion",
        count: 32,
    });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    query904.destroy()
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder1600.insertDebugMarker("marker");
    render_bundle_encoder1100.popDebugGroup();
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder1302.setPipeline(render_pipeline1302);
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    query901.destroy()
    query400.destroy()
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    device10.queue.submit([]);
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device170.destroy();
    
    
    
    
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    texture1000.destroy();
    
    device100.destroy();
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    render_bundle_encoder1800.insertDebugMarker("marker");
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
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
    device100.destroy();
    const render_bundle_encoder1801 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1801",
        colorFormats: ["bgra8unorm"]
    });
    device180.destroy();
    
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module503,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module503,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    render_bundle_encoder1800.pushDebugGroup("group_marker");
    
    
    device190.queue.submit([]);
}