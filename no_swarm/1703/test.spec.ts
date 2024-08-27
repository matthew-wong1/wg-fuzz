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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.0, 1.0, 0.75, 1.0, -0.5, 0.75, 0.0, 0.75, -0.75, -0.25, 0.5, 1.0, 1.0, -0.25, -0.75, -0.25, -1.0, -1.0, 0.0, -1.0, -0.25, -0.25, -0.5, 1.0, 0.5, 0.25, 0.75, 0.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, 1.0, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, -0.25, -0.5, 0.25, 0.0, 0.75, 0.5, -0.5, 0.75, 0.75, 0.5, 0.5, -0.25, 0.75, -0.25, 0.5, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, -1.0, 0.5, -0.75, 0.0, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.0, -0.25, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, 0.0, 0.0, 0.5, -0.75, -0.25, 0.25, 1.0, -0.25, 0.5, ]);
    const array1 = new Float32Array([-1.0, 0.75, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.0, 0.0, -0.25, 1.0, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.75, -0.25, 0.5, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, -0.5, -0.25, 0.0, 0.0, 0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, 0.75, 0.25, -0.25, 0.25, 1.0, 0.25, 0.5, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, 0.25, -1.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.75, 0.0, -0.25, -1.0, 0.25, -0.25, -0.5, 0.5, 0.5, -1.0, -1.0, -0.5, 0.25, 0.0, 0.5, -1.0, 1.0, -0.75, 0.5, 0.25, -0.25, -0.25, ]);
    const array2 = new Float32Array([0.0, -0.25, -1.0, -0.5, -1.0, 0.75, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, 0.75, 1.0, 1.0, 1.0, 0.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, 0.25, 0.5, 1.0, -0.75, 0.75, 1.0, -0.25, 0.0, -0.5, -0.5, 0.0, 0.75, 0.25, -0.75, -1.0, -1.0, -0.5, 0.5, -0.75, 0.0, 0.75, 0.25, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.5, -0.75, 0.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.25, 1.0, 0.75, 1.0, 1.0, 0.5, 0.75, -1.0, 1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, 1.0, -0.5, 0.5, 0.75, 0.5, 0.5, -0.5, -0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.25, -0.25, 0.25, 0.0, 0.5, ]);
    
    
    const array3 = new Float32Array([-1.0, -1.0, 0.75, 0.75, 0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -0.25, 0.25, -1.0, -0.75, 1.0, 0.25, -0.25, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, -0.25, 0.5, 0.0, 0.75, 0.75, 0.75, 1.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.5, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.0, -1.0, -0.5, -1.0, -0.25, -0.25, -0.75, -0.25, -0.75, -0.25, 0.5, -0.25, 0.5, -0.5, 0.25, 0.0, -0.75, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, -1.0, -0.75, -0.5, -0.75, 0.5, 0.0, 0.0, 0.25, 0.75, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, 0.75, -1.0, 1.0, 0.75, -0.5, -0.75, 1.0, -0.25, -0.5, -0.75, 0.0, -1.0, 1.0, ]);
    const array4 = new Float32Array([0.25, 0.25, 0.75, -0.25, 1.0, 0.75, 0.5, -1.0, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 0.75, -1.0, -1.0, -0.5, -0.25, -1.0, -1.0, -1.0, 1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.5, 0.75, 1.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.5, 0.5, 0.25, 0.5, 0.0, 0.75, 1.0, 0.0, 1.0, -0.75, 0.25, 0.75, -0.5, -0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.0, -0.5, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -1.0, 0.0, -0.75, -0.75, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, -0.75, 0.5, 1.0, -0.5, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array5 = new Float32Array([0.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 0.5, 0.0, 1.0, 0.75, -0.5, 0.0, -0.75, -0.75, 0.0, -1.0, -0.5, -0.5, 0.5, 0.25, 0.0, -0.75, 1.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, -0.25, -1.0, -0.5, 0.75, -0.75, -0.25, -0.25, 0.0, 0.25, -0.25, 0.5, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 1.0, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, 0.0, 0.5, 0.75, 0.75, -1.0, 0.75, 0.75, 0.75, 0.25, -0.25, 0.75, -0.5, 0.5, -0.5, -0.75, 0.75, 0.75, -0.75, 0.5, 0.0, 0.25, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, ]);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device10.destroy();
    
    const array6 = new Float32Array([1.0, 1.0, -1.0, 1.0, 0.5, 0.75, 1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, -0.25, -1.0, -0.5, 0.75, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, -0.5, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, 1.0, 1.0, 0.25, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, -0.75, -0.25, 0.0, -0.5, -0.5, -0.5, -1.0, 0.5, 0.0, 1.0, -0.5, -1.0, -0.25, 0.0, 0.25, 0.75, 0.5, -0.75, 0.5, 0.25, 0.0, 0.0, -0.25, -0.75, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.5, -0.75, -0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 1.0, 0.75, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    const array7 = new Float32Array([0.5, -0.75, 0.75, 0.75, 0.0, -1.0, -0.75, -0.75, -0.25, 1.0, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.75, 0.5, 0.75, 1.0, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 0.5, 0.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.75, 1.0, 0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -0.25, 0.25, 0.0, -0.75, -1.0, -0.75, -0.25, -0.75, -0.25, -0.5, -0.75, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 0.25, -0.75, 0.0, 0.75, 0.5, 0.0, 0.75, 0.5, 0.0, 0.0, -0.5, 0.0, 0.5, 0.25, 1.0, -0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.destroy();
    device50.pushErrorScope("internal");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.pushErrorScope("validation");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const array8 = new Float32Array([-0.75, -0.75, -1.0, -0.5, 1.0, 1.0, -1.0, 0.5, -0.75, 0.5, -0.5, 0.5, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 1.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 1.0, -1.0, 0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, 0.5, 0.75, -0.75, -1.0, -0.5, 1.0, -0.5, -0.25, -1.0, 0.25, -0.5, 0.25, -0.75, 0.25, 0.75, 0.0, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, 0.75, -0.75, -1.0, 1.0, -1.0, 0.75, 0.25, 1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 0.0, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query500.destroy()
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
    
    command_encoder400.copyTextureToTexture(
        {
            texture: texture401
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.pushErrorScope("validation");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.5, 0.0, 0.75, -0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 0.25, 0.25, -1.0, 0.0, -0.25, 0.5, -0.25, 0.5, -0.25, 1.0, 0.75, 0.25, -1.0, -1.0, -0.75, -1.0, -0.25, 0.0, -0.25, -0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -0.25, -1.0, -0.5, 0.0, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, -1.0, -0.75, 0.5, 0.0, 0.5, 0.5, -0.25, 0.0, 0.25, 0.5, 1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -0.5, -0.25, -0.25, -0.75, -0.25, -0.75, 0.0, 1.0, 0.25, 0.0, -0.75, -0.25, 1.0, -1.0, -0.25, 0.5, 1.0, -0.5, -0.75, -1.0, -1.0, 1.0, 0.25, -1.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, -0.5, -0.25, 1.0, 0.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.5, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array10 = new Float32Array([0.5, 0.75, 0.25, 1.0, 0.5, -0.25, 0.75, 0.25, -1.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.0, 0.0, -0.75, -0.5, 0.25, 0.0, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.5, -0.5, -1.0, -0.75, 0.0, -0.25, 1.0, -0.5, -0.25, 0.0, -0.5, 1.0, -1.0, 0.25, 0.0, 0.5, 0.25, -1.0, 1.0, -0.5, -0.75, 0.0, -0.5, -0.5, 1.0, 0.5, -0.75, -0.25, -0.75, 1.0, -1.0, 0.75, 0.0, 0.75, 0.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, -1.0, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -0.25, 0.5, 1.0, 1.0, -1.0, -0.25, -0.75, 1.0, ]);
    
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    device60.pushErrorScope("out-of-memory");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    device50.destroy();
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
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
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const array11 = new Float32Array([-1.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.25, -0.75, -0.75, -1.0, 0.25, -0.25, 0.5, 0.0, 0.25, 0.0, -1.0, 0.75, 1.0, -1.0, 1.0, -0.5, -0.25, -0.5, -1.0, 1.0, -0.5, -0.25, -0.25, 0.25, -0.25, 0.25, 0.5, 0.25, 0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, 1.0, 0.0, 0.75, 0.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, -0.75, -0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.0, -0.75, 0.75, -1.0, 1.0, 0.25, 0.5, -1.0, 0.0, -0.5, 0.25, 0.25, -1.0, 0.75, -0.25, -0.5, ]);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device60.queue.writeBuffer(buffer600, 0, array11, 0, array11.length);
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
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
    device50.pushErrorScope("validation");
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const command_buffer601 = command_encoder601.finish();
    
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer600.destroy()
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    texture600.destroy();
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    compute_pass_encoder6000.popDebugGroup()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const array12 = new Float32Array([0.0, 0.75, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, -1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, 1.0, 0.75, 0.25, -0.5, 0.75, -0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, -0.25, -0.75, -0.75, -1.0, 0.25, -0.25, -0.5, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 0.0, -1.0, -1.0, 0.5, -0.75, -0.75, -0.5, -0.75, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, -0.5, -0.25, -0.5, 0.75, 0.25, 0.0, -1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 0.75, -1.0, 0.25, 0.25, 0.0, 1.0, 0.5, 0.0, -0.75, 1.0, ]);
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array13 = new Float32Array([0.75, 0.75, 0.25, -0.75, -0.25, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, -0.75, 0.75, 0.25, -0.25, -0.75, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, -0.25, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, -0.75, -0.5, 0.5, -0.75, 0.25, -0.75, -0.75, 0.5, 0.0, 0.75, -0.75, 0.5, 0.75, 0.0, 0.5, -1.0, -0.5, 1.0, 0.5, -0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.25, 0.75, 0.75, 0.5, 0.5, 0.25, 1.0, 1.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, 0.5, -0.25, 0.5, -0.5, -1.0, 0.5, 0.25, -0.25, -0.25, -0.75, 0.75, -1.0, -1.0, -1.0, -0.25, 1.0, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, -0.5, -0.5, ]);
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    
    
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const array14 = new Float32Array([0.25, -0.25, 0.25, -0.5, -0.25, 0.25, 0.5, 0.75, -1.0, 0.25, -0.25, -0.75, 0.5, -1.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.0, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, 1.0, -0.75, 0.0, 0.0, -0.5, -0.25, 0.0, 1.0, -1.0, 0.75, -0.25, 0.25, 0.5, -1.0, 0.5, -0.75, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -1.0, 0.0, 0.5, 0.75, 1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.25, 0.25, 0.25, 0.25, 1.0, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 0.5, 1.0, 0.25, -0.5, 0.75, 0.0, -0.25, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 0.0, 1.0, 1.0, -0.5, 0.0, 1.0, 1.0, ]);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query000.destroy()
    
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    query700.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device60.queue.writeTexture({ texture: texture602 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    query700.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.queue.writeTexture({ texture: texture602 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setStencilReference(1);
    
    command_encoder602.insertDebugMarker("mymarker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device60.queue.writeTexture({ texture: texture600 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    query000.destroy()
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture403 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder6040 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    render_pass_encoder6040.insertDebugMarker("marker");
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    texture602.destroy();
    render_pass_encoder6040.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    render_pass_encoder6040.beginOcclusionQuery(0)
    compute_pass_encoder6020.setPipeline(compute_pipeline601);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    render_pass_encoder6040.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    compute_pass_encoder6030.setPipeline(compute_pipeline601);
    command_encoder603.pushDebugGroup("mygroupmarker")
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder6000.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture602 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6000.setStencilReference(1);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    texture300.destroy();
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
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
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_pass_encoder6000.insertDebugMarker("marker");
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder6000.pushDebugGroup("group_marker");
    render_pass_encoder6030.setPipeline(render_pipeline600);
    render_pass_encoder6040.endOcclusionQuery()
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder6000.executeBundles([])
    render_pass_encoder6040.setPipeline(render_pipeline600);
    compute_pass_encoder6020.insertDebugMarker("marker")
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    const render_pass_encoder6041 = command_encoder604.beginRenderPass({
        label: "render_pass_encoder6041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group601);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer606, 0);
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout604,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    buffer601.destroy()
    query600.destroy()
    query602.destroy()
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder6030.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    render_pass_encoder6040.endOcclusionQuery()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.executeBundles([])
    device60.queue.writeBuffer(buffer603, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer606, 0, array13, 0, array13.length);
    compute_pass_encoder6030.insertDebugMarker("marker")
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6030.pushDebugGroup("group_marker");
    render_pass_encoder6020.setStencilReference(1);
    
    device60.queue.writeBuffer(buffer606, 0, array3, 0, array3.length);
    buffer602.destroy()
    render_pass_encoder6041.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6000.setPipeline(render_pipeline600);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer608, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer608, 0);
    render_pass_encoder6040.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture403 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout603,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6030.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer608, 0, array3, 0, array3.length);
    buffer608.destroy()
    query601.destroy()
    texture600.destroy();
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group602);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder6020.setPipeline(render_pipeline600);
    render_pass_encoder6041.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    device60.queue.writeBuffer(buffer606, 0, array2, 0, array2.length);
    
    query601.destroy()
    device60.queue.writeBuffer(buffer606, 0, array1, 0, array1.length);
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout602,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_pass_encoder6040.endOcclusionQuery()
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6020.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer606, 0, array8, 0, array8.length);
    device60.queue.writeBuffer(buffer609, 0, array9, 0, array9.length);
    const render_pass_encoder6001 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder6001.setPipeline(render_pipeline602);
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    device60.queue.writeBuffer(buffer608, 0, array14, 0, array14.length);
    device60.queue.writeBuffer(buffer609, 0, array10, 0, array10.length);
    render_pass_encoder6041.setStencilReference(1);
    compute_pass_encoder6000.popDebugGroup()
    buffer603.destroy()
    render_pass_encoder6041.setPipeline(render_pipeline600);
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer6010, 0, array6, 0, array6.length);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    render_bundle_encoder600.setVertexBuffer(0, buffer6011);
    render_pass_encoder6040.setStencilReference(1);
    render_pass_encoder6001.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout606,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer609, 0, array3, 0, array3.length);
    
    query602.destroy()
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6012, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6012, 0);
    device60.queue.writeBuffer(buffer606, 0, array3, 0, array3.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6000.popDebugGroup();
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer6012, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer6012, 0, array0, 0, array0.length);
    const render_pass_encoder6021 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6011,
            },
        ],
        occlusionQuerySet: query601
    });
    texture601.destroy();
    device60.pushErrorScope("out-of-memory");
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    buffer604.destroy()
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    query602.destroy()
    
    device60.queue.writeBuffer(buffer606, 0, array9, 0, array9.length);
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group603);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    render_pass_encoder6000.setStencilReference(1);
    render_bundle_encoder600.drawIndirect(buffer601, 0);
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device60.queue.writeBuffer(buffer6012, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer6013, 0, array6, 0, array6.length);
    buffer605.destroy()
    render_pass_encoder6000.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer6012, 0, array7, 0, array7.length);
    
    buffer6014.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder6021.executeBundles([])
    compute_pass_encoder6030.end();
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder6020.pushDebugGroup("group_marker");
    
    render_pass_encoder6021.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer606, 0, array12, 0, array12.length);
    device60.queue.writeBuffer(buffer6012, 0, array13, 0, array13.length);
    
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    render_pass_encoder6041.popDebugGroup();
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    render_pass_encoder6041.setStencilReference(1);
    device60.queue.writeBuffer(buffer6012, 0, array13, 0, array13.length);
    compute_pass_encoder6000.popDebugGroup()
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group604);
    device60.queue.writeBuffer(buffer6012, 0, array14, 0, array14.length);
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer6012, 0, array13, 0, array13.length);
    device60.queue.writeBuffer(buffer6010, 0, array5, 0, array5.length);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const bind_group_layout606 = device60.createBindGroupLayout({ 
        label: "bind_group_layout606",
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
    render_pass_encoder6001.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer6012, 0, array6, 0, array6.length);
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder6030.setVertexBuffer(0, buffer6011);
    texture401.destroy();
    render_pass_encoder6041.setStencilReference(1);
    
    render_pass_encoder6020.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    buffer606.destroy()
    
    compute_pass_encoder6020.dispatchWorkgroups(100);
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    render_pass_encoder6001.setBindGroup(0, bind_group605);
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    render_pass_encoder6001.setVertexBuffer(0, buffer6011);
    render_pass_encoder6001.drawIndirect(buffer608, 0);
    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6020,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group606);
    render_pass_encoder6021.setPipeline(render_pipeline600);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    render_pass_encoder6041.setBindGroup(0, bind_group607);
    render_pass_encoder6030.setIndexBuffer(buffer604, "uint16");
    const command_buffer602 = command_encoder602.finish();
    render_pass_encoder6030.drawIndexed(3);
    render_pass_encoder6030.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6041.setVertexBuffer(0, buffer605);
    render_pass_encoder6021.popDebugGroup();
    render_pass_encoder6041.setIndexBuffer(buffer6015, "uint16");
    render_pass_encoder6041.drawIndexedIndirect(buffer608, 0);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder6041.draw(3);
    render_pass_encoder5000.popDebugGroup();
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group608);
    render_pass_encoder6000.setVertexBuffer(0, buffer6012);
    render_pass_encoder6021.endOcclusionQuery()
    render_pass_encoder6020.setVertexBuffer(0, buffer6011);
    render_pass_encoder6020.drawIndirect(buffer600, 0);
    render_pass_encoder6000.drawIndirect(buffer601, 0);
    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6026,
                },
            },
        ],
    });

    render_pass_encoder6021.setBindGroup(0, bind_group609);
    render_pass_encoder6021.setVertexBuffer(0, buffer6010);
    render_pass_encoder6021.draw(3);
    compute_pass_encoder6030.end();
    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6028,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6010);
    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6030 = device60.createBuffer({
        label: "buffer6030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6030,
                },
            },
        ],
    });

    render_pass_encoder6040.setBindGroup(0, bind_group6011);
    render_pass_encoder6021.end();
    render_pass_encoder6030.drawIndirect(buffer608, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6040.setVertexBuffer(0, buffer6019);
    render_pass_encoder6001.end();
    render_pass_encoder6040.setIndexBuffer(buffer6024, "uint16");
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6041.end();
    render_pass_encoder6000.drawIndirect(buffer603, 0);
    render_pass_encoder6030.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6040.setIndexBuffer(buffer6013, "uint16");
    compute_pass_encoder6020.end();
    const buffer6031 = device60.createBuffer({
        label: "buffer6031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6032 = device60.createBuffer({
        label: "buffer6032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6012 = device60.createBindGroup({
        label: "bind_group6012",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6032,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6012);
    render_pass_encoder6040.end();
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6030.popDebugGroup();
    const buffer6033 = device60.createBuffer({
        label: "buffer6033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6034 = device60.createBuffer({
        label: "buffer6034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6013 = device60.createBindGroup({
        label: "bind_group6013",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6034,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6013);
    render_pass_encoder6001.drawIndirect(buffer606, 0);
    render_pass_encoder6030.drawIndirect(buffer608, 0);
    render_pass_encoder6001.drawIndirect(buffer6016, 0);
    render_pass_encoder6000.drawIndirect(buffer607, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6020.drawIndirect(buffer607, 0);
    compute_pass_encoder6020.end();
    render_pass_encoder6041.draw(3);
    render_pass_encoder6001.drawIndirect(buffer6012, 0);
    const buffer6035 = device60.createBuffer({
        label: "buffer6035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6036 = device60.createBuffer({
        label: "buffer6036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6014 = device60.createBindGroup({
        label: "bind_group6014",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6036,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6014);
    command_encoder603.popDebugGroup()
    compute_pass_encoder6000.end();
    render_pass_encoder6021.drawIndirect(buffer603, 0);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6021.drawIndirect(buffer608, 0);
    render_pass_encoder6030.drawIndirect(buffer6030, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer601, 0);
    const command_buffer604 = command_encoder604.finish();
    const command_buffer603 = command_encoder603.finish();
    compute_pass_encoder6030.popDebugGroup()
    render_pass_encoder6000.drawIndirect(buffer6032, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6040.drawIndexed(3);
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6041.setIndexBuffer(buffer601, "uint16");
    compute_pass_encoder6030.end();
    render_pass_encoder6001.drawIndirect(buffer601, 0);
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    render_pass_encoder6021.end();
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder6021.setIndexBuffer(buffer600, "uint16");
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6037 = device60.createBuffer({
        label: "buffer6037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6037, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6037, 0);
    device00.queue.submit([]);
    render_pass_encoder6021.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6040.setIndexBuffer(buffer6023, "uint16");
    render_pass_encoder6020.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder6021.drawIndirect(buffer6026, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6040.drawIndirect(buffer6012, 0);
    render_pass_encoder6030.drawIndirect(buffer606, 0);
    render_pass_encoder6030.draw(3);
    render_pass_encoder6020.drawIndirect(buffer6037, 0);
    render_pass_encoder6020.end();
    device60.queue.submit([command_buffer602, command_buffer603, ]);
    render_pass_encoder6041.popDebugGroup();
    compute_pass_encoder6000.end();
    render_pass_encoder6020.setIndexBuffer(buffer6033, "uint16");
    render_pass_encoder6000.end();
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder6040.drawIndexedIndirect(buffer600, 0);
    render_pass_encoder6020.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6001.draw(3);
    render_pass_encoder6021.endOcclusionQuery()
    render_pass_encoder6020.setIndexBuffer(buffer6033, "uint16");
    render_pass_encoder6040.setIndexBuffer(buffer607, "uint16");
    render_pass_encoder6041.drawIndexedIndirect(buffer6027, 0);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder6030.drawIndexedIndirect(buffer606, 0);
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6038 = device60.createBuffer({
        label: "buffer6038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6038, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6038, 0);
    render_pass_encoder6000.drawIndirect(buffer607, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6030.drawIndirect(buffer607, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6021.end();
    render_pass_encoder6020.popDebugGroup();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder6041.drawIndexedIndirect(buffer6037, 0);
    render_pass_encoder6021.drawIndexedIndirect(buffer606, 0);
    render_pass_encoder6041.drawIndirect(buffer608, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6041.drawIndexedIndirect(buffer6032, 0);
    device60.queue.submit([command_buffer602, ]);
    render_pass_encoder6001.drawIndirect(buffer608, 0);
    render_pass_encoder6040.popDebugGroup();
    render_pass_encoder6041.drawIndirect(buffer603, 0);
    const buffer6039 = device60.createBuffer({
        label: "buffer6039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6040 = device60.createBuffer({
        label: "buffer6040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6015 = device60.createBindGroup({
        label: "bind_group6015",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6040,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6015);
    render_pass_encoder6021.end();
    render_pass_encoder6030.end();
    render_pass_encoder6020.drawIndexedIndirect(buffer607, 0);
    render_pass_encoder6030.draw(3);
    const buffer6041 = device60.createBuffer({
        label: "buffer6041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6042 = device60.createBuffer({
        label: "buffer6042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6016 = device60.createBindGroup({
        label: "bind_group6016",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6042,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group6016);
    render_pass_encoder6000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder6040.drawIndexedIndirect(buffer601, 0);
    device60.queue.submit([command_buffer601, command_buffer603, ]);
    render_pass_encoder6000.drawIndirect(buffer6029, 0);
    render_pass_encoder6040.drawIndirect(buffer608, 0);
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder6020.setIndexBuffer(buffer603, "uint16");
    render_pass_encoder6020.drawIndirect(buffer6026, 0);
    render_pass_encoder6000.drawIndirect(buffer6012, 0);
    render_pass_encoder6000.popDebugGroup();
    render_pass_encoder6020.drawIndirect(buffer605, 0);
    render_pass_encoder6040.setIndexBuffer(buffer6028, "uint16");
    compute_pass_encoder6030.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6021.end();
    render_pass_encoder6001.drawIndirect(buffer608, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6038, 0);
    render_pass_encoder6041.drawIndexedIndirect(buffer608, 0);
    render_pass_encoder6020.draw(3);
    device60.queue.submit([]);
    device60.queue.submit([command_buffer603, ]);
    render_pass_encoder6000.drawIndirect(buffer6038, 0);
    render_pass_encoder6041.drawIndirect(buffer6038, 0);
    render_pass_encoder6020.drawIndexedIndirect(buffer601, 0);
    render_pass_encoder6040.end();
    render_pass_encoder6001.end();
    render_pass_encoder6020.end();
    render_pass_encoder6030.popDebugGroup();
    render_pass_encoder6020.setIndexBuffer(buffer606, "uint16");
    const buffer6043 = device60.createBuffer({
        label: "buffer6043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6044 = device60.createBuffer({
        label: "buffer6044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6017 = device60.createBindGroup({
        label: "bind_group6017",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6044,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group6017);
    render_pass_encoder6021.drawIndirect(buffer6027, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6030.drawIndirect(buffer601, 0);
    render_pass_encoder6001.end();
    device60.queue.submit([command_buffer603, command_buffer604, ]);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6045 = device60.createBuffer({
        label: "buffer6045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6045, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6045, 0);
    render_pass_encoder6020.drawIndirect(buffer6029, 0);
    render_pass_encoder6001.drawIndirect(buffer6011, 0);
    render_pass_encoder6040.drawIndirect(buffer6012, 0);
    render_pass_encoder6020.drawIndexedIndirect(buffer6020, 0);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    const buffer6046 = device60.createBuffer({
        label: "buffer6046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6047 = device60.createBuffer({
        label: "buffer6047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6018 = device60.createBindGroup({
        label: "bind_group6018",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6047,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group6018);
    render_pass_encoder6040.end();
    render_pass_encoder6040.drawIndexedIndirect(buffer6033, 0);
    render_pass_encoder6001.end();
    render_pass_encoder6021.popDebugGroup();
    render_pass_encoder6000.end();
    render_pass_encoder6000.drawIndirect(buffer6035, 0);
    render_pass_encoder6001.setIndexBuffer(buffer6014, "uint16");
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6048 = device60.createBuffer({
        label: "buffer6048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6048, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6048, 0);
    render_pass_encoder6041.end();
    render_pass_encoder6030.drawIndirect(buffer6037, 0);
    render_pass_encoder6040.drawIndexedIndirect(buffer6016, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6012, 0);
    render_pass_encoder6020.drawIndexedIndirect(buffer6019, 0);
    render_pass_encoder5000.popDebugGroup();
    compute_pass_encoder6030.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6049 = device60.createBuffer({
        label: "buffer6049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6049, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6049, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device70.queue.submit([]);
    render_pass_encoder6041.drawIndirect(buffer6017, 0);
    render_pass_encoder6020.setIndexBuffer(buffer6040, "uint16");
    render_pass_encoder6030.end();
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder6000.drawIndirect(buffer6048, 0);
    render_pass_encoder6000.draw(3);
    device60.queue.submit([command_buffer604, ]);
    render_pass_encoder6000.drawIndirect(buffer6023, 0);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder6020.drawIndirect(buffer6012, 0);
    render_pass_encoder6021.drawIndirect(buffer601, 0);
    render_pass_encoder6001.drawIndexedIndirect(buffer6032, 0);
    render_pass_encoder6001.drawIndirect(buffer608, 0);
    render_pass_encoder6040.drawIndirect(buffer6037, 0);
    render_pass_encoder6041.drawIndirect(buffer608, 0);
    render_pass_encoder6030.drawIndexedIndirect(buffer6047, 0);
    render_pass_encoder6001.popDebugGroup();
    render_pass_encoder6001.setIndexBuffer(buffer6014, "uint16");
    render_pass_encoder6020.drawIndirect(buffer6045, 0);
}