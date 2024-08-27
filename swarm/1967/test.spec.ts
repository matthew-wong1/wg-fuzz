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
    const array0 = new Float32Array([0.25, 1.0, 1.0, -0.25, -0.25, 0.25, 0.25, -1.0, 0.0, -0.5, 1.0, 0.25, 0.75, -0.25, 0.75, 0.5, 0.5, -1.0, 0.25, 1.0, 0.0, 0.25, 0.0, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.5, -0.75, 0.0, 0.0, 0.25, 0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -0.75, -0.5, 0.5, 0.5, 1.0, 1.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 0.25, -0.75, -1.0, -1.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.75, -0.25, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.0, -0.5, 0.25, -1.0, 0.75, 1.0, -0.75, 1.0, 0.0, 0.0, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, -1.0, 1.0, 0.75, -1.0, ]);
    const array1 = new Float32Array([0.75, 0.75, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 1.0, -1.0, 1.0, 0.75, 0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -0.5, 1.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.25, -1.0, 0.75, -0.25, 1.0, 0.75, 0.25, -0.25, -0.5, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -0.25, 0.0, -0.25, -0.25, -0.75, -0.25, -1.0, 1.0, -1.0, 0.75, -1.0, -1.0, 0.25, 1.0, 0.5, 0.0, -1.0, -1.0, 0.25, -0.25, -0.75, -0.25, 1.0, 0.25, 0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 0.5, 0.0, 0.25, 0.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.75, -1.0, -0.5, -0.5, 0.75, -0.25, -0.75, 1.0, ]);
    
    const array2 = new Float32Array([1.0, 0.0, -0.75, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, -0.25, 0.25, -1.0, 0.0, 0.0, 0.5, 0.5, 0.25, -0.5, 0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.25, -0.75, -0.25, 0.25, -0.5, -1.0, -0.5, 0.25, -0.5, -0.75, 1.0, -0.5, -0.25, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, -0.75, -0.5, -0.25, -0.5, 1.0, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, 0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.25, -0.5, -0.5, -1.0, 0.75, 0.5, 0.75, -0.75, -1.0, -0.25, -0.5, 0.75, -0.5, 0.25, 0.0, -1.0, 0.5, -0.25, 1.0, 0.5, 1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, -0.75, ]);
    
    const array3 = new Float32Array([1.0, -1.0, -1.0, -1.0, -0.75, 1.0, 0.5, 1.0, -0.25, 0.25, 0.5, -0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.25, 0.75, 0.5, -0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 0.25, 0.25, 0.5, -0.75, 0.5, -1.0, -1.0, 0.25, -0.75, 0.75, -0.5, -0.75, 0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 1.0, 0.25, -0.75, 0.0, 0.25, -0.5, 0.0, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, -0.75, 0.75, -0.5, -0.75, -0.25, 0.5, 0.75, 0.75, 1.0, 1.0, -0.75, 0.75, 0.75, -0.75, -0.25, 0.75, 0.5, -0.75, -0.5, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 0.5, 1.0, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.5, 0.25, 0.75, 0.0, 0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    const array4 = new Float32Array([0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 0.25, 0.25, -0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.25, 0.25, 0.5, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, -0.75, 0.0, -0.25, 0.25, 0.5, 0.5, -0.5, 0.25, 0.75, 0.5, -0.5, -0.25, 0.5, 0.0, 0.75, -0.75, 1.0, -1.0, -0.25, 0.0, 0.25, -0.25, 0.5, -0.25, -0.75, -0.5, 0.5, -0.5, 0.0, -0.25, 1.0, -0.75, 0.5, -0.5, -0.5, 0.25, 0.75, -0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 0.75, -0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 0.25, -1.0, -0.75, -1.0, 1.0, 0.75, 0.25, -1.0, 0.5, 0.75, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.25, -1.0, 0.0, 0.5, -0.75, ]);
    const array5 = new Float32Array([0.25, 0.0, 0.75, 1.0, 1.0, -0.25, 0.25, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, -0.75, -1.0, 1.0, -0.75, 0.75, -0.75, -0.75, 0.75, -0.75, -0.75, -0.25, -0.25, 0.5, 1.0, 0.75, 0.75, -1.0, -1.0, 0.5, 0.75, -0.25, 0.5, -1.0, -1.0, 0.5, 0.0, -1.0, -0.25, -0.25, 1.0, 1.0, -1.0, 0.0, -0.75, 1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.25, -0.25, -0.5, 0.5, 0.25, -1.0, 0.5, -1.0, -0.5, -0.25, -1.0, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, 0.25, 0.25, 0.25, 0.75, 0.5, 0.25, -0.5, 1.0, 0.75, -0.75, 0.0, -0.75, -0.5, -1.0, 0.0, 0.25, -0.25, 0.75, -1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -0.25, 0.0, 0.5, 0.5, ]);
    
    const array6 = new Float32Array([-0.5, -0.25, 1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -1.0, 1.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.75, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, -0.75, 0.5, 0.0, 0.75, 0.75, 0.75, -0.5, 0.75, 1.0, 0.0, 0.75, 0.0, 0.0, 1.0, -0.75, 1.0, 1.0, 0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -0.75, 0.75, -0.5, -0.25, 1.0, 1.0, 0.5, -0.25, -1.0, 0.5, 0.75, -0.75, -0.5, -0.5, 0.0, -0.5, 0.75, 0.75, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, 0.0, -0.75, -0.75, 1.0, -0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, -0.75, 0.5, 1.0, -0.25, 1.0, -1.0, 1.0, -0.25, 0.0, 0.0, -0.75, -0.25, 0.0, -0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array7 = new Float32Array([0.0, 0.5, 0.0, -0.5, 0.25, -1.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.25, -0.75, 0.25, 0.75, 0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -0.5, -0.75, -0.75, -0.25, -0.5, -0.25, 0.0, -0.75, 0.75, -0.25, -0.75, 0.5, 0.75, 0.0, 1.0, -0.25, -0.25, -0.25, 0.0, -0.5, -1.0, 1.0, -1.0, 1.0, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, -0.25, 0.5, 1.0, -1.0, -0.75, -1.0, 0.0, 0.5, -1.0, -0.25, 0.75, -0.5, -1.0, -0.75, 0.5, 0.5, 1.0, 0.5, -0.75, 0.25, -1.0, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, 1.0, -0.5, 0.75, 1.0, 1.0, 0.75, 0.5, 0.75, -0.75, -0.25, -1.0, 1.0, 0.75, 1.0, -1.0, -0.25, -0.5, ]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.destroy();
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const array8 = new Float32Array([0.25, 0.0, 0.25, 0.0, 0.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 0.25, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -0.75, -0.5, 0.25, 0.75, 0.0, -0.5, 0.0, -1.0, -0.5, 0.5, 0.5, 0.25, 1.0, -0.25, 0.75, 0.5, 1.0, 0.25, -0.5, 0.0, -0.75, -0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -1.0, 0.75, 0.75, 0.25, -0.5, -0.5, 1.0, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, -0.25, 0.5, -0.75, 0.5, 1.0, -0.25, 1.0, 0.0, 0.75, 0.75, 0.25, -0.25, 0.25, 0.0, 0.25, 0.0, 0.5, -0.75, -0.5, -0.75, -0.75, -0.25, 0.25, 0.75, 0.75, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, 0.25, 0.25, -0.75, 0.75, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.destroy();
    
    const array9 = new Float32Array([0.5, 0.75, -0.5, -0.75, -0.5, 1.0, -0.25, 0.5, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -0.25, 0.0, -0.5, -0.5, -1.0, 0.25, -1.0, -0.25, 0.75, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, 1.0, -1.0, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, 1.0, -0.75, -1.0, 0.0, -0.5, 0.25, 0.25, -0.5, -1.0, 0.75, 0.5, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, -0.25, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -1.0, -0.25, -0.25, -1.0, 0.75, 0.5, -0.25, -0.5, -1.0, 1.0, 0.0, -0.25, 0.5, 0.0, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, -0.25, 1.0, -0.75, ]);
    
    
    
    device20.pushErrorScope("out-of-memory");
    
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
    
    device10.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
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
    const array10 = new Float32Array([0.25, 0.75, 1.0, 0.5, -0.75, 0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, -1.0, -0.75, 0.75, 1.0, -1.0, 0.0, 0.25, -1.0, -1.0, 0.75, -0.75, 0.0, -0.5, 0.25, 0.5, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, 0.25, 0.0, 1.0, -0.25, -0.5, 0.5, 0.75, 1.0, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, 0.0, 1.0, 0.25, 0.75, 0.25, 1.0, -0.25, -0.25, 0.75, 0.0, 1.0, 0.5, -0.25, 0.75, -0.5, 0.5, -0.75, 0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 0.0, -0.75, 0.0, -1.0, 0.5, -0.5, 0.75, -0.25, 0.5, 1.0, -0.5, 0.5, -0.25, 1.0, -0.5, -0.25, 0.0, 0.5, -0.75, 0.0, 0.25, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    query000.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device40.pushErrorScope("internal");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    device60.destroy();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.pushErrorScope("validation");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer400.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer401.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    
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
    render_bundle_encoder400.popDebugGroup();
    device30.pushErrorScope("out-of-memory");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture400.destroy();
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.pushErrorScope("validation");
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture402.destroy();
    
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture300.destroy();
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    query401.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder300.popDebugGroup();
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer400.destroy()
    query400.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    texture401.destroy();
    
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query301.destroy()
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device70.queue.writeTexture({ texture: texture700 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    query400.destroy()
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout304]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    const array11 = new Float32Array([-0.25, 0.0, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 0.0, -0.75, 0.5, -0.75, -0.5, 0.0, 0.0, 0.75, 0.5, -0.25, 0.5, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 0.0, -1.0, 1.0, -0.75, -0.75, 0.5, 0.0, -0.25, 0.5, -0.75, 0.0, 0.0, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.0, 1.0, 1.0, 0.75, 0.5, -0.25, 1.0, -1.0, -1.0, 0.25, 0.75, -0.5, -1.0, -0.25, 0.0, -0.5, 0.25, 0.25, -1.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.75, -0.25, 0.25, 0.25, -0.5, 0.5, ]);
    query300.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    texture402.destroy();
    
    device30.destroy();
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    query400.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    buffer403.destroy()
    
    const array12 = new Float32Array([0.0, -0.25, 0.5, 0.75, 0.5, 0.75, 0.5, 0.25, -1.0, -0.75, -1.0, -0.25, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, 0.25, -0.25, 0.75, -0.25, 0.0, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 0.25, 0.0, 0.75, 1.0, -0.5, -0.5, -0.5, -1.0, -1.0, 0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, -0.5, 1.0, 1.0, 0.0, 0.5, -0.5, 0.5, 1.0, -1.0, -0.5, -0.75, -0.75, -0.5, 0.25, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, 0.75, -0.25, 0.5, 0.0, 0.25, -0.5, 0.5, -1.0, 0.5, 0.75, -1.0, -1.0, -0.75, 0.5, -0.5, -1.0, -1.0, 1.0, -0.25, -0.75, 0.5, ]);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
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
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    buffer900.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    device90.pushErrorScope("out-of-memory");
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const texture_view4031 = texture403.createView({ label: "texture_view4031" });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-1.0, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.25, -0.25, -0.5, 0.75, -0.75, -0.75, -0.25, 1.0, 0.25, 1.0, -0.25, 0.5, 0.0, -1.0, 0.5, 0.75, -1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, 0.25, 0.0, -1.0, -0.5, 1.0, -0.75, 0.0, 0.5, 0.0, 0.0, -0.5, 0.25, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, -1.0, 0.5, 0.75, -0.75, 0.25, -0.5, -0.5, 0.5, 0.0, 1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.5, -0.5, -0.25, 0.5, 0.0, 0.0, 0.25, 1.0, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, -1.0, 1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 1.0, -0.5, 1.0, -0.25, 0.0, -0.25, 0.0, 0.0, 1.0, -0.5, ]);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeBuffer(buffer901, 0, array0, 0, array0.length);
    const array14 = new Float32Array([0.5, 0.75, 0.5, 0.75, -0.25, -1.0, 0.25, -0.75, 0.75, 0.25, 0.75, 0.25, -0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 0.25, 0.75, 0.75, 0.5, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, 1.0, -0.75, 0.75, -0.75, 0.75, 1.0, -1.0, 0.25, 0.0, -0.25, -0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 1.0, -0.5, 0.75, 0.75, -0.5, 0.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.0, -0.5, -0.25, 1.0, -0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.75, 0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.75, -1.0, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.0, -0.75, 0.75, 0.5, ]);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder402.popDebugGroup();
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture700 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device40.queue.writeBuffer(buffer402, 0, array13, 0, array13.length);
    device20.queue.writeBuffer(buffer200, 0, array14, 0, array14.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device90.pushErrorScope("validation");
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
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    device70.queue.writeTexture({ texture: texture701 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_bundle_encoder500.popDebugGroup();
    buffer901.destroy()
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    query900.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const texture_view4032 = texture403.createView({ label: "texture_view4032" });
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    buffer500.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
    texture901.destroy();
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.submit([]);
    query400.destroy()
    
    render_bundle_encoder501.insertDebugMarker("marker");
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
    device90.queue.writeBuffer(buffer903, 0, array9, 0, array9.length);
    device90.queue.writeBuffer(buffer903, 0, array14, 0, array14.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device60.destroy();
    
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device50.destroy();
    
    device90.queue.writeBuffer(buffer903, 0, array0, 0, array0.length);
    device90.queue.writeBuffer(buffer903, 0, array14, 0, array14.length);
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    query301.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.popDebugGroup();
    const texture_view9020 = texture902.createView({ label: "texture_view9020" });
    device90.queue.writeBuffer(buffer903, 0, array10, 0, array10.length);
    device00.queue.writeTexture({ texture: texture000 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    device90.queue.writeBuffer(buffer903, 0, array5, 0, array5.length);
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
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    texture403.destroy();
    render_bundle_encoder402.popDebugGroup();
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    buffer902.destroy()
    device90.queue.writeBuffer(buffer903, 0, array7, 0, array7.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device90.queue.writeBuffer(buffer900, 0, array9, 0, array9.length);
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.queue.writeBuffer(buffer903, 0, array3, 0, array3.length);
    
    device90.queue.writeBuffer(buffer901, 0, array1, 0, array1.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.queue.writeTexture({ texture: texture404 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    buffer903.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    device90.queue.writeTexture({ texture: texture902 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture404.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout405]
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeTexture({ texture: texture405 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout901]
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    buffer402.destroy()
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device90.queue.writeBuffer(buffer904, 0, array13, 0, array13.length);
    device80.destroy();
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture900.destroy();
    device80.pushErrorScope("internal");
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
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
    device90.queue.writeBuffer(buffer903, 0, array0, 0, array0.length);
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture905 = device90.createTexture({
        label: "texture905",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture405 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
}