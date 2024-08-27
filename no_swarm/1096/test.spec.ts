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
    const array0 = new Float32Array([0.0, 0.0, 0.0, -0.25, -0.5, 0.0, -0.25, 0.0, 0.25, 0.75, 0.75, -0.25, -0.5, -1.0, 1.0, -0.5, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, 0.5, -0.75, 0.75, 0.5, -1.0, 0.5, 1.0, 0.0, 0.25, -0.25, 1.0, 0.0, -0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 1.0, 0.25, 0.0, 0.0, 1.0, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.5, -0.25, -0.5, -0.75, 0.5, -0.25, -1.0, 0.5, -0.75, 0.25, -0.5, -0.5, 0.5, 0.75, 0.0, -0.5, -0.25, 1.0, -1.0, 0.25, 0.5, -1.0, -0.5, -1.0, 0.5, 1.0, 1.0, -0.75, -0.25, 1.0, -0.25, 0.75, -0.75, 0.75, -0.5, 0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 0.0, 0.75, 0.75, -0.75, 0.0, 0.75, 1.0, ]);
    
    const array1 = new Float32Array([-0.75, 1.0, 1.0, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, 0.0, 0.0, 0.5, -0.5, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, 0.25, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, 0.25, -0.5, -1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.25, -1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.75, -0.75, 0.25, 0.5, -0.5, 1.0, 0.25, -0.75, 0.5, 0.0, -0.75, -1.0, -0.5, 0.75, -1.0, -0.5, 0.5, 0.0, -0.25, -0.25, 0.25, -0.25, -1.0, -0.75, 0.25, 0.0, 0.5, -0.5, -0.75, 1.0, -0.5, 0.0, 0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 0.5, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.5, 1.0, -1.0, 0.0, 0.75, -0.5, -0.25, 0.75, -0.5, 0.75, -0.25, 0.5, 0.5, 1.0, 0.25, -1.0, -0.5, -0.25, -1.0, -0.25, 1.0, 0.0, -1.0, -0.25, 0.0, 0.25, -0.25, -0.5, -0.5, -0.5, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, -0.5, -0.25, 0.75, -0.5, 1.0, 0.75, 0.5, -1.0, 0.0, -1.0, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.25, 0.75, 0.25, -0.25, 0.75, 0.75, -0.5, -0.25, 0.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.75, 0.5, 1.0, -0.75, -0.25, -1.0, 0.0, 0.5, 0.0, -0.5, 1.0, -0.25, -0.75, 0.0, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.5, -0.25, -0.5, 0.5, -0.5, 0.0, -0.25, -0.75, -1.0, -0.5, -1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    device20.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    const array3 = new Float32Array([-0.5, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, 0.25, -1.0, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, -0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 0.75, 1.0, 0.75, 0.25, -0.75, -1.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.25, 0.25, -1.0, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, -0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.5, 1.0, -0.5, 1.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.25, 1.0, -0.75, -0.25, 0.75, 0.75, -1.0, 0.0, 0.75, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const array4 = new Float32Array([0.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.5, -0.25, -0.75, 1.0, 0.5, -0.5, 0.75, 0.25, 0.0, -0.75, -0.75, -1.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -0.75, 0.0, 0.0, 0.5, -1.0, -1.0, 0.75, 0.0, 0.25, 0.0, -0.25, 1.0, 1.0, -1.0, 0.75, 0.75, 0.5, 0.75, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, 0.5, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, 0.25, -0.75, -0.75, 0.75, -0.5, 0.75, 0.5, 0.0, 0.75, -0.5, -0.5, 0.5, -0.25, -0.25, 0.0, 0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.25, -0.75, -0.75, 0.75, -0.5, -1.0, 0.75, -1.0, -0.5, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
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
    
    
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([-0.5, 1.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.25, 1.0, 0.25, -0.5, 0.25, 0.5, -1.0, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 0.0, 1.0, -0.5, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, -0.5, -0.25, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 0.5, -1.0, -1.0, 0.25, 0.25, 0.75, 0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 1.0, -1.0, 0.5, 0.25, -0.25, -0.5, 0.5, -1.0, -0.5, -0.25, -1.0, 1.0, -0.25, 0.75, -0.25, -1.0, -1.0, 0.25, 0.5, 0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.5, -0.75, -1.0, 0.25, 0.5, -1.0, 0.25, 0.0, 1.0, 1.0, -0.5, 1.0, -0.75, 1.0, ]);
    compute_pass_encoder3000.popDebugGroup()
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
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device00.destroy();
    
    buffer300.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture301.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.destroy();
    const array6 = new Float32Array([-0.75, -0.75, -0.5, -0.5, -0.25, 0.75, 0.75, 0.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.0, -0.5, -0.25, -0.25, 0.5, -0.5, -0.75, 1.0, 0.75, -0.25, -0.75, 1.0, 1.0, -0.5, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, -1.0, -0.75, 0.75, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 0.75, 0.5, 0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, -0.25, 0.75, 0.75, 0.75, 0.25, 0.75, 0.75, -0.75, -0.75, 0.0, -0.5, 0.75, -0.75, -1.0, -1.0, 1.0, ]);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([-1.0, 0.25, -0.5, 1.0, -1.0, 1.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.5, 0.75, 0.25, -0.5, -0.75, 0.75, -0.75, 1.0, 1.0, 0.75, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 0.0, 0.25, 0.0, 0.5, 0.5, -0.75, 1.0, -0.75, 0.5, 1.0, 0.25, 0.0, 0.5, 0.75, 0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.0, 0.0, -0.25, 0.25, 0.5, -0.25, 0.5, 0.25, 0.5, -0.5, -0.5, -0.75, 0.25, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, 0.5, -0.75, -0.75, -1.0, 0.25, -0.75, ]);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device30.pushErrorScope("validation");
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    
    
    
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([0.75, 1.0, 0.5, -0.5, -0.75, 0.5, -0.75, 0.0, 1.0, -1.0, 0.5, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, 0.0, -1.0, -0.75, 0.75, 0.0, 0.0, 0.25, 1.0, 0.75, 0.25, -1.0, 0.5, 0.5, 0.25, -0.75, -0.25, 0.75, -0.5, 0.75, -0.5, -1.0, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, 0.25, 0.25, 0.0, 0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, 0.0, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, -1.0, -0.75, 0.25, 0.5, 1.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, 0.75, 0.0, 1.0, 0.75, -0.5, -0.75, -1.0, -0.25, 0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, -1.0, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device40.pushErrorScope("validation");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    buffer400.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    texture400.destroy();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.queue.submit([]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder400.insertDebugMarker("marker");
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array9 = new Float32Array([0.25, -1.0, 1.0, 0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 1.0, -1.0, -1.0, -1.0, 0.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, -0.25, 1.0, -0.5, 0.0, 0.25, 0.25, 0.25, 1.0, -0.25, 0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, -1.0, -1.0, -0.25, 0.25, -0.25, 0.5, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.75, 0.25, 0.25, -0.25, 0.5, -0.75, -0.5, -0.75, -1.0, 1.0, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, 1.0, -0.75, 0.5, 1.0, 0.25, 0.75, -0.5, 1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, 0.25, -0.25, ]);
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    const array10 = new Float32Array([-0.5, 0.5, 0.75, -0.25, -1.0, -0.25, -0.5, -0.75, 0.75, 0.0, 1.0, -0.25, -0.25, -1.0, 0.25, 1.0, 0.25, -0.75, -0.75, 0.75, 0.0, 0.25, 1.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.25, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 0.5, 0.75, -0.25, -0.75, -0.25, 0.0, -1.0, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, 0.5, -0.5, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, 0.25, -0.25, 0.75, 0.75, 0.25, 0.75, -1.0, -0.75, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.25, 1.0, -1.0, -0.25, 0.5, -0.75, -0.5, -1.0, -0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 0.5, -0.25, ]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
    const command_buffer400 = command_encoder400.finish();
    
    query400.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    const array11 = new Float32Array([-0.75, 1.0, 0.75, -0.75, 0.25, 1.0, 0.0, -0.5, -0.25, 1.0, -0.75, -0.25, -1.0, -0.5, 0.0, 0.5, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, 1.0, 0.25, 0.25, -1.0, 0.75, -0.75, -0.75, -0.5, -0.5, 0.5, -1.0, 1.0, -0.5, -1.0, -1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.5, -0.25, -0.25, -0.5, -1.0, -0.75, -0.25, 0.25, -0.5, 0.5, -1.0, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, 0.0, 0.75, 0.0, 0.5, 0.25, -0.75, -0.25, -0.5, -1.0, -0.5, -1.0, -0.5, 0.5, -0.5, -1.0, -0.25, 0.75, 0.75, 0.5, 0.0, -0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 0.0, 0.25, 0.5, -0.75, -0.75, 0.75, -1.0, -1.0, -1.0, -0.25, -0.75, 1.0, -0.75, -0.75, ]);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    device40.queue.submit([command_buffer400, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder501.insertDebugMarker("marker");
    
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
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device40.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder400.popDebugGroup();
    
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    texture401.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder502.insertDebugMarker("mymarker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const command_buffer502 = command_encoder502.finish();
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    query401.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    render_bundle_encoder501.setPipeline(render_pipeline501);
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder501.popDebugGroup();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    device50.queue.submit([command_buffer500, ]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    texture300.destroy();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder502.setPipeline(render_pipeline501);
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
    device40.queue.writeBuffer(buffer401, 0, array11, 0, array11.length);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
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
    
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    compute_pass_encoder5010.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer402, 0, array11, 0, array11.length);
    device40.pushErrorScope("validation");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const query403 = device40.createQuerySet({
        label: "query403",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder502.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group500);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.pushErrorScope("internal");
    render_bundle_encoder501.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    
    buffer402.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    device80.pushErrorScope("validation");
    const array12 = new Float32Array([0.5, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, -0.5, 0.5, 0.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.5, -0.75, -0.5, -0.25, -0.75, 0.0, 0.5, 1.0, 0.5, 0.0, -1.0, 0.5, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.5, 0.0, 0.0, -0.75, -0.75, -0.25, 0.75, -0.5, 0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 1.0, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, -0.5, -0.25, 0.75, 0.25, 1.0, -1.0, -1.0, 1.0, 0.0, -1.0, -0.75, -1.0, 0.25, 0.5, -1.0, -0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 1.0, 0.5, 0.75, 0.75, 0.75, 0.75, -0.5, -1.0, 1.0, -0.75, ]);
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer503, 0, array11, 0, array11.length);
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module509,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    {
        await buffer502.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer502.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer502.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    buffer401.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    command_encoder800.pushDebugGroup("mygroupmarker")
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    query401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    command_encoder501.insertDebugMarker("mymarker");
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group502);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout505,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer507, 0);
    
    
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    texture801.destroy();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    compute_pass_encoder5010.end();
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer505, 0, array3, 0, array3.length);
    command_encoder501.copyBufferToBuffer(
        buffer504,
        0,
        buffer505,
        0,
        400
    );
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer506,
        0
    )
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_bundle_encoder501.setVertexBuffer(0, buffer504);
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    texture601.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group503);
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout506,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    buffer800.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder502.setVertexBuffer(0, buffer504);
    command_encoder401.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    device50.queue.writeBuffer(buffer508, 0, array5, 0, array5.length);
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
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
    device50.queue.writeBuffer(buffer507, 0, array12, 0, array12.length);
    device40.pushErrorScope("validation");
    
    command_encoder503.resolveQuerySet(
        query501,
        0,
        32,
        buffer508,
        0
    )
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    render_bundle_encoder502.setIndexBuffer(buffer507, "uint16");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder502.drawIndirect(buffer507, 0);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.queue.writeTexture({ texture: texture802 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture802 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    device50.queue.writeBuffer(buffer507, 0, array8, 0, array8.length);
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout405,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout504,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    command_encoder503.resolveQuerySet(
        query501,
        0,
        32,
        buffer506,
        0
    )
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    command_encoder503.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device80.queue.submit([]);
    render_bundle_encoder502.finish();
    
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    command_encoder501.popDebugGroup()
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout505,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer508, 0, array1, 0, array1.length);
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout407,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer508, 0, array7, 0, array7.length);
    render_pass_encoder4010.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline401);
    const command_buffer503 = command_encoder503.finish();
    device50.queue.submit([command_buffer502, command_buffer503, ]);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    command_encoder800.popDebugGroup()
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder4010.setVertexBuffer(0, buffer404);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder4010.drawIndirect(buffer400, 0);
    compute_pass_encoder8000.popDebugGroup()
    render_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5010, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5010, 0);
    render_pass_encoder4010.draw(3);
    const command_buffer100 = command_encoder100.finish();
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4010.end();
    compute_pass_encoder3000.popDebugGroup()
    device60.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, ]);
}