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
    const array0 = new Float32Array([0.5, -1.0, 0.5, 0.0, -0.5, -0.5, 0.0, 0.5, 0.0, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.5, -1.0, 0.0, -0.25, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, 0.5, 0.75, 0.0, 0.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.75, 0.0, -0.5, 0.5, -0.75, -1.0, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 0.0, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -1.0, -0.5, -0.25, 0.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 0.0, -0.5, 1.0, -1.0, 0.5, 0.75, 0.0, -0.75, 0.75, ]);
    const array1 = new Float32Array([-0.5, 0.25, -0.75, 0.0, 0.5, -0.25, 0.0, 1.0, -0.5, -0.75, 1.0, -0.75, -0.5, -0.5, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, -0.5, 0.5, 0.5, -0.25, -1.0, -1.0, 1.0, -0.5, -0.75, 0.5, 0.0, -0.75, 0.75, -0.25, -0.75, -1.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.75, -0.5, 0.75, -0.5, 1.0, -0.5, 0.25, -0.5, 0.25, 0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.0, 0.75, -0.5, 0.0, 1.0, 0.0, -0.75, 0.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, 0.75, -0.75, 0.0, 0.25, 0.0, -0.75, -0.5, -0.5, 0.75, 0.75, 0.0, -1.0, 1.0, -0.75, 0.0, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 0.0, 0.25, -0.5, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.75, 0.75, 0.5, 0.25, -0.75, -0.75, -0.75, 0.5, 0.0, 1.0, 1.0, 0.5, 0.75, 0.75, -1.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.0, 1.0, 0.25, 0.5, -0.75, -1.0, 0.75, 0.75, 0.75, 0.75, 0.25, 0.5, -0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, -1.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, 0.5, 0.0, 0.75, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 0.25, -1.0, -0.5, 0.5, -0.5, 1.0, 0.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.5, 0.5, -0.25, -1.0, 1.0, -0.75, -0.25, 0.75, ]);
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
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture000.destroy();
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const array3 = new Float32Array([0.75, -0.75, 0.75, 0.25, 0.0, -1.0, 0.75, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.0, 1.0, 1.0, -0.75, -0.75, 0.25, 0.25, 0.5, -0.25, -0.75, 0.75, -1.0, 0.25, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 1.0, 0.0, -1.0, 0.25, 0.25, -0.75, -0.25, -0.5, 0.75, 0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.5, 0.25, 0.0, -0.5, 0.75, 0.0, 0.0, -1.0, -1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, -0.5, -0.5, 1.0, -1.0, -0.75, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, 0.25, 0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, 0.75, 0.75, -0.5, 0.0, -1.0, 0.0, 0.75, 0.0, -1.0, 0.75, ]);
    
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
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture100.destroy();
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.popDebugGroup()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer200.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const array4 = new Float32Array([0.0, 0.25, -0.5, 0.5, -0.5, -0.75, -0.75, -0.25, -0.25, 1.0, 0.5, 0.25, 0.25, -1.0, -0.75, 0.25, 0.25, 0.25, 0.0, -1.0, -0.75, 0.5, 0.25, 0.5, 0.25, 1.0, -1.0, 1.0, 0.25, 0.25, -1.0, -0.75, -0.25, -0.5, 0.75, 0.0, -1.0, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, 1.0, -1.0, -1.0, 0.75, -0.75, 0.5, -1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.5, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -0.25, 0.0, -0.25, 1.0, -0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, -0.75, 0.75, -0.5, 0.5, 0.0, -0.75, -0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 0.75, -0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    texture101.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const array5 = new Float32Array([0.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 0.5, -1.0, -0.25, 0.5, 1.0, 0.0, -0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, 0.0, -0.5, 0.0, -0.75, 0.0, -1.0, -1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.25, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, 0.5, 0.25, 0.0, -0.25, 0.0, 0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, 0.75, 0.0, 0.25, 1.0, 0.5, 0.0, 0.25, -0.5, 1.0, -1.0, -0.5, 0.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.5, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
        occlusionQuerySet: query100
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder1010.beginOcclusionQuery(0)
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device00.destroy();
    command_encoder100.popDebugGroup()
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query101.destroy()
    const command_buffer100 = command_encoder100.finish();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    command_encoder301.clearBuffer(buffer300);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.pushErrorScope("validation");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.insertDebugMarker("mymarker");
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    buffer300.destroy()
    
    render_pass_encoder1010.executeBundles([])
    const array6 = new Float32Array([0.0, -0.25, -1.0, 1.0, -0.25, 0.75, 0.75, 0.0, 0.25, -0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 0.25, 0.5, 1.0, -1.0, -0.5, 1.0, 0.5, 0.5, 1.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, -0.5, 1.0, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, -0.5, -0.25, 0.5, -0.25, 0.5, -0.5, -0.25, 0.5, -0.25, 0.0, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -0.25, -1.0, 1.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.25, -0.5, 0.75, -0.25, -0.25, -0.5, 0.25, 0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, -0.5, -0.75, 0.75, -0.75, 0.5, -0.75, 1.0, 0.75, 0.5, 0.25, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    device10.pushErrorScope("validation");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1010.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.submit([]);
    render_bundle_encoder000.insertDebugMarker("marker");
    query101.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.destroy();
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder302.insertDebugMarker("mymarker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder300.popDebugGroup();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder301.popDebugGroup()
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
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
    texture100.destroy();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer301 = command_encoder301.finish();
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
    
    
    device30.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.beginOcclusionQuery(1)
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    texture500.destroy();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder1010.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.beginOcclusionQuery(0)
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.setStencilReference(1);
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
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
        occlusionQuerySet: undefined
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder500.setPipeline(render_pipeline501);
    texture501.destroy();
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder501.insertDebugMarker("mymarker");
    
    
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    command_encoder501.pushDebugGroup("mygroupmarker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
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
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder5000.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_pass_encoder1010.popDebugGroup();
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder501.insertDebugMarker("mymarker");
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder5000.setPipeline(render_pipeline501);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.beginOcclusionQuery(0)
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    texture102.destroy();
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    buffer100.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_pass_encoder5020.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1021.setPipeline(render_pipeline100);
    buffer500.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setPipeline(render_pipeline501);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer101.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.setStencilReference(1);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group102);
    render_pass_encoder1011.setStencilReference(1);
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder500.insertDebugMarker("marker");
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
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    buffer102.destroy()
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5020.setStencilReference(1);
    render_pass_encoder1011.executeBundles([])
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("internal");
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
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
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder1030.executeBundles([])
    buffer103.destroy()
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1011.popDebugGroup();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.endOcclusionQuery()
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    texture103.destroy();
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1011.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    render_pass_encoder1012.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.popDebugGroup();
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    query400.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder502.setPipeline(render_pipeline500);
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5021,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5010.setPipeline(render_pipeline501);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    render_pass_encoder1031.setStencilReference(1);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    render_pass_encoder5010.setViewport(0, 0, texture502.width / 2, texture502.height / 2, 0, 1);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    render_bundle_encoder501.setPipeline(render_pipeline503);
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group104);
    render_pass_encoder1021.setVertexBuffer(0, buffer102);
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer1010,
        0,
        400
    );
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture200.destroy();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder5010.beginOcclusionQuery(0)
    const array7 = new Float32Array([-1.0, -1.0, -0.75, -0.5, 0.75, -1.0, 0.5, -0.25, 0.0, 0.75, 0.25, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.5, -1.0, -0.5, 0.75, -0.75, 0.75, -0.75, 0.25, 0.0, 0.75, -0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -0.25, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.0, -0.5, -1.0, -0.5, 1.0, -0.5, -0.25, 0.75, 1.0, -0.25, 0.5, 0.0, 0.0, -0.75, -0.25, 0.75, -0.25, 0.75, -0.25, 0.75, 0.25, -0.5, 1.0, 0.25, -0.5, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.5, ]);
    render_pass_encoder1012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1012.executeBundles([render_bundle_encoder101, ])
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout109,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    buffer107.destroy()
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    render_pass_encoder1011.executeBundles([])
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
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
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
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

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1021.end();
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1031.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1012.setBindGroup(0, bind_group105);
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    render_pass_encoder1031.end();
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1012.setVertexBuffer(0, buffer101);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1011.setPipeline(render_pipeline100);
    device60.queue.submit([command_buffer601, ]);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
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
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group501);
    render_pass_encoder5010.endOcclusionQuery()
    render_pass_encoder5020.setVertexBuffer(0, buffer503);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5000.setVertexBuffer(0, buffer505);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5020.end();
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder5020.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder5020.drawIndexed(3);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group107);
    render_pass_encoder1012.setIndexBuffer(buffer1013, "uint16");
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group108);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group109);
    render_pass_encoder1011.setVertexBuffer(0, buffer1011);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.setVertexBuffer(0, buffer1017);
    render_pass_encoder5000.setIndexBuffer(buffer502, "uint16");
    const command_buffer102 = command_encoder102.finish();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([]);
    render_pass_encoder1030.setVertexBuffer(0, buffer1017);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder1012.endOcclusionQuery()
    render_pass_encoder1010.setVertexBuffer(0, buffer1016);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder5000.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder5000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
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
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    device50.queue.submit([command_buffer502, ]);
    command_encoder500.popDebugGroup()
    render_pass_encoder5000.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5000.drawIndirect(buffer501, 0);
    device50.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1020.end();
    render_pass_encoder5010.setVertexBuffer(0, buffer501);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder5010.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder5010.draw(3);
    device60.queue.submit([command_buffer600, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    render_pass_encoder1012.setIndexBuffer(buffer1019, "uint16");
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    device60.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1011.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.draw(3);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1021.draw(3);
    render_pass_encoder5000.end();
    command_encoder101.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    const command_buffer101 = command_encoder101.finish();
    command_encoder501.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    const command_buffer501 = command_encoder501.finish();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder5000.end();
    render_pass_encoder5020.end();
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1030.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder5020.drawIndirect(buffer505, 0);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder5020.drawIndirect(buffer504, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1012.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1012.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer001 = command_encoder001.finish();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder5010.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder1031.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1012.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder5020.setIndexBuffer(buffer505, "uint16");
    render_pass_encoder1021.popDebugGroup();
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndirect(buffer100, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder5020.end();
    device20.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1012.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexed(3);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder5010.end();
    render_pass_encoder1021.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    device60.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder6000.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder1012.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder5010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    device10.queue.submit([]);
    render_pass_encoder5020.drawIndirect(buffer501, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder5010.drawIndexedIndirect(buffer504, 0);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5010.popDebugGroup();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5020.setIndexBuffer(buffer507, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder1012.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder5000.drawIndirect(buffer504, 0);
    render_pass_encoder5000.drawIndexedIndirect(buffer506, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.draw(3);
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    render_pass_encoder1012.popDebugGroup();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder1031.end();
    render_pass_encoder5020.drawIndexed(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder5020.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer101, ]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder5010.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder5020.setIndexBuffer(buffer504, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder5020.drawIndexedIndirect(buffer505, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder1010.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1012.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1012.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder5000.end();
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder5010.end();
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
}