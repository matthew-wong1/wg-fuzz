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
    const array0 = new Float32Array([0.75, 0.5, -1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.0, 0.75, 1.0, 1.0, 1.0, 0.5, -0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, -0.5, 0.75, 1.0, 0.0, 0.0, 0.75, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.25, -1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.25, 0.25, 0.25, 0.5, 0.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 0.5, -1.0, 0.5, 0.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.0, 0.0, -0.5, 0.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 1.0, 0.25, 0.0, 1.0, -1.0, -1.0, -0.75, 0.75, 0.75, -0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.25, -1.0, 0.25, -0.5, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 0.5, 0.25, 0.5, 0.5, 0.75, 1.0, 0.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, 0.75, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -0.5, 0.0, 0.0, -1.0, 0.5, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.0, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, 1.0, 1.0, -0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([1.0, 0.75, 1.0, 0.5, 1.0, -0.5, 0.5, 1.0, -0.25, 1.0, 0.0, -0.25, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, 0.25, 1.0, 1.0, -1.0, -0.75, -0.5, 0.75, -0.25, 0.5, 0.0, 0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, -1.0, -0.75, 0.25, -0.25, 1.0, 0.0, 0.0, -0.5, 0.25, -0.5, -0.75, 0.25, 0.0, 0.25, 0.25, 0.5, -0.75, -0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.25, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -0.75, -1.0, 0.75, 0.75, -0.75, -0.25, -0.25, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 1.0, 0.5, 0.25, 0.25, 0.75, -0.25, -0.75, ]);
    const array3 = new Float32Array([-0.75, 0.25, -1.0, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.0, -0.75, -0.75, 1.0, 0.25, -0.5, 0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 0.25, 0.25, 1.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, 0.5, 1.0, 0.25, -1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, 0.5, 0.5, -1.0, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, 1.0, -1.0, -0.5, -0.25, -1.0, -1.0, -0.25, -1.0, 1.0, -1.0, -0.75, 1.0, 0.0, 1.0, 0.25, -0.75, 0.25, 1.0, 0.5, 0.5, 0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -0.75, 0.5, 1.0, 1.0, -0.25, 0.75, -0.5, -1.0, -1.0, 0.25, -0.25, ]);
    
    const array4 = new Float32Array([0.25, -0.25, -0.25, -0.5, 0.5, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, -0.25, -1.0, 0.75, -1.0, 0.75, 0.5, 0.0, 0.5, 0.25, 1.0, 0.5, 0.0, -1.0, 0.25, -0.5, 1.0, -0.5, -0.5, -0.25, -1.0, 0.25, -0.75, 0.75, 0.0, -0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.25, -0.75, -0.25, 0.75, -0.25, 1.0, -0.75, 0.75, -0.75, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, 0.25, -0.25, -1.0, 0.25, 0.25, -0.25, -0.75, 0.75, -0.75, -0.25, 0.5, -0.75, -0.75, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, 1.0, -1.0, 0.5, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, -0.25, -1.0, -0.5, -0.5, 0.0, -0.25, 0.5, -0.5, -0.75, 0.25, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    device30.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.destroy();
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device60.queue.submit([]);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.destroy();
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.5, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, -0.25, 0.0, 0.0, -1.0, -0.25, -0.75, -0.5, -0.75, -1.0, -0.25, -1.0, -0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.5, 0.75, 0.0, -0.75, -0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 1.0, -0.25, -1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 0.75, -0.75, 0.25, 1.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, 0.0, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.75, 0.25, 0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 0.75, 0.25, -1.0, -0.75, ]);
    device60.pushErrorScope("validation");
    query100.destroy()
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([0.5, -0.5, -0.25, -0.75, 0.5, -1.0, 0.75, -0.25, -1.0, 1.0, 0.75, -0.75, -0.5, -0.5, 0.25, -0.25, -1.0, 0.75, -0.25, -0.75, 0.25, -0.5, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.0, -1.0, -0.75, -0.5, -0.25, 1.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 0.0, 0.5, 0.75, 0.0, 0.5, 0.0, 0.25, 0.75, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, 0.25, -0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.25, -0.75, 0.5, 0.0, 0.25, 0.25, 0.25, 0.75, 1.0, 0.75, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, -0.5, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, 1.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.0, -0.25, 0.25, 0.5, ]);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query500.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array7 = new Float32Array([0.5, 0.0, -0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, -0.75, 1.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 0.0, 1.0, 0.25, 1.0, 0.25, -0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 0.0, 1.0, 1.0, -0.5, -1.0, -0.5, -0.5, -1.0, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -0.5, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 1.0, -0.25, 0.75, -0.25, 0.25, -1.0, -0.5, -0.25, -0.75, -1.0, 0.75, 1.0, 0.75, 0.75, 0.25, -0.75, 0.0, -0.25, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 0.0, -0.5, 1.0, 0.0, ]);
    device60.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.popDebugGroup();
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array8 = new Float32Array([0.5, -1.0, 0.25, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, 0.5, 0.75, 0.75, 0.0, 0.5, 0.25, 1.0, 0.5, 0.25, -0.25, 1.0, -0.75, 0.75, -0.75, -0.75, 0.5, -1.0, -0.5, 0.75, 0.75, 0.0, 0.75, -0.5, 0.0, 1.0, 0.75, 0.25, -0.25, 0.0, -1.0, -0.5, -1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 0.75, 0.25, 0.5, 0.25, -0.5, 0.5, 0.25, -0.5, 1.0, 0.25, 0.0, 0.5, 0.5, -0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, -0.75, -0.5, -0.75, 0.0, 0.5, 0.0, 1.0, 1.0, -1.0, 0.75, -0.5, 1.0, -1.0, 0.75, 1.0, -1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, 0.75, -0.25, 0.5, ]);
    
    device80.pushErrorScope("internal");
    
    device60.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
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
    
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.pushErrorScope("validation");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    device100.queue.writeTexture({ texture: texture1000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.destroy();
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    texture1000.destroy();
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device70.queue.writeTexture({ texture: texture700 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array9 = new Float32Array([0.5, 0.75, -0.25, -0.5, -0.75, 1.0, -0.25, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.25, 0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 1.0, -0.25, 0.5, -0.75, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, 1.0, 0.75, -0.5, 1.0, -1.0, 1.0, 1.0, 0.25, 0.5, -0.5, 0.25, -0.5, 0.5, -0.25, -0.5, -0.5, -0.75, -0.5, -1.0, -0.25, 0.0, 1.0, -0.5, -0.25, 0.0, -0.75, -0.25, -0.75, 1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.0, 0.5, 0.5, -0.5, 0.5, -0.75, -0.75, 1.0, 0.25, 0.25, -0.25, 0.25, -0.5, 0.5, -1.0, 0.5, 0.0, 0.25, 0.5, 0.25, 0.5, -1.0, -0.25, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, -0.5, 1.0, 0.5, -0.5, -0.25, 1.0, 0.25, ]);
    device40.pushErrorScope("validation");
    
    
    
    device80.queue.submit([]);
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device90.destroy();
    device120.pushErrorScope("validation");
    device70.destroy();
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
    
    
    
    
    
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    
    
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture100.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device120.queue.writeTexture({ texture: texture1200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    device120.queue.writeTexture({ texture: texture1200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    device120.queue.writeTexture({ texture: texture1200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device120.queue.writeTexture({ texture: texture1200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
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
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder801.popDebugGroup();
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const array10 = new Float32Array([0.0, -0.25, 1.0, 0.25, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.0, 1.0, -0.75, 0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.0, 0.0, -0.5, 0.0, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 1.0, 0.0, 0.75, -1.0, -1.0, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.0, 1.0, 0.25, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.5, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, 0.5, -0.25, 0.0, 0.25, -1.0, 1.0, 0.75, -1.0, -0.75, -0.5, 1.0, -0.25, -0.75, -0.5, -0.25, 1.0, 0.0, 1.0, 0.75, -0.75, 0.0, 0.0, 0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 1.0, 0.0, -0.25, -0.75, -1.0, 1.0, ]);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1201.destroy();
    device80.destroy();
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.0, 0.25, -0.75, 0.25, 0.5, 0.0, -1.0, 0.75, 0.5, -0.5, -0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 0.75, -0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 1.0, 1.0, 0.25, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.75, -0.25, -0.25, -0.75, -1.0, -0.25, -1.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, 0.5, 0.25, 0.75, -0.25, 0.0, 0.75, -0.25, 0.25, 0.75, 0.25, 0.0, 0.0, 0.0, 0.0, 1.0, -0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 0.75, -0.5, 0.5, -0.5, -1.0, 0.5, -1.0, 0.5, 0.25, 0.0, -0.25, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, 1.0, -0.75, 0.75, -0.75, 0.5, 0.5, 0.0, ]);
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device120.queue.writeTexture({ texture: texture1202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1201.destroy()
    device120.queue.writeTexture({ texture: texture1202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    device120.queue.writeTexture({ texture: texture1201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeTexture({ texture: texture800 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.queue.writeTexture({ texture: texture1202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1200.destroy();
    device120.queue.writeTexture({ texture: texture1202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1201.popDebugGroup();
    
    query1200.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    
    device120.queue.writeTexture({ texture: texture1202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device120.queue.writeTexture({ texture: texture1202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1201.destroy()
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1202.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.pushErrorScope("validation");
    
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    device130.destroy();
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    query1202.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1200.destroy()
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.pushErrorScope("internal");
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
    device110.queue.writeTexture({ texture: texture1100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device120.queue.writeTexture({ texture: texture1203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    const texture1204 = device120.createTexture({
        label: "texture1204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1204.destroy();
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    
    
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    device150.pushErrorScope("internal");
    render_bundle_encoder200.popDebugGroup();
    
    
    
    
    device70.pushErrorScope("out-of-memory");
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    device150.destroy();
    
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    
    render_bundle_encoder1200.popDebugGroup();
    
    device120.queue.writeTexture({ texture: texture1202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    query1202.destroy()
    const query1203 = device120.createQuerySet({
        label: "query1203",
        type: "occlusion",
        count: 32,
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device110.queue.writeTexture({ texture: texture1100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device120.queue.writeTexture({ texture: texture1202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1101.popDebugGroup();
    
    
    
    query1201.destroy()
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    query1203.destroy()
    device100.queue.writeTexture({ texture: texture1002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1203.destroy()
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1204 = device120.createSampler( { label: "sampler1204" } );
    query1201.destroy()
    
    
    
    const array12 = new Float32Array([-0.5, 0.25, -0.5, -0.5, -0.25, -1.0, 0.5, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, -0.75, 0.75, -0.25, 0.5, -1.0, -0.25, -0.75, -0.75, 0.25, 0.5, 1.0, 0.0, -0.75, -0.5, 0.0, -0.5, 1.0, -0.5, 0.75, -1.0, -1.0, 0.5, -0.75, -0.5, 0.75, -1.0, 0.25, 0.5, 1.0, 1.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, 1.0, -0.25, -1.0, 0.25, 1.0, 0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.0, -0.25, 0.0, 0.25, 0.0, 0.5, -1.0, 1.0, -0.75, 1.0, 1.0, -0.5, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.25, 0.25, 0.25, -0.25, -0.5, 0.5, 0.5, -0.5, -1.0, -0.75, ]);
    
    device120.queue.writeTexture({ texture: texture1201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1101.pushDebugGroup("group_marker");
    
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
    
    
    
    device120.queue.writeTexture({ texture: texture1202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device100.queue.writeTexture({ texture: texture1002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1203.destroy()
    device110.queue.writeTexture({ texture: texture1102 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    device120.queue.writeTexture({ texture: texture1202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    texture700.destroy();
    
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.queue.writeTexture({ texture: texture1101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1101.popDebugGroup();
    
    
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    device30.destroy();
    
    const array13 = new Float32Array([0.0, 0.5, -0.25, 0.25, -1.0, 0.5, 1.0, -0.25, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.0, 0.25, 0.0, 0.25, 1.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.25, 0.75, 0.0, 0.25, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, -0.5, 0.5, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, -0.5, 0.75, 0.75, 0.75, -1.0, -0.25, -0.75, 0.25, -0.5, 0.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.5, -0.25, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, -0.5, 0.5, -0.25, 0.75, 0.25, 0.25, 0.5, -0.5, -0.75, 0.75, ]);
    device80.queue.writeTexture({ texture: texture800 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    texture1102.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.queue.writeTexture({ texture: texture1101 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device110.queue.submit([]);
}