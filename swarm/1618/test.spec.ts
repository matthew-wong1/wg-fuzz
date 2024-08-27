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
    
    
    
    
    const array0 = new Float32Array([-0.25, -1.0, 1.0, -0.5, 0.25, 0.0, -1.0, -0.5, -1.0, 0.75, 0.25, -0.5, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, -0.25, 0.25, 0.75, 0.5, -0.25, -0.75, -0.75, 1.0, 0.0, 0.75, 0.5, 0.75, -1.0, 1.0, -0.75, -1.0, -1.0, 0.0, 1.0, -1.0, 0.25, 0.75, 0.25, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, 1.0, -1.0, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 1.0, -0.5, -0.75, -0.75, -0.25, 0.25, -0.75, -0.25, -0.75, -1.0, 0.0, -0.25, -0.5, 0.0, -0.5, 0.75, 0.25, 0.0, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, 0.5, 0.5, 0.0, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.25, -0.25, 0.75, ]);
    const array1 = new Float32Array([-0.25, 0.5, 0.0, 0.0, 0.0, 0.5, 0.25, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -1.0, 1.0, 0.0, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, -0.25, 0.75, -0.5, 0.5, 1.0, -0.75, 0.5, -0.5, 0.0, 1.0, -1.0, -0.75, -0.5, -0.25, -0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, 0.5, 1.0, 0.25, 1.0, 0.5, -0.25, 0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.25, -1.0, 0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 0.5, 0.0, -0.25, 0.0, 0.25, 0.25, 1.0, 0.25, 0.5, -0.5, 0.0, ]);
    const array2 = new Float32Array([0.25, -0.5, -0.75, 0.0, 0.25, -0.75, 0.75, 0.75, 0.0, -1.0, -0.25, 0.25, 0.25, -0.75, 0.5, 0.25, 0.75, 0.5, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, -0.5, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.25, 1.0, 0.0, 0.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.25, -1.0, -0.5, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.5, 0.0, -0.75, 0.5, 0.5, 0.25, -0.25, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, 0.25, 0.25, 0.25, -0.75, 0.0, 0.0, 0.25, 0.5, -0.75, 0.75, -1.0, -0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-1.0, -0.75, 0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.75, 0.5, 0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 0.25, -0.75, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, -0.75, 0.25, 0.0, 0.0, -0.25, 0.25, -0.25, 1.0, -0.5, -1.0, -0.5, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, -0.5, 0.25, -0.75, 0.5, -1.0, 0.0, 0.75, 0.5, -0.5, -0.25, 0.75, 0.25, -0.25, -0.5, -1.0, 0.5, -0.75, -0.5, 0.75, -1.0, -0.75, 0.75, -0.75, 0.75, 0.5, -0.25, -1.0, 0.25, -0.5, 0.75, -1.0, 0.0, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.75, -0.25, -0.25, 1.0, 0.5, 0.0, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, -0.5, ]);
    const array4 = new Float32Array([-0.75, 0.0, -0.25, -1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 0.75, -0.5, 0.5, 0.75, 0.25, 0.75, -0.25, 1.0, -1.0, 0.5, 0.0, 0.5, 0.75, 0.0, -0.5, -0.25, 0.5, -0.25, -0.75, 0.5, -0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.25, 1.0, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.75, -1.0, -1.0, -1.0, 0.0, -1.0, -0.25, -0.5, 0.75, -1.0, ]);
    const array5 = new Float32Array([-0.25, 0.25, 0.75, 0.25, 0.75, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, -0.25, 1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.75, -0.25, -0.25, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.75, 1.0, -0.25, 0.75, -0.75, 0.0, 1.0, 0.0, 0.75, -0.5, -0.5, -0.25, -0.5, -0.75, 0.5, -1.0, -1.0, 0.75, 0.0, -0.25, 0.5, -0.75, 0.25, -0.25, -1.0, -0.5, -0.75, -0.75, -1.0, -1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.0, 0.5, -1.0, -1.0, -0.5, -0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.0, -1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -0.75, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const array6 = new Float32Array([1.0, -0.25, 0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 0.0, -0.75, 0.5, 0.0, 0.75, 0.75, -0.25, 1.0, -0.5, -0.75, -0.25, -0.25, 0.75, -0.5, 0.75, 1.0, 0.25, 0.0, -0.5, 1.0, -0.25, 1.0, 0.25, -0.75, -1.0, 0.0, 0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, -0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.25, -1.0, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, -1.0, -0.75, -0.25, 0.5, 0.5, -1.0, -0.25, 0.5, -0.75, 0.5, -0.25, 0.0, 0.0, 0.75, 1.0, 0.25, 1.0, 0.5, -1.0, -1.0, -0.25, 0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.0, ]);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const array7 = new Float32Array([0.75, -0.5, 0.75, -1.0, -0.5, 0.25, 0.75, 0.25, 0.0, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, -0.25, -0.5, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, 0.0, 0.75, 0.25, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.25, 0.25, -1.0, 1.0, 1.0, -0.75, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.75, -1.0, -0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -0.5, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, -0.5, 0.5, -0.75, -1.0, -0.5, -0.5, -0.75, 0.5, 0.75, 0.25, 0.25, -0.25, 1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.0, 0.5, 0.75, 0.0, -1.0, 0.25, -0.25, 0.25, 1.0, 0.0, -0.25, 0.5, 1.0, 1.0, 1.0, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.destroy();
    
    const array8 = new Float32Array([-0.25, -0.75, -1.0, -1.0, -0.25, 1.0, 0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 0.25, -1.0, -0.75, -0.75, 0.25, 0.5, 0.0, 0.75, 0.5, -0.75, 0.75, -0.25, -0.75, -0.5, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 0.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.75, -1.0, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, 0.25, 0.0, 0.5, -0.5, -0.25, 0.75, -0.75, 0.5, -0.75, -0.5, 0.0, 0.5, 0.5, 1.0, 0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 0.0, 0.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, 0.0, 1.0, 0.5, 0.0, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.75, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    const array9 = new Float32Array([0.25, -0.5, -0.5, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, -0.75, 1.0, 0.0, -1.0, 0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, 0.75, -0.75, -0.5, -1.0, -0.75, 0.25, 0.25, 1.0, -0.75, -1.0, 0.75, 0.5, 0.0, -1.0, -0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 1.0, -0.25, -0.75, -0.25, 0.5, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -0.5, 0.75, -1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, -0.5, -1.0, -1.0, -0.75, 1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.5, 0.75, 0.25, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -0.5, 0.25, -0.75, 0.5, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("validation");
    const array10 = new Float32Array([0.0, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.5, 0.5, 0.5, -0.25, -0.75, -0.5, 0.5, 0.25, 0.75, -0.25, 0.75, 0.0, 1.0, -1.0, -0.25, 0.75, -0.25, 0.25, 0.25, -1.0, -1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 0.0, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, -0.75, 0.75, -0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -0.25, -0.75, -0.5, -0.75, -1.0, 0.0, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 1.0, -0.25, -0.75, 0.25, -1.0, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, 1.0, 0.5, 0.5, -0.5, 0.75, 1.0, 0.25, 1.0, ]);
    const array11 = new Float32Array([0.5, -1.0, -1.0, -1.0, -1.0, 0.25, 0.25, 0.0, -0.5, -0.25, -0.75, -0.75, -0.75, 0.25, -0.5, -0.5, -0.25, -0.75, -0.25, -1.0, -0.75, 0.75, 0.75, 1.0, 0.25, 1.0, 0.75, -0.25, -0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 0.75, 0.5, 0.5, 1.0, 0.5, -0.75, -0.25, -0.25, 1.0, -0.25, 0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 0.25, 0.5, 0.0, -1.0, 0.5, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, 0.75, -0.75, -0.75, 0.25, 0.5, -0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 1.0, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.5, -0.75, 0.5, 0.5, 1.0, 0.0, -0.75, 1.0, -0.25, 0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    query200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.submit([]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const array12 = new Float32Array([0.75, 0.25, -0.5, 1.0, 0.75, -1.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, -0.5, 0.5, -0.25, -0.5, 0.5, 0.0, -0.25, -0.75, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, 0.5, -1.0, 0.5, 0.25, 0.5, -0.25, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.75, 0.5, 1.0, -0.25, 1.0, 0.75, -0.25, 1.0, 0.75, -0.75, 0.0, 0.0, 0.75, 0.0, -0.25, 0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, 0.25, -0.75, -0.25, 1.0, -0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 0.5, 0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, 0.25, 0.75, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture200.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query200.destroy()
    
    device60.pushErrorScope("validation");
    device30.pushErrorScope("internal");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const array13 = new Float32Array([-0.75, 1.0, -0.75, 0.75, 0.25, 1.0, -1.0, -0.75, 0.75, -1.0, 0.25, -0.25, 0.0, 0.25, -0.5, 0.75, 0.75, 0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.5, 0.5, -0.5, 0.5, -0.25, -0.25, 0.0, -0.5, 1.0, -1.0, 0.75, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -1.0, 0.5, -0.75, 0.5, -0.75, 0.5, 0.0, 1.0, 0.25, -0.5, -0.75, -0.75, -0.5, 0.25, -0.25, 1.0, 0.0, -0.25, -0.5, 0.25, 0.75, -1.0, 0.75, -1.0, -1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 0.0, 1.0, 0.5, 0.0, 0.75, -0.75, ]);
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const array14 = new Float32Array([1.0, 1.0, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, 0.5, 0.75, 0.0, -1.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.25, 0.75, -1.0, 0.25, 0.75, 1.0, 0.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.25, 1.0, 0.0, -0.25, 0.0, 0.75, 0.25, 0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, -1.0, 0.5, 0.0, -0.25, 1.0, 0.75, -0.5, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, -0.75, -0.75, -0.75, 0.25, -0.75, -1.0, 0.75, 1.0, 0.0, 0.75, 0.0, 0.75, 0.5, 0.75, 0.75, -0.75, 0.25, -0.5, -0.75, -0.75, 1.0, -0.25, 0.5, -0.75, 0.25, 0.25, -0.75, -1.0, -0.75, 1.0, -0.25, 0.25, 0.75, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, -1.0, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device10.queue.writeTexture({ texture: texture100 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    device20.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device70.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    texture400.destroy();
    device60.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query401.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    
    
    
    query400.destroy()
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query401.destroy()
    
    device80.destroy();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    query402.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    query402.destroy()
    
    
    query401.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array15 = new Float32Array([-0.5, -1.0, 0.0, 0.75, 0.0, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, -1.0, 0.25, 1.0, 0.5, -0.25, 0.5, -0.25, 1.0, 0.0, 1.0, -0.5, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.25, 0.0, 1.0, 1.0, -0.75, -0.5, -0.5, 0.5, 0.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, 0.25, 1.0, 0.5, -0.5, -0.25, -1.0, 1.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.25, -0.75, 0.0, -1.0, -0.25, -0.75, 0.5, 0.5, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, 0.0, 0.25, 0.5, -0.5, 0.75, 0.0, 0.25, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, -0.5, -0.5, 0.75, -0.5, 0.0, ]);
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
    query402.destroy()
    
    
    device40.pushErrorScope("validation");
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
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    query401.destroy()
    query402.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    query404.destroy()
    texture401.destroy();
    
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    query401.destroy()
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
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
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
    
    query100.destroy()
    query405.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array16 = new Float32Array([1.0, 0.75, 0.0, 0.25, -0.75, 0.75, -0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.5, 1.0, -0.75, -0.25, 0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, 0.25, -1.0, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.25, 0.75, 0.25, 0.5, -0.5, -0.5, 0.25, -1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -1.0, 1.0, 0.75, -0.5, -0.75, 0.5, 0.25, -0.5, -0.75, 0.0, 0.0, 0.75, 0.0, 0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 0.75, 0.25, 0.75, -0.5, -0.75, 0.5, 0.25, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, 0.25, -0.5, -0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.5, 1.0, -0.75, -0.5, -1.0, 0.25, 0.0, -0.25, -0.25, 0.5, -1.0, 0.75, 0.0, 0.5, -1.0, -0.75, ]);
    const array17 = new Float32Array([-0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 0.75, -0.5, 0.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.25, -0.25, 0.5, 0.0, -1.0, -0.5, 0.25, -0.5, 0.25, -0.5, -1.0, -0.75, -0.5, -1.0, 0.5, 0.25, -0.25, -1.0, -0.5, 0.0, 0.0, -1.0, -0.5, -0.5, 0.0, 0.75, -0.5, -0.25, 0.5, 0.25, 0.5, -1.0, 0.0, -0.5, -0.75, 0.25, -0.75, -0.25, -1.0, -0.25, 0.0, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.5, -0.25, 0.5, 0.0, 0.25, -0.25, 0.75, -0.25, 1.0, -0.5, -0.5, -1.0, -1.0, 0.25, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, -0.5, -0.75, ]);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    texture500.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1000.destroy();
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.destroy();
    
    device100.pushErrorScope("internal");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.submit([]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1000.insertDebugMarker("marker");
    texture1001.destroy();
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    texture900.destroy();
    texture600.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.destroy();
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
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
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([]);
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device120.destroy();
    
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
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    texture700.destroy();
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout902]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
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
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    device90.destroy();
    
    device100.destroy();
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device140.queue.writeTexture({ texture: texture1400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    device60.pushErrorScope("internal");
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.destroy();
    
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1401]
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const bind_group_layout1402 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1402",
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
    const bind_group_layout1403 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1403",
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
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    query201.destroy()
    
    device10.destroy();
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const sampler1402 = device140.createSampler( { label: "sampler1402" } );
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1403]
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    
    const array18 = new Float32Array([0.5, 0.0, -0.75, 0.25, -0.25, 0.5, 1.0, -0.25, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, -0.25, 0.75, -0.75, 1.0, 0.25, -0.25, -1.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.25, -1.0, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -0.5, -0.75, 0.75, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.25, 0.75, -0.5, -0.5, -0.5, -0.5, 0.5, -0.75, -0.75, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.75, 1.0, 1.0, -0.25, 0.0, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.5, -0.75, 0.5, 0.75, 0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.0, -0.5, -1.0, 0.75, 0.5, -0.25, -0.25, 1.0, ]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device150.queue.writeTexture({ texture: texture1500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    device150.queue.writeTexture({ texture: texture1500 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    texture100.destroy();
    texture000.destroy();
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    device00.destroy();
    const texture1402 = device140.createTexture({
        label: "texture1402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device150.pushErrorScope("internal");
    const sampler1403 = device140.createSampler( { label: "sampler1403" } );
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device140.destroy();
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device130.queue.writeTexture({ texture: texture1300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    query1500.destroy()
    device120.destroy();
    const pipeline_layout1402 = device140.createPipelineLayout({ 
        label: "pipeline_layout1402",
        bindGroupLayouts: [bind_group_layout1402]
    });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    query300.destroy()
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    texture1300.destroy();
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
    device130.queue.writeTexture({ texture: texture1301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("internal");
    
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
    device130.queue.submit([]);
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    query1500.destroy()
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    texture1500.destroy();
    
    
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
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device130.destroy();
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1501]
    });
    
    device170.destroy();
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout1501 = device150.createPipelineLayout({ 
        label: "pipeline_layout1501",
        bindGroupLayouts: [bind_group_layout1500]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    query100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view15010 = texture1501.createView({ label: "texture_view15010" });
    texture500.destroy();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const sampler1900 = device190.createSampler( { label: "sampler1900" } );
    
    
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const texture_view15011 = texture1501.createView({ label: "texture_view15011" });
    
    const texture_view15020 = texture1502.createView({ label: "texture_view15020" });
    device150.queue.writeTexture({ texture: texture1501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1404 = device140.createSampler( { label: "sampler1404" } );
    device190.destroy();
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    query402.destroy()
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    device150.destroy();
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
}