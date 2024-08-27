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
    const array0 = new Float32Array([-0.75, 0.75, 0.0, 0.5, 0.0, 0.75, 1.0, 0.75, 1.0, -1.0, 1.0, 0.0, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -0.75, -0.5, 0.0, 0.5, -1.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 0.25, -0.25, -1.0, -0.75, 0.75, -0.25, -0.25, -0.25, -0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 0.0, -0.25, 0.25, -0.5, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, -0.75, -1.0, 1.0, -1.0, ]);
    
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.5, 0.75, 0.75, 0.0, -0.25, 0.75, -1.0, 0.0, -1.0, 1.0, -0.75, 0.0, -0.25, 0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 0.5, -0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.5, -0.75, -1.0, 0.75, 0.0, -0.5, -1.0, 0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.25, 1.0, 0.5, 1.0, -1.0, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, -1.0, -0.25, -1.0, 0.75, 0.0, 0.5, 0.25, 0.0, -0.25, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.75, 0.5, 0.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.5, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.0, -0.5, 0.25, 0.25, -0.25, -0.25, -1.0, 1.0, -0.75, -0.75, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.0, 0.75, -0.25, 1.0, 0.75, 0.25, -0.75, -0.25, -0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.5, -1.0, -0.75, 0.0, -0.75, -1.0, 0.75, 0.0, -0.75, 0.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.75, 0.25, -1.0, -0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.5, -0.75, -0.25, 0.5, 0.0, -0.5, -1.0, 1.0, 0.25, 0.75, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, 0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 1.0, 0.5, -1.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.75, 0.5, 1.0, -1.0, 0.75, -1.0, ]);
    
    const array3 = new Float32Array([-0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -1.0, -0.75, -0.75, 0.0, -1.0, 0.0, 1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, -0.5, -0.75, 0.75, -0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, 0.75, -0.75, 0.5, 0.5, -0.5, -0.25, 0.5, 0.0, -0.75, 0.25, -0.75, 0.0, 0.5, 0.0, 0.25, -0.5, 1.0, 0.0, 0.25, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 0.5, 0.25, -0.5, -0.5, -0.5, 0.5, 0.0, -0.75, 0.0, 0.75, -0.25, -0.25, -0.25, 0.0, -0.75, 0.25, 0.75, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -1.0, ]);
    const array4 = new Float32Array([-0.75, -0.5, 0.75, 0.5, -0.5, 0.75, 0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.0, -0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 0.75, -0.75, 0.75, 1.0, -1.0, 0.5, 0.5, -0.25, -0.75, -1.0, 0.5, 1.0, 0.75, 1.0, -0.75, 0.25, 0.75, -1.0, 0.25, 1.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.5, -1.0, -0.5, 0.0, 0.75, 1.0, -0.25, 1.0, 0.25, 0.0, 0.75, -0.25, 0.0, -0.5, -0.5, 0.5, -0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -0.5, -1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -1.0, -1.0, -0.75, 0.25, 0.5, -0.75, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, -0.75, 0.0, 0.0, 0.75, -1.0, 0.25, -0.25, 1.0, -1.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.75, 1.0, 0.5, 0.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 0.0, -1.0, 1.0, -0.25, 0.75, 0.75, -0.75, -0.25, -0.75, -0.5, 0.25, 0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -0.75, 0.25, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.25, 0.5, 0.75, -0.25, -0.75, 0.5, 1.0, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 0.75, -0.75, -0.75, -0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -0.25, 1.0, ]);
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture000.destroy();
    
    const array6 = new Float32Array([0.0, 0.25, 0.75, -1.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.75, -0.25, -1.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.25, 0.75, 0.25, -0.25, 1.0, 0.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.75, 0.0, 0.0, -0.5, -1.0, -0.25, -0.75, 0.5, 0.25, 1.0, -0.75, 0.0, 0.5, 0.75, -0.25, -0.75, -0.5, -1.0, 1.0, 0.0, 0.75, 0.0, 0.75, 1.0, -1.0, -0.25, 0.25, 1.0, 0.75, 1.0, 0.5, 1.0, -1.0, 0.0, -0.5, -0.75, -0.25, 0.25, 0.5, -0.75, 1.0, -0.5, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.75, -1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.5, -0.25, 0.25, 0.75, 0.25, 0.5, -0.75, -1.0, 0.5, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.destroy();
    const array7 = new Float32Array([-1.0, 0.0, 0.0, -0.5, -0.5, 1.0, -0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.5, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 1.0, -1.0, 0.5, 0.5, 0.75, 1.0, 0.5, -0.75, -0.25, 0.0, -0.5, -1.0, 0.5, 0.25, -0.75, 0.0, 1.0, -1.0, 0.75, 1.0, -0.75, 0.0, 1.0, 0.25, 0.5, 0.25, -0.75, -0.5, 0.75, 0.25, -0.5, -1.0, -0.5, -0.5, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, -0.75, -0.25, -0.5, 0.25, -0.5, -1.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.25, -0.5, -1.0, -0.5, ]);
    
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const array8 = new Float32Array([-0.25, -0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 0.5, -0.75, -1.0, -0.5, 0.25, 1.0, -0.5, 0.75, 0.25, -0.25, 0.0, -0.75, -0.5, -0.75, 0.25, -1.0, -1.0, 0.0, 0.75, -0.75, 0.0, -0.5, -0.5, 0.0, -0.25, -0.5, 1.0, 1.0, 1.0, 0.25, -0.75, -1.0, 0.25, -1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.5, 1.0, 0.0, -0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 0.75, -0.75, 0.5, 0.0, -0.75, -0.25, 0.0, -1.0, 0.25, -0.25, ]);
    
    const array9 = new Float32Array([-0.5, 0.5, -0.75, 1.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 0.25, -1.0, -0.75, -0.25, 0.75, 0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.5, -0.25, -1.0, -0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.75, 0.0, -0.25, 1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, 1.0, 0.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.5, -0.25, 0.0, -0.25, -0.5, -0.25, 0.0, 1.0, 0.0, -1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 0.25, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, 0.25, -0.75, ]);
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const array10 = new Float32Array([-0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.75, 0.5, -0.75, -0.5, -0.25, 1.0, -0.5, 1.0, -1.0, -0.5, 0.5, -0.25, -0.5, -1.0, -0.75, -0.75, -0.25, -0.25, 0.25, -0.75, -0.75, 1.0, 0.25, -0.25, -0.5, 0.75, 0.0, 1.0, -1.0, 0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, -0.75, 0.5, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 0.75, -0.5, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, 0.0, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, -0.5, 1.0, 1.0, -0.5, -0.5, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([]);
    device30.pushErrorScope("validation");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
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
    const array11 = new Float32Array([-0.75, -1.0, 0.25, 0.25, 1.0, -0.5, 1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, -0.5, 1.0, 0.0, 0.5, 0.75, 0.0, 0.0, 0.0, 1.0, 0.75, 0.0, 0.5, -0.5, 0.0, 0.0, -1.0, 0.75, -0.5, 0.5, -1.0, 0.0, -0.5, 0.0, 0.5, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, -0.25, -0.25, 0.0, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 0.75, 0.25, -0.75, -0.75, 0.5, -0.5, 0.5, 0.75, -0.5, -1.0, -0.25, -1.0, 0.5, -0.25, -0.25, 0.25, 0.75, -0.5, 0.75, -1.0, 0.0, 0.25, -0.25, ]);
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    
    texture300.destroy();
    
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
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
    
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    texture301.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.popDebugGroup();
    
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("out-of-memory");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder401.popDebugGroup();
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const array12 = new Float32Array([0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.0, 0.75, -1.0, 0.0, -0.25, 1.0, -0.75, 1.0, -0.25, 0.25, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.0, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, -0.75, 0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 1.0, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 1.0, 0.75, 0.75, -0.25, -0.5, -0.25, 0.0, 0.75, -0.5, 0.25, 0.5, 0.0, -0.75, -0.25, -1.0, -0.75, -1.0, 0.25, 0.25, -0.25, 0.75, -1.0, -0.5, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, -1.0, -0.5, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.25, 0.5, 0.25, 0.0, -1.0, 0.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.5, ]);
    compute_pass_encoder4000.setPipeline(compute_pipeline405);
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer400.destroy()
    
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array12, 0, array12.length);
    query400.destroy()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    query401.destroy()
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
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
    buffer401.destroy()
    
    
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    device00.destroy();
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    
    
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const array13 = new Float32Array([-0.25, 1.0, 0.25, -0.75, 0.75, -1.0, -1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -1.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.75, 0.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -0.25, -0.25, -0.5, -0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.5, -0.25, 0.0, -0.25, -0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 0.0, 0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.0, 1.0, -0.25, 0.75, -1.0, 0.0, 0.75, 0.25, 0.0, -0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.75, -0.75, -1.0, 1.0, 0.25, 0.25, 0.75, 0.25, 0.5, -1.0, 0.25, -0.25, -1.0, 0.25, -0.25, 0.75, -0.75, 1.0, -0.5, 0.5, -0.25, ]);
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout406,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder402.setPipeline(render_pipeline402);
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    command_encoder401.popDebugGroup()
    
    
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query400.destroy()
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    query400.destroy()
    buffer403.destroy()
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout404]
    });
    device40.pushErrorScope("out-of-memory");
    
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout405,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout408,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    texture401.destroy();
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout409,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.pushErrorScope("validation");
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout408,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
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
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout409,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array2, 0, array2.length);
    query202.destroy()
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    
    device40.queue.writeBuffer(buffer406, 0, array5, 0, array5.length);
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    compute_pass_encoder4011.setPipeline(compute_pipeline4034);
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout405,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer407
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer407.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const compute_pipeline4088 = device40.createComputePipeline({
        label: "compute_pipeline4088",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline4089 = device40.createComputePipeline({
        label: "compute_pipeline4089",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    query400.destroy()
    
    device40.queue.writeBuffer(buffer408, 0, array7, 0, array7.length);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    buffer409.destroy()
    render_bundle_encoder400.setVertexBuffer(0, buffer405);
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    const compute_pipeline4090 = device40.createComputePipeline({
        label: "compute_pipeline4090",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4091 = device40.createComputePipeline({
        label: "compute_pipeline4091",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    
    device40.queue.submit([]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4012, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4012, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4013, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4013, 0);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline4034.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group404);
    compute_pass_encoder4010.end();
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4011.end();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder4011.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
}