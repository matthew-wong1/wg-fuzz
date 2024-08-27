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
    const array0 = new Float32Array([0.5, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, 0.0, 0.0, 0.25, 0.0, 0.5, 1.0, -0.75, 1.0, 1.0, 0.75, -0.75, -1.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.25, 0.0, 0.75, -1.0, 0.25, -0.25, 0.0, 0.5, -1.0, 1.0, -0.25, 1.0, 0.0, 1.0, -0.75, 0.5, 0.75, -1.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.25, -0.25, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.0, -0.75, 0.75, 0.75, 0.75, -0.5, -0.25, -0.5, -0.25, 0.75, 0.25, -0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 0.0, 0.25, 1.0, 0.0, 0.25, -1.0, 0.5, 0.75, 1.0, -0.25, -0.5, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, 0.25, -0.75, -1.0, 0.5, 0.75, 1.0, -0.75, ]);
    
    
    const array1 = new Float32Array([-0.25, 0.25, 0.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, -0.75, -0.75, -0.25, -1.0, -0.5, -0.75, 1.0, -1.0, -0.5, -0.5, 0.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, 1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, -0.5, 0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 1.0, -0.25, -0.75, 0.0, 0.25, 0.5, -0.25, -1.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.0, 0.75, -0.5, -0.75, -0.25, 0.25, 0.75, -0.5, -0.75, 0.25, 0.5, 0.25, 1.0, -1.0, 1.0, 0.5, 0.25, -0.25, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.0, -1.0, 0.75, 0.25, 1.0, -1.0, 1.0, 1.0, 0.0, -0.75, -1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.75, 0.75, 0.0, 0.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    const array2 = new Float32Array([0.5, -1.0, 0.25, -0.5, -1.0, -0.5, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.25, -0.25, -0.5, -0.75, 0.25, -1.0, 0.25, -1.0, -0.25, 0.0, 0.5, 0.5, -1.0, -0.25, 0.75, -0.25, 0.75, -1.0, -0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.75, -0.5, -0.75, 0.75, -0.5, 0.5, 0.75, -0.25, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.0, -0.75, 0.25, -0.75, -0.25, 1.0, -0.25, 0.0, 0.5, 0.75, -1.0, -1.0, -0.5, -0.5, 0.0, -0.25, -0.5, -1.0, -0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, -0.75, 0.75, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 0.25, -0.25, 1.0, 1.0, 0.75, 0.25, 0.5, 0.25, -1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.destroy();
    const array3 = new Float32Array([0.5, -0.25, -0.75, -1.0, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.25, -0.25, -0.25, -1.0, 0.25, 0.0, -0.75, 1.0, 0.0, 0.5, 0.5, -0.5, -1.0, 0.0, 0.5, 0.5, 0.0, 1.0, 1.0, -0.75, 0.0, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -0.25, -0.25, -0.75, -0.25, 0.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, 1.0, 0.5, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, 0.0, -0.5, 0.25, -0.75, -0.25, 0.75, -0.25, 0.0, -0.5, 0.0, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, 0.0, 0.0, 1.0, 0.5, -1.0, 0.25, 1.0, 0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, -0.25, -0.25, 1.0, -0.75, ]);
    
    const array4 = new Float32Array([-0.5, -0.75, -1.0, -0.75, -0.25, 1.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.0, -1.0, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.5, 0.75, -0.5, -1.0, 0.5, 1.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.5, -0.25, -0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -0.75, 0.0, 1.0, 1.0, 0.5, 0.5, -0.25, 1.0, 0.5, 0.75, 0.5, -0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 0.75, 0.75, -0.75, -0.25, -0.75, -0.25, -1.0, 0.25, 1.0, ]);
    
    
    
    const array5 = new Float32Array([0.0, -1.0, 0.0, -0.25, 0.5, -0.75, 0.5, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.0, -0.5, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.5, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -1.0, 0.5, 0.25, 0.5, -0.5, 1.0, 0.25, -0.75, 0.5, -0.25, 1.0, 0.25, -0.25, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.25, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -0.25, -0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.25, 1.0, -1.0, 0.75, 0.25, ]);
    
    
    
    const array6 = new Float32Array([-0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 1.0, 0.25, 0.5, -0.5, 0.5, 0.75, 0.25, 0.0, -0.5, 1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.0, 1.0, -0.5, 0.75, -0.25, -0.5, -0.75, -0.25, -1.0, 0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, 0.5, 1.0, 0.25, -0.25, -1.0, -0.5, 0.75, -0.5, 1.0, -1.0, 0.0, 0.5, 0.75, -0.75, 0.0, 0.25, -0.25, 0.0, 1.0, 0.25, 0.5, 0.25, 0.0, 1.0, 0.25, -0.25, -0.25, -0.25, -1.0, -1.0, 1.0, 0.0, 0.0, 0.25, -0.5, -1.0, 0.75, -0.75, -0.25, 0.0, 0.25, 0.0, 0.25, 0.75, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.25, 0.5, 0.0, -0.25, 1.0, -0.5, ]);
    
    
    const array7 = new Float32Array([0.25, 0.0, 0.0, 1.0, -0.25, 0.75, -0.75, -0.75, -0.5, -1.0, 0.5, -0.5, -0.5, 0.5, -0.75, -0.25, -1.0, 0.75, 0.0, 0.25, -0.5, 1.0, 1.0, 0.0, -1.0, 0.5, 1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.25, -0.25, -0.25, -1.0, -0.5, -0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 0.75, 0.25, -0.25, 0.5, -0.5, 0.25, -0.25, 0.5, 0.5, 0.75, 0.75, -0.25, 0.75, -0.5, 0.5, -0.75, 0.5, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, 0.5, 0.25, -0.5, -1.0, 1.0, 0.25, 0.0, -0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, -0.25, 0.5, 0.5, -0.75, -1.0, -0.25, 0.25, -0.25, 0.5, 0.0, 1.0, 0.75, 0.0, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query301.destroy()
    
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    buffer300.destroy()
    query301.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    query300.destroy()
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    query300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query302.destroy()
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.destroy();
    device50.pushErrorScope("internal");
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.pushErrorScope("out-of-memory");
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    
    
    
    
    query500.destroy()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer501 = command_encoder501.finish();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, -0.75, -0.75, -0.5, 0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 1.0, 1.0, 0.25, -0.75, 0.0, 0.25, -1.0, 0.25, 1.0, 0.25, -0.75, -1.0, -1.0, -0.25, -0.75, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.25, 0.5, -0.75, -0.5, 0.0, -0.5, -0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, -0.25, -0.25, 0.5, -0.25, 0.25, 1.0, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -1.0, 0.0, -0.5, 0.0, 0.25, -0.5, 0.75, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, -0.5, 0.75, -0.25, ]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    query500.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device40.pushErrorScope("out-of-memory");
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
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.pushErrorScope("validation");
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    const array9 = new Float32Array([-0.5, -1.0, -0.75, -0.75, 0.25, 0.5, 0.75, -1.0, -0.75, 0.0, 0.25, -0.5, 1.0, 0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, 0.0, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, 0.75, 1.0, 0.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 0.75, 0.5, 0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 0.25, -0.5, 0.0, 0.75, 0.0, 0.25, -0.5, 0.0, 1.0, 0.75, 0.25, 0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 0.0, 0.5, 0.0, 1.0, -1.0, -1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -0.25, ]);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.submit([command_buffer501, ]);
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder502.insertDebugMarker("mymarker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    render_pass_encoder5030.setStencilReference(1);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    
    render_pass_encoder5030.setStencilReference(1);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    render_pass_encoder5020.executeBundles([])
    command_encoder504.pushDebugGroup("mygroupmarker")
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5020.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    texture400.destroy();
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    render_pass_encoder5030.pushDebugGroup("group_marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5030.executeBundles([])
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    query501.destroy()
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    buffer500.destroy()
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture500.destroy();
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder5030.executeBundles([])
    
    render_pass_encoder5020.setStencilReference(1);
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    render_pass_encoder5030.executeBundles([])
    
    render_pass_encoder4000.setPipeline(render_pipeline403);
    query501.destroy()
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    query501.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.popDebugGroup()
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query501.destroy()
    
    
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query400.destroy()
    compute_pass_encoder5040.setPipeline(compute_pipeline500);
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder5000.setPipeline(compute_pipeline503);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    buffer501.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    query501.destroy()
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query502
    });
    
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    texture600.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const array10 = new Float32Array([0.5, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, 1.0, -1.0, 0.25, 0.25, -0.5, 0.5, 1.0, -1.0, -0.25, -0.75, -0.25, 0.25, -0.25, -0.5, -0.75, 0.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.5, -0.5, 1.0, 0.5, 0.5, -0.75, -0.5, -1.0, 0.0, -1.0, -0.5, -0.5, -0.25, 1.0, 0.25, -1.0, -0.25, -0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, -1.0, 1.0, 1.0, -0.5, -0.25, 0.75, -0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 0.0, 0.75, 0.5, 1.0, 0.25, -1.0, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, -0.25, 0.75, -0.5, 1.0, 0.0, -0.5, 0.25, -1.0, 0.75, 0.0, 0.75, 1.0, -0.75, -1.0, 1.0, 0.75, 0.5, -1.0, ]);
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder5020.pushDebugGroup("group_marker");
    
    query400.destroy()
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder5030.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device70.destroy();
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    render_pass_encoder5020.insertDebugMarker("marker");
    texture403.destroy();
    query400.destroy()
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array11 = new Float32Array([-0.25, 0.75, 0.0, 0.0, 0.0, -1.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.0, -0.25, 0.5, -0.75, -0.25, 0.25, 0.0, -1.0, -0.25, -0.5, -1.0, -1.0, 0.75, 0.25, 0.75, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 1.0, 1.0, -0.5, -0.25, -0.75, -0.5, 0.75, -0.25, -1.0, 0.25, 0.75, 1.0, -1.0, -0.25, -0.5, 0.25, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.25, 1.0, 0.75, 0.25, 0.25, -0.5, -1.0, -1.0, 0.5, -0.5, 0.0, -0.25, 0.5, -1.0, 0.0, 0.5, 0.25, -0.5, 0.75, 0.75, 1.0, -0.75, 0.25, 0.75, 0.5, -0.75, -0.5, 0.25, 0.5, -0.25, 0.5, 0.25, 0.0, 0.75, -0.5, -0.25, 0.75, ]);
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
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder5030.popDebugGroup();
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder5000.popDebugGroup()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5020.popDebugGroup();
    
    
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const command_encoder506 = device50.createCommandEncoder({ label: "command_encoder506" });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    render_pass_encoder5030.executeBundles([])
    buffer401.destroy()
    device60.destroy();
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_pass_encoder5030.pushDebugGroup("group_marker");
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    
    
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5050.pushDebugGroup("group_marker");
    const render_pass_encoder5060 = command_encoder506.beginRenderPass({
        label: "render_pass_encoder5060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.setStencilReference(1);
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder5060.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture501 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4000.setStencilReference(1);
    render_pass_encoder5030.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
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
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5040.setBindGroup(0, bind_group500);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    texture501.destroy();
    
    render_pass_encoder5060.insertDebugMarker("marker");
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer403.destroy()
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline503.getBindGroupLayout(0),
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

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    compute_pass_encoder5000.popDebugGroup()
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5030.pushDebugGroup("group_marker");
    
    
    
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout507,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5060.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder5050.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder5020.setStencilReference(1);
    
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    
    
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder5060.pushDebugGroup("group_marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    compute_pass_encoder5040.insertDebugMarker("marker")
    query503.destroy()
    device100.destroy();
    
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device40.pushErrorScope("internal");
    
    render_pass_encoder5060.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    compute_pass_encoder5040.dispatchWorkgroups(100);
    render_pass_encoder5060.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    render_pass_encoder5060.insertDebugMarker("marker");
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer508, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer508, 0);
    device50.queue.writeBuffer(buffer508, 0, array7, 0, array7.length);
    render_pass_encoder5060.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder4000.setStencilReference(1);
    
    render_pass_encoder5050.setStencilReference(1);
    render_pass_encoder4000.setVertexBuffer(0, buffer401);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder4000.popDebugGroup();
    device50.queue.writeBuffer(buffer508, 0, array3, 0, array3.length);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
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
    device80.pushErrorScope("validation");
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    
    
    
    buffer508.destroy()
    query501.destroy()
    buffer502.destroy()
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler508 = device50.createSampler( { label: "sampler508" } );
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
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout503]
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout508,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module408,
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
            module: shader_module408,
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
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout503]
    });
    
    render_pass_encoder4010.setStencilReference(1);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4010.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline406);
    render_bundle_encoder400.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5060.popDebugGroup();
    render_pass_encoder5050.popDebugGroup();
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group401);
    compute_pass_encoder5000.end();
    compute_pass_encoder5040.popDebugGroup()
    render_pass_encoder4000.draw(3);
    render_pass_encoder4010.setVertexBuffer(0, buffer401);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder5040.end();
    render_pass_encoder4010.draw(3);
    command_encoder504.popDebugGroup()
    render_pass_encoder4000.end();
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder4010.end();
    device50.queue.submit([command_buffer504, ]);
    const command_buffer400 = command_encoder400.finish();
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer400, command_buffer401, ]);
}