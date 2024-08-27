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
    const array0 = new Float32Array([0.75, -0.75, -0.25, 1.0, 0.75, -0.5, -1.0, 0.0, -0.25, -0.25, -1.0, -0.75, -1.0, 0.75, -0.5, 1.0, 0.25, -1.0, -0.75, 0.75, -0.5, 0.5, -0.75, 0.25, 0.75, -0.25, -1.0, 0.75, -0.25, 0.75, 0.25, -0.25, 0.25, 1.0, 0.75, -1.0, 1.0, 1.0, -1.0, -0.25, 0.25, -0.25, 0.25, -1.0, -0.75, -0.25, 0.25, 0.75, 0.5, -1.0, 1.0, -0.25, 1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, -0.25, -1.0, -0.25, 0.5, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -0.5, 0.5, 1.0, -0.5, 0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 0.25, -0.75, 0.75, -0.5, -0.5, ]);
    const array1 = new Float32Array([0.0, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.25, 0.5, 0.5, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, 0.75, 0.75, -0.25, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, 0.75, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 0.0, 0.0, 1.0, -0.25, 1.0, 0.5, 0.75, 0.5, 0.75, 0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 0.5, -1.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, 0.75, -0.5, -0.5, -0.5, 0.0, 1.0, -1.0, 1.0, 0.0, 0.25, -0.5, 1.0, 0.5, 0.75, 0.25, -1.0, -0.75, -0.25, -0.25, 0.0, -0.75, 0.25, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, ]);
    
    const array2 = new Float32Array([0.25, -0.5, 0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.25, 0.5, 0.25, -1.0, -1.0, 1.0, -0.75, -0.5, 0.25, 0.25, 0.75, -0.75, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 0.0, 0.5, 0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 0.0, 0.0, 0.0, 1.0, -1.0, 0.75, 1.0, 0.0, 0.25, 0.75, -0.75, 0.75, 0.25, -1.0, 0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.25, -0.25, 0.0, -0.5, 0.75, 0.0, -0.25, 0.25, 1.0, 1.0, 0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -0.5, -0.5, 0.25, 1.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 1.0, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.25, 1.0, 0.25, 0.75, -1.0, 0.0, 1.0, 1.0, 0.25, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array3 = new Float32Array([-0.75, -0.25, 0.75, 0.25, 1.0, -0.25, 0.0, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.75, -0.5, -0.75, 0.0, 0.25, 0.0, -0.5, 0.0, 0.25, -0.75, 0.75, -1.0, -0.75, 0.5, 0.5, -0.75, -0.25, -0.25, -0.75, -0.5, 1.0, -0.5, -1.0, 0.5, 0.25, 0.0, -0.75, -0.25, 0.0, 0.0, -1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.75, 1.0, -1.0, -1.0, 1.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.25, 0.5, 0.75, 0.25, 0.5, -0.25, 0.25, 0.5, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.75, -0.5, -0.25, 0.5, 1.0, 1.0, 0.75, 0.75, -0.75, -0.25, 0.75, 1.0, -0.25, -0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.5, 0.75, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.5, 0.5, 0.5, -0.25, 1.0, 0.5, 0.75, 0.75, 0.25, -0.5, 0.25, 0.5, 0.75, 0.25, -0.25, 0.25, 0.25, -1.0, 0.0, 1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 1.0, 0.25, 0.75, 0.0, 1.0, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.5, 1.0, 0.75, 0.0, 1.0, 0.75, -0.5, -0.5, -0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -0.25, 0.0, 1.0, -1.0, -0.75, -0.5, 0.25, -0.75, 0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, 0.0, -0.25, -0.75, 0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.75, -0.75, 1.0, -0.25, -0.75, 1.0, 0.5, 0.25, -1.0, -0.5, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
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
    
    texture000.destroy();
    device00.pushErrorScope("validation");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer000 = command_encoder000.finish();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query200.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    command_encoder002.clearBuffer(buffer000);
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    buffer000.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    device00.queue.submit([command_buffer000, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    command_encoder200.clearBuffer(buffer200);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer201.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    query301.destroy()
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    buffer200.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
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
    compute_pass_encoder0020.insertDebugMarker("marker")
    query201.destroy()
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder004.clearBuffer(buffer004);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    command_encoder003.clearBuffer(buffer003);
    query000.destroy()
    buffer001.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    
    
    texture002.destroy();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder003.insertDebugMarker("mymarker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    buffer003.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device30.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    query200.destroy()
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer004,
        0,
        400
    );
    command_encoder004.insertDebugMarker("mymarker");
    query201.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer001.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.pushErrorScope("internal");
    
    texture003.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder003.clearBuffer(buffer004);
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder0030.setPipeline(compute_pipeline005);
    
    texture000.destroy();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.5, 0.75, 0.0, 0.25, 0.0, -1.0, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, 0.75, 0.5, -0.5, -0.75, -0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -0.25, 0.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, -0.5, 0.25, -0.25, -0.25, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, 0.5, 0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -0.75, -0.5, 0.25, -0.75, 0.0, -1.0, -0.5, 0.5, 0.75, 0.5, 1.0, 0.25, -1.0, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.75, -1.0, -0.5, -0.75, 0.25, 1.0, 0.5, -0.75, 0.5, 0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 0.0, -1.0, -1.0, 0.5, -0.25, 1.0, 0.75, -0.75, ]);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query003
    });
    
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline004);
    
    query201.destroy()
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer000,
        0
    )
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    compute_pass_encoder0031.setPipeline(compute_pipeline001);
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
    const array6 = new Float32Array([-1.0, 0.25, 0.5, 0.25, -0.5, 0.75, 0.5, -1.0, 1.0, 0.5, -1.0, 0.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.25, -0.5, 0.75, 0.5, 0.0, -0.5, -1.0, 0.5, 0.0, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, 0.25, 0.0, 0.75, -0.5, -1.0, 0.5, 0.25, 0.25, 0.0, 1.0, -0.5, 0.5, 0.5, -0.25, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 1.0, -0.75, 1.0, -0.25, -0.25, 0.5, 0.5, 0.5, -0.25, -0.5, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.75, 0.5, 1.0, 0.25, -0.75, -0.5, -0.75, -0.75, 0.5, 1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 0.5, 0.5, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    query001.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder202.clearBuffer(buffer203);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2000.setPipeline(render_pipeline200);
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_buffer004 = command_encoder004.finish();
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_pass_encoder2001.setStencilReference(1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0030.executeBundles([])
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    const array7 = new Float32Array([-0.75, -0.5, 1.0, 0.25, 0.75, -0.25, 0.0, 0.5, -1.0, -1.0, -1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.5, -0.5, -1.0, 1.0, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, -1.0, -0.75, 0.5, -0.75, -0.25, -0.5, -1.0, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 1.0, -0.25, -0.25, 0.0, 1.0, 0.0, -0.25, 0.5, 0.0, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, -1.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.0, 0.0, 0.25, 1.0, 0.75, 0.5, 0.0, -0.25, 0.25, -0.75, 0.5, 1.0, 1.0, 0.25, 0.0, -1.0, 0.25, ]);
    query201.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.executeBundles([render_bundle_encoder001, ])
    render_pass_encoder0040.setStencilReference(1);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    buffer203.destroy()
    compute_pass_encoder0031.insertDebugMarker("marker")
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.popDebugGroup();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query004.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2001.setPipeline(render_pipeline201);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    query200.destroy()
    
    
    render_pass_encoder2000.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query000
    });
    buffer205.destroy()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    texture200.destroy();
    render_pass_encoder2020.setPipeline(render_pipeline202);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline203);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder003.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer004.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0040.insertDebugMarker("marker");
    query004.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder201.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.dispatchWorkgroups(100);
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer004,
        0
    )
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    render_pass_encoder0040.setStencilReference(1);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.pushDebugGroup("mygroupmarker")
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    render_pass_encoder2001.setStencilReference(1);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder006.insertDebugMarker("mymarker");
    render_pass_encoder0040.setStencilReference(1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder006.insertDebugMarker("mymarker");
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder0031.popDebugGroup()
    buffer204.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    query002.destroy()
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder0031.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_pass_encoder0031.beginOcclusionQuery(0)
    
    buffer202.destroy()
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query003
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    query002.destroy()
    render_pass_encoder2020.popDebugGroup();
    
    query201.destroy()
    render_pass_encoder0031.insertDebugMarker("marker");
    
    render_pass_encoder0031.setStencilReference(1);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout201,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.executeBundles([])
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    
    render_bundle_encoder201.popDebugGroup();
    query200.destroy()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer2010);
    
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
        occlusionQuerySet: query201
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder0060.setPipeline(compute_pipeline006);
    render_pass_encoder0031.insertDebugMarker("marker");
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder0060.popDebugGroup();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer2010.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query001.destroy()
    command_encoder202.popDebugGroup()
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group000);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer201);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline000);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group001);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    command_encoder003.popDebugGroup()
    render_pass_encoder0040.setPipeline(render_pipeline000);
    render_pass_encoder2000.end();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0031.setPipeline(render_pipeline000);
    compute_pass_encoder0031.popDebugGroup()
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group004);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
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
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0017, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0031.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0016);
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group005);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2017, 0);
    render_pass_encoder0031.setVertexBuffer(0, buffer0014);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
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
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    compute_pass_encoder0060.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0031.popDebugGroup();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    compute_pass_encoder0060.end();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0026, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0027, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0027, 0);
    command_encoder006.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.setVertexBuffer(0, buffer0020);
    compute_pass_encoder2000.end();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0031.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0030.end();
    render_pass_encoder0040.setVertexBuffer(0, buffer0024);
    render_pass_encoder2001.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0031.end();
    const command_buffer200 = command_encoder200.finish();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0040.end();
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group009);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0060.drawIndirect(buffer0028, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group0010);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.setVertexBuffer(0, buffer0025);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0011);
    render_pass_encoder0031.drawIndirect(buffer0031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.end();
    compute_pass_encoder0020.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0031.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0031.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer006, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2020, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2024, 0);
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    const command_buffer006 = command_encoder006.finish();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2025, 0);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder2010.end();
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0012);
    command_encoder201.popDebugGroup()
    render_pass_encoder2001.end();
    const command_buffer201 = command_encoder201.finish();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2010, "uint16");
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    compute_pass_encoder0031.end();
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0060.end();
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2028, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0031.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0060.drawIndirect(buffer0017, 0);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0031.drawIndirect(buffer009, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0031.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0060.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder0031.end();
    compute_pass_encoder2010.end();
    render_pass_encoder0040.drawIndirect(buffer0017, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    compute_pass_encoder0060.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0031.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0041, 0);
    render_pass_encoder2001.end();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2024, "uint16");
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0060.draw(3);
    compute_pass_encoder0031.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0031.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0016, "uint16");
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer004, ]);
    device20.queue.submit([]);
    render_pass_encoder0020.end();
    render_pass_encoder0060.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder2000.end();
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2017, 0);
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2010);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2001.end();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2032, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0016);
    device20.queue.submit([]);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    render_pass_encoder0031.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0050, 0);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0018);
    render_pass_encoder2000.drawIndexedIndirect(buffer2024, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    render_pass_encoder2001.setIndexBuffer(buffer2014, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0060.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0053, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0053, 0);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder2000.popDebugGroup();
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0019);
    render_pass_encoder0060.draw(3);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0057, 0);
    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2040,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0027, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2041, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    compute_pass_encoder0060.popDebugGroup()
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0020);
    render_pass_encoder0030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder2010.drawIndirect(buffer2032, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0040.setIndexBuffer(buffer0044, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder0030.drawIndirect(buffer0057, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer005, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0021);
    render_pass_encoder0060.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2010.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0040.drawIndirect(buffer0045, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0031.drawIndirect(buffer0039, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0064,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0022);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0027, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0066,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    render_pass_encoder2001.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.draw(3);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0024);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2040, 0);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2019, 0);
    render_pass_encoder0031.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2016);
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0025);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2032, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2017);
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder2000.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0072, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0031.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder0031.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0011, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2020);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer006, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.endOcclusionQuery()
    compute_pass_encoder0031.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2032, 0);
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2021);
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2022);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2048, "uint16");
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0026);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0057, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder2020.popDebugGroup()
    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0077,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    compute_pass_encoder2010.end();
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0028);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2061, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2061, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder2010.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0031.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0027, 0);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.draw(3);
    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2065,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2024);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder2020.drawIndirect(buffer2030, 0);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2025);
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0060.drawIndirect(buffer0039, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0030);
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndirect(buffer0056, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2020.drawIndirect(buffer2045, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0031.drawIndirect(buffer0036, 0);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2061, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer005, ]);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2026);
    render_pass_encoder0060.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0072, 0);
    render_pass_encoder2000.drawIndirect(buffer2062, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0060, "uint16");
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2027);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    compute_pass_encoder0031.end();
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    device20.queue.submit([]);
    compute_pass_encoder0060.end();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2042, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder2020.drawIndirect(buffer2063, 0);
    render_pass_encoder0020.drawIndirect(buffer0039, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0031.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0073, 0);
    render_pass_encoder2001.drawIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0084, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2074, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2074, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2075, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2075, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2063, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2020.popDebugGroup();
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0031);
    render_pass_encoder0020.drawIndirect(buffer0067, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0032);
    render_pass_encoder0040.popDebugGroup();
    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2077,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2028);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0073, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder2001.drawIndirect(buffer2075, 0);
    render_pass_encoder0031.drawIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2072, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2072, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2057, 0);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0033);
    render_pass_encoder0031.drawIndirect(buffer0027, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2063, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder0031.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder0060.end();
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0034);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0031.drawIndexedIndirect(buffer0064, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    device20.queue.submit([]);
    compute_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    render_pass_encoder0040.drawIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer006, 0);
    render_pass_encoder2020.drawIndirect(buffer2038, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2071, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2017, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder0031.drawIndirect(buffer0071, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder2020.drawIndirect(buffer2061, 0);
    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0094,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0035);
    render_pass_encoder0040.drawIndirect(buffer0072, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0054, "uint16");
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0031.drawIndirect(buffer0017, 0);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0036);
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder0030.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0097, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.end();
    render_pass_encoder0060.setIndexBuffer(buffer003, "uint16");
}