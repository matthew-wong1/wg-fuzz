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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, 0.0, -0.5, 0.0, 0.75, 1.0, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, 0.0, -1.0, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 1.0, -0.75, -1.0, 0.75, -0.5, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, 1.0, -1.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.25, 0.25, -0.75, -1.0, 0.25, 1.0, 0.5, 0.5, 1.0, 0.5, -1.0, 0.5, 0.25, -0.25, 0.0, 0.5, -0.5, -0.25, 0.0, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, 0.75, 0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 1.0, -0.5, 1.0, -1.0, -0.75, -0.25, -0.5, -0.5, -0.5, 0.0, 0.75, 0.75, 0.5, -1.0, 0.5, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.75, 0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 0.5, -0.5, -1.0, -1.0, 0.25, -0.75, 1.0, -0.5, 1.0, 0.75, -0.75, -0.75, 0.5, -1.0, 0.5, -0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, -1.0, 0.0, -1.0, 0.0, -0.75, 0.25, -1.0, -0.75, -1.0, -0.5, 0.5, 0.25, 0.5, 0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 0.0, 0.0, 0.25, 1.0, -1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -0.75, 0.5, -0.25, -0.75, 1.0, 0.5, -1.0, 0.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.5, -0.25, -0.5, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-1.0, 0.5, 1.0, -0.5, 0.75, -0.75, 0.0, -0.5, 0.25, 1.0, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, -1.0, 0.0, 0.5, -0.5, 0.0, 0.5, -0.75, -0.25, 1.0, -0.25, -0.25, 0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 1.0, 0.75, -1.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.75, 1.0, -0.25, 0.25, 0.75, 1.0, 0.25, -0.5, -0.75, -0.25, -0.25, 0.5, 1.0, -0.25, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, -0.5, 1.0, 0.75, 0.0, -1.0, -0.25, 0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, -0.25, -0.5, 0.25, 1.0, 0.5, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array3 = new Float32Array([-0.5, 0.75, 0.25, -0.75, -0.25, 0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, -0.75, 0.0, -0.5, -0.25, 0.25, 0.25, -0.25, -1.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.5, 1.0, 0.5, -0.75, -0.5, 0.75, 0.25, 1.0, 0.0, 1.0, -0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, -0.75, 0.0, 1.0, -0.75, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 1.0, -1.0, -0.25, -0.75, 1.0, -0.25, -0.75, 0.0, -0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 1.0, 1.0, 1.0, 0.0, -0.25, 0.75, 0.0, 1.0, 0.5, 1.0, 0.25, 0.75, -0.75, 1.0, 0.5, 0.25, -1.0, -0.25, -0.75, ]);
    device00.destroy();
    
    
    
    const array4 = new Float32Array([-1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.25, -1.0, 0.0, 1.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.75, 1.0, 0.25, -0.25, -1.0, -0.75, 0.5, -1.0, 0.5, 0.5, -1.0, 0.5, -1.0, 1.0, 0.0, -0.75, -0.5, 0.0, -0.25, 0.25, 1.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.0, 0.0, -0.75, 0.5, 1.0, -1.0, 1.0, 0.0, 1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.75, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array5 = new Float32Array([0.5, 1.0, -0.25, 0.5, -0.5, -0.25, 0.75, 0.75, -1.0, 0.75, 0.25, 0.5, -0.75, 0.5, -0.25, 0.25, -1.0, -0.25, -1.0, 1.0, -0.75, 0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, 0.25, 1.0, 0.0, 0.0, 0.5, 0.75, -0.5, -0.75, -0.25, 0.5, 1.0, 0.25, 1.0, 0.75, -0.75, -1.0, 0.75, -0.75, -0.5, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, -0.5, -0.25, 1.0, -0.25, -0.75, -0.25, 0.75, 1.0, 0.0, -0.5, -1.0, 0.75, -1.0, -0.5, 0.25, -0.5, 1.0, -0.25, 0.0, 0.25, -0.75, 0.5, 0.5, -0.75, -0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, 1.0, 1.0, 0.25, -1.0, 0.0, 0.5, 0.0, -0.5, ]);
    const array6 = new Float32Array([-0.75, 0.5, 0.75, 0.25, 0.5, 0.0, 1.0, -0.5, -0.5, 0.75, -1.0, 0.5, -0.25, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.75, 0.0, 0.5, -0.25, 1.0, -0.25, 0.0, 0.75, 1.0, 1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.75, -0.75, -0.75, -1.0, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -0.25, 0.75, 0.75, 0.25, -0.5, 0.25, -0.75, -1.0, 0.5, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.25, 0.75, -0.25, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.0, 1.0, 0.75, -0.75, -0.75, 0.75, -0.5, -0.5, -0.5, -0.75, 0.5, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, -1.0, -0.5, 0.75, 0.5, -1.0, 0.5, -0.25, -1.0, 0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const array7 = new Float32Array([-0.5, 0.5, -1.0, 0.75, -0.25, 0.0, 0.25, -0.5, -1.0, -0.5, -0.5, 0.5, 0.5, 0.5, 0.75, -0.25, 0.5, -0.75, -0.25, -0.5, -0.5, 1.0, 0.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.75, 1.0, -0.25, -0.25, -0.75, -0.5, 0.0, 0.25, 0.5, 0.75, -0.75, 0.0, -0.75, -0.5, -0.25, -0.25, 1.0, -1.0, -0.5, 0.0, -0.25, -1.0, 0.5, -1.0, -0.25, -0.75, 0.5, -0.75, 0.25, -1.0, 1.0, 0.25, 0.0, 1.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, -1.0, 0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, ]);
    
    const array8 = new Float32Array([0.5, -1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.5, 0.0, -1.0, 1.0, 1.0, 1.0, -0.75, -0.5, -1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.0, 0.5, 1.0, 0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.25, -0.25, -1.0, -1.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.25, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, -0.5, 0.25, -0.5, 1.0, -0.5, 0.5, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.0, 0.75, -0.25, -0.25, 0.75, -0.5, -0.5, -0.75, 0.25, 0.5, 0.75, 0.5, -0.25, 0.25, 0.75, -1.0, 0.5, 1.0, 1.0, 0.0, 1.0, 0.0, 0.5, -0.75, 1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array9 = new Float32Array([-0.75, 0.75, 0.0, -0.25, 0.0, -0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.75, 0.0, -0.5, 0.0, -0.75, -0.75, 0.5, 1.0, 0.75, -0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 0.0, -1.0, -0.5, 0.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.75, 1.0, -1.0, -0.75, -0.25, -0.5, 1.0, -0.25, 0.75, 0.0, 0.0, -1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.0, 0.5, 0.75, 0.25, -0.5, -0.75, -1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.75, 0.5, -0.5, 1.0, -0.75, 0.25, 0.25, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 0.0, -1.0, 0.5, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.5, 0.75, 0.0, 1.0, ]);
    const array10 = new Float32Array([0.75, -0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 0.5, -1.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, -1.0, -0.25, 0.25, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 1.0, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, 0.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.75, 0.5, 0.5, 0.75, -1.0, 0.5, 1.0, 0.25, 0.75, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -1.0, 0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.75, -1.0, 0.75, 0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.5, 0.75, -0.75, 0.75, 1.0, -0.75, -0.25, -1.0, -0.75, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, -1.0, 1.0, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([-0.5, -1.0, 0.5, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, 0.75, -0.75, 0.0, -0.25, 0.5, 1.0, 1.0, -0.75, 1.0, 1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.75, -0.75, 0.5, 0.75, 1.0, -0.25, 0.0, -0.5, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, 0.25, 0.5, 1.0, -0.25, 0.75, -0.5, -0.25, -0.5, 0.75, -0.25, -0.5, 0.75, 0.0, -0.5, 1.0, 0.0, 1.0, 0.0, -1.0, 1.0, 0.75, -0.5, 0.75, 0.25, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.5, 1.0, -0.75, 0.75, -0.75, -0.25, 0.5, 0.0, 1.0, ]);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    query400.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer400.destroy()
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const array12 = new Float32Array([0.75, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, -1.0, 0.75, -0.75, -0.5, 0.25, -0.5, 1.0, -0.25, -0.5, 0.75, -1.0, 0.75, -0.75, -0.5, 0.75, -0.5, 0.75, 0.25, -0.5, -1.0, -0.5, -0.25, -1.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.75, 0.25, 0.0, 1.0, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, -0.5, -0.5, -0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 1.0, 1.0, 0.25, 0.0, -0.75, -0.5, 1.0, 0.75, 1.0, 0.25, 0.75, 0.75, -0.75, 0.75, -0.25, -0.5, -0.25, 0.5, 0.25, 0.5, -0.75, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, 0.75, -0.5, -1.0, 1.0, 0.75, -0.5, -0.75, 0.5, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    query401.destroy()
    query401.destroy()
    query400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.pushErrorScope("out-of-memory");
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    
    buffer402.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer700.destroy()
    
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
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
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query403.destroy()
    query401.destroy()
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer701.destroy()
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query403.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([1.0, 0.5, -0.5, 0.75, 0.5, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.25, -1.0, -0.5, 0.75, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, 0.75, -0.25, 0.75, -0.25, -0.5, 0.25, -0.25, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, -0.25, 0.5, 0.25, -0.75, 0.25, -0.5, -0.75, 0.25, 0.0, 0.75, -0.75, -0.25, -0.25, 0.5, 0.5, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, -1.0, 1.0, 0.25, -0.75, 1.0, 0.0, 0.5, -0.5, -0.75, -0.25, -1.0, 1.0, 1.0, -0.25, -0.75, -0.25, -0.75, 1.0, 1.0, -0.75, 0.25, 0.0, -1.0, 1.0, 1.0, -0.25, 0.25, -1.0, -1.0, 0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.25, 0.5, ]);
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer405.destroy()
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
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
    query403.destroy()
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture404 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.queue.writeTexture({ texture: texture404 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture404 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([-1.0, 0.0, -0.25, 1.0, 0.5, 0.0, 1.0, 0.75, -0.25, -1.0, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, -0.75, 0.5, -1.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.5, -0.75, 0.25, -1.0, 0.25, 0.25, 0.5, -0.75, 0.0, -1.0, -0.25, -0.25, 1.0, -0.75, 0.5, 1.0, -0.5, 0.75, -0.25, 0.75, 0.75, -0.75, 0.5, 1.0, -0.5, 0.0, 0.75, -1.0, 0.0, -0.25, 0.75, -0.75, 0.75, 1.0, -0.5, 0.25, -0.25, 1.0, -0.25, 1.0, -0.5, 0.0, 0.5, 0.25, 0.0, 0.0, -0.5, -0.25, 0.5, 0.25, 1.0, 0.5, -1.0, 1.0, -0.75, -0.75, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -0.25, -0.5, -1.0, 1.0, 0.0, -0.25, 1.0, -1.0, 0.0, -0.25, -0.75, -1.0, 0.0, -0.75, ]);
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    query700.destroy()
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture404 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const array15 = new Float32Array([0.0, -0.5, -0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 0.25, -1.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.5, -1.0, 0.25, 0.0, 1.0, -0.5, -0.5, 1.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.5, -0.25, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.25, 0.75, 0.25, 1.0, 0.25, 0.5, 1.0, 0.25, -0.5, 0.25, 0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.5, 0.5, -1.0, 0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -1.0, 0.5, -0.25, -1.0, -0.25, -0.75, 0.75, 0.25, -1.0, -1.0, -0.25, 0.75, 0.25, 0.0, 1.0, -1.0, 0.25, 0.75, 0.5, -1.0, 0.0, 0.25, 0.75, -0.5, 0.0, -0.25, 1.0, -1.0, ]);
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.pushErrorScope("out-of-memory");
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const array16 = new Float32Array([-0.25, 1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.25, -0.25, 0.75, 0.5, 0.25, -0.25, -0.75, 0.0, 0.0, 0.0, 0.75, 1.0, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, -0.5, 1.0, 1.0, 0.25, 1.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.75, 0.0, 0.25, -0.75, 0.0, 0.75, -0.75, -1.0, 1.0, -1.0, -0.75, 0.25, 0.0, -0.25, 0.75, 0.25, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, 0.5, 0.75, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, -1.0, 1.0, -0.25, 0.25, -0.75, 0.75, -1.0, 1.0, -0.5, 0.25, -0.25, 0.5, -0.75, -0.75, -0.75, -0.75, -0.75, 0.0, 0.75, -0.5, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture400 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler407 = device40.createSampler( { label: "sampler407" } );
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout409,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer403.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture800 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    buffer703.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder701.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer404.destroy()
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
}