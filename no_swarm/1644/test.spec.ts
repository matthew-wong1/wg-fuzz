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
    
    const array0 = new Float32Array([-0.75, 0.75, -1.0, -0.25, 1.0, -1.0, 0.5, 0.0, -1.0, 1.0, 1.0, -0.5, -0.75, -0.5, 0.0, 1.0, 0.0, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, -0.75, -0.5, -0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, 0.25, -0.25, -1.0, 0.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.5, 0.0, 0.0, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 0.0, 1.0, 0.75, 0.5, 1.0, -0.5, 1.0, 0.5, 0.5, 0.25, 0.75, 0.75, 0.25, 0.75, -0.25, 0.0, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, 0.0, -0.25, 0.25, -0.25, 0.5, -0.5, 1.0, 0.5, 0.5, 0.0, -0.25, -0.25, 0.75, 0.25, ]);
    const array1 = new Float32Array([1.0, 1.0, 1.0, 0.75, -0.75, -1.0, 0.75, 0.25, 1.0, -0.75, -0.5, 0.5, 0.75, 0.25, -0.75, 0.5, -0.5, 1.0, 0.75, 0.0, -0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, 0.0, -0.5, -0.5, 1.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, -0.25, 0.75, -0.75, 0.0, -1.0, 0.25, 0.25, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 1.0, 0.0, -1.0, -1.0, 0.5, 0.5, 1.0, -1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.5, -0.5, -0.75, -1.0, 0.75, -0.75, 0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.75, 0.5, 0.75, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.75, 0.0, 0.75, 0.25, 0.25, 0.5, 0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.25, -0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.25, 0.25, -0.75, -0.25, -0.25, -1.0, 0.5, 0.5, -0.75, -0.25, 0.0, 1.0, 0.75, 0.5, -0.75, 0.0, 0.5, 0.0, -0.25, -0.5, -0.25, 0.25, -0.25, 0.0, -0.75, 1.0, 0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 0.5, 0.75, -0.25, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, -0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, -0.25, 0.0, 0.5, 0.75, 0.75, -0.75, 0.75, -0.5, 0.0, -0.75, 0.25, 1.0, 0.75, ]);
    const array3 = new Float32Array([-0.75, 1.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.5, -0.25, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.25, -1.0, -0.75, 0.25, -0.25, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, -0.25, -0.75, 0.25, -0.5, 0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -1.0, -0.5, -0.5, -0.25, 1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.5, -0.5, -0.5, 0.5, -0.75, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -1.0, 0.25, -0.25, 1.0, 0.25, 0.5, 0.25, -1.0, -1.0, 1.0, 0.25, 0.25, -1.0, 0.75, 0.5, 1.0, 1.0, 0.75, 0.5, 0.0, 0.75, -0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.25, -0.5, -0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, ]);
    const array4 = new Float32Array([0.25, -0.75, 0.25, 1.0, -0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, -1.0, 0.0, -1.0, 0.0, 0.25, 0.5, -0.5, -0.75, 0.5, 0.0, 1.0, 0.0, 0.25, -0.25, 0.5, 0.0, -0.75, 1.0, -0.75, 0.75, 0.5, -1.0, 0.0, -1.0, -0.5, 0.25, 1.0, 0.25, 0.25, 1.0, 0.25, -0.5, 0.25, -0.25, -1.0, 1.0, -0.75, -0.25, 0.25, 1.0, 0.5, 1.0, 0.5, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, 1.0, 0.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.75, 0.75, -1.0, -0.75, 0.75, -1.0, -0.75, 0.75, 1.0, 0.5, 0.0, 0.5, 0.75, -0.5, 1.0, 1.0, -0.75, 1.0, 0.75, 0.0, 0.0, 1.0, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, -0.5, -1.0, 1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([-0.75, 0.25, 0.0, -1.0, 1.0, 0.75, -0.75, -0.25, 0.5, 0.5, -0.25, -0.75, -0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, 0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.75, 0.5, 0.25, -0.5, 0.75, 0.0, -0.25, 0.5, -0.5, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, 0.0, -1.0, -0.25, -0.75, -1.0, 1.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.5, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, -0.5, -0.75, 0.0, 0.25, -0.5, -1.0, 1.0, 0.25, -0.75, 0.5, -0.5, -1.0, -0.25, -0.5, 0.0, -0.5, -1.0, 1.0, 0.25, 0.0, 1.0, -0.25, ]);
    
    const array6 = new Float32Array([1.0, -0.25, -0.25, 0.75, -0.5, 0.0, 0.0, 0.5, -1.0, -0.5, -0.5, -1.0, -0.75, 1.0, 0.25, -0.25, -0.5, 0.0, 0.0, 0.25, 0.25, 0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 0.25, 0.25, 0.75, 0.0, -0.75, 0.25, 0.75, -0.5, 0.75, 1.0, 0.5, 0.5, -0.5, -0.75, -0.25, 0.5, -0.5, 0.5, -0.25, -0.5, -0.75, 0.25, 0.5, -0.75, -1.0, 0.25, -1.0, 0.5, 1.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.75, -0.75, 0.0, -0.5, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 0.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.5, ]);
    const array7 = new Float32Array([-0.5, -0.75, 0.75, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, -0.5, 1.0, -0.75, 0.5, 0.25, 0.5, 0.5, 0.75, -0.25, -0.75, -0.75, 0.5, -0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, 0.75, -0.75, 0.25, -1.0, -0.75, 1.0, 0.5, 1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 1.0, -0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, -0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 0.0, -1.0, 0.5, 1.0, 0.25, -0.25, 0.75, 0.75, 0.25, -1.0, -0.25, 0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 0.75, -0.5, 0.0, 0.75, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, -0.25, -0.25, 0.5, ]);
    const array8 = new Float32Array([0.25, -1.0, -1.0, -0.5, -0.25, 0.25, -0.5, -0.5, 0.75, 0.5, -0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -1.0, 1.0, -1.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.75, -0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 1.0, 0.5, -0.5, 0.25, -0.5, -0.75, -0.5, 0.5, 0.25, -1.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, -0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 0.5, -1.0, 0.25, -0.5, 1.0, 0.0, 0.5, -1.0, 0.75, -0.75, -0.75, 0.5, -0.25, -0.5, -1.0, -0.5, 0.25, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, 0.0, 0.0, 0.5, 0.75, 0.0, 0.75, -0.25, 0.25, 0.25, -1.0, -0.75, 1.0, -1.0, 1.0, -1.0, 1.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array9 = new Float32Array([-0.5, 0.75, 0.75, 0.75, 0.5, -0.5, 1.0, 0.5, 1.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.25, -1.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.25, -0.75, 0.0, -0.5, 0.75, 0.75, -0.5, -1.0, -0.5, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, 0.0, 0.0, 0.25, 1.0, 0.75, -0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.75, -0.75, 0.25, 0.75, 0.25, -0.75, 0.5, 0.75, 1.0, 1.0, 1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, 0.75, -0.25, 0.0, 0.5, -1.0, -0.5, 0.75, 0.5, -0.75, -0.75, 0.0, -0.75, -0.75, -0.5, 0.5, -0.75, 0.25, -1.0, 0.75, -0.5, -0.75, 0.75, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.pushErrorScope("validation");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    buffer100.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array10 = new Float32Array([0.75, -0.75, 0.0, 1.0, 0.0, 0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.5, 1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.75, -0.5, 1.0, 0.5, 0.0, 0.5, -0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.5, 0.0, -1.0, -0.75, 0.0, 0.0, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.25, -1.0, -0.75, -0.25, 1.0, -1.0, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, -0.5, -0.75, -1.0, 0.5, 0.25, -0.25, 0.75, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 1.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.5, -0.75, 1.0, -0.5, 0.5, -0.75, ]);
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.submit([]);
    
    
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer200.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture101.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    texture201.destroy();
    const array11 = new Float32Array([0.25, 1.0, -0.25, 1.0, 1.0, 0.5, -0.75, 0.0, 0.75, 0.5, 1.0, 0.25, -0.25, 0.25, 0.0, -0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, -0.75, -0.5, -0.75, -1.0, 0.5, 0.75, -0.25, -0.25, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, 1.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.5, -0.5, 0.0, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.5, 1.0, 0.0, -1.0, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 0.5, -0.25, 0.0, 0.75, -0.75, 0.75, 0.0, 0.5, 0.0, 0.5, 1.0, -0.25, 0.5, -0.5, 1.0, -1.0, 0.25, -0.75, -0.25, -0.25, 1.0, -0.25, ]);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.popDebugGroup()
    texture202.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("validation");
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture300.destroy();
    
    
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    query100.destroy()
    
    render_pass_encoder1000.executeBundles([])
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device10.destroy();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    device30.queue.submit([]);
    const array12 = new Float32Array([0.0, 0.25, -0.25, -0.25, -1.0, -0.75, -0.75, -0.5, -0.5, -0.25, 0.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.75, 1.0, -1.0, 0.25, -1.0, 0.75, -0.5, 0.0, 0.75, 0.75, -0.25, -0.75, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, 0.75, -0.75, 0.25, -1.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, -0.5, -0.5, 1.0, 0.5, -0.75, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, -1.0, 0.25, -0.25, 1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, 0.5, 0.75, 0.25, 0.5, 0.0, 0.0, 0.75, -0.5, 0.0, -0.75, -0.75, -0.25, 0.75, 0.75, 0.25, 0.25, -0.5, 1.0, -0.75, 0.0, -0.75, 0.75, 1.0, -0.5, ]);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.pushErrorScope("validation");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder300.popDebugGroup();
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    render_bundle_encoder300.popDebugGroup();
    device00.pushErrorScope("validation");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    const array13 = new Float32Array([0.75, -0.5, -0.25, 0.25, 1.0, -1.0, 0.75, 0.5, 0.0, 0.25, -0.75, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.25, -0.75, -0.75, 0.5, 1.0, -0.75, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, -0.5, 0.0, 0.5, -0.25, 0.75, 0.25, 0.0, -0.75, 0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, -0.5, 0.0, 0.5, 0.75, 1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -0.5, -0.75, -1.0, -1.0, 0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 1.0, -0.75, 1.0, 0.5, -0.5, -0.5, -0.5, -0.25, -0.5, 0.0, -0.25, 1.0, -0.5, 0.25, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, -1.0, 1.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.25, -0.5, 0.75, ]);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline303);
    query301.destroy()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    texture302.destroy();
    query302.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    query300.destroy()
    query200.destroy()
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    buffer300.destroy()
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture301.destroy();
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture200.destroy();
    compute_pass_encoder3000.popDebugGroup()
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    query303.destroy()
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer303.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.setPipeline(render_pipeline303);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query301.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device20.queue.writeBuffer(buffer203, 0, array13, 0, array13.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    texture204.destroy();
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder3020.setPipeline(render_pipeline307);
    
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    command_encoder202.insertDebugMarker("mymarker");
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer201, 0, array12, 0, array12.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    render_bundle_encoder201.popDebugGroup();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array13, 0, array13.length);
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder201.clearBuffer(buffer204);
    compute_pass_encoder2030.setPipeline(compute_pipeline205);
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline205);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    buffer207.destroy()
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    command_encoder202.clearBuffer(buffer202);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder201.copyBufferToBuffer(
        buffer205,
        0,
        buffer200,
        0,
        400
    );
    compute_pass_encoder2011.setPipeline(compute_pipeline206);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    texture203.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture000 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    {
        await buffer209.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer209.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer209.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const array14 = new Float32Array([0.75, 0.25, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -0.5, -0.75, -1.0, 0.0, 0.0, 1.0, -0.25, 0.0, -0.75, 0.5, 0.5, -0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, -0.25, -0.5, 0.75, 0.0, 0.0, -0.5, -0.25, -0.25, 0.0, 0.0, 0.5, 1.0, 0.5, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, -0.5, -0.5, -0.25, -0.25, 0.25, -0.75, 0.75, -0.75, 0.0, -0.5, -1.0, 0.0, 0.75, 0.75, 0.75, 0.5, 0.0, -0.75, 0.75, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setStencilReference(1);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array8, 0, array8.length);
    
    
    device20.queue.writeBuffer(buffer209, 0, array12, 0, array12.length);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer206,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2011.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer401, 0, array14, 0, array14.length);
    buffer208.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    query400.destroy()
    query400.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder205.clearBuffer(buffer203);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder204.clearBuffer(buffer209);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device20.queue.writeBuffer(buffer209, 0, array10, 0, array10.length);
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer401.destroy()
    buffer001.destroy()
    device20.queue.writeBuffer(buffer2011, 0, array5, 0, array5.length);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout209,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    render_pass_encoder2020.setPipeline(render_pipeline201);
    buffer2011.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    command_encoder205.popDebugGroup()
    texture400.destroy();
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline206.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group202);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2014, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2014, 0);
    render_pass_encoder2040.setPipeline(render_pipeline201);
    const command_buffer302 = command_encoder302.finish();
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group203);
    command_encoder203.popDebugGroup()
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder2020.popDebugGroup();
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group205);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group206);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2023, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2011.end();
    render_pass_encoder2000.setVertexBuffer(0, buffer2023);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2000.draw(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2024, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.popDebugGroup();
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    render_pass_encoder2040.setVertexBuffer(0, buffer201);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2023, 0);
    render_pass_encoder2040.drawIndirect(buffer2018, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2040.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer2014);
    compute_pass_encoder2030.end();
    render_pass_encoder2040.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2024, 0);
    compute_pass_encoder2010.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2020.end();
    command_encoder200.popDebugGroup()
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2010.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer208, 0);
    command_encoder000.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer203, ]);
    command_encoder201.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2040.drawIndirect(buffer2014, 0);
    command_encoder202.popDebugGroup()
    render_pass_encoder2040.draw(3);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2040.end();
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2040.drawIndexed(3);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2020.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2029, 0);
    device30.queue.submit([]);
    device40.queue.submit([]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
}