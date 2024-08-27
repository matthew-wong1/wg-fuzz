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
    
    const array0 = new Float32Array([-0.25, -0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 1.0, 0.0, -0.5, 0.5, 0.25, 0.75, -1.0, 0.0, -0.75, -1.0, -0.25, -0.75, 0.25, 0.75, -0.25, 0.5, -1.0, -0.75, -0.25, 1.0, -0.25, 1.0, 1.0, -1.0, -0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.25, -0.5, -0.25, 0.0, 1.0, -0.5, -0.75, -0.25, -0.75, -0.25, -1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.0, 0.5, -0.25, 1.0, -0.25, 0.75, -1.0, 0.5, -0.75, 0.25, 0.25, -0.5, -0.75, 0.75, -0.75, 0.0, -0.5, 1.0, 0.25, -0.75, 0.75, -1.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, -0.5, 1.0, -0.5, ]);
    const array1 = new Float32Array([-0.25, 1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.5, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, -0.5, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 0.75, -0.75, -0.5, -0.25, 0.25, -0.25, 0.5, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -1.0, 0.0, 0.75, 0.5, -1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.5, 0.75, 0.25, 0.5, -0.25, 1.0, 0.0, -0.25, 0.75, -0.25, -1.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.75, -1.0, 0.25, -0.75, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, 0.5, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, -0.75, -0.5, -0.5, -0.25, 0.5, -1.0, -1.0, -0.75, -0.5, 0.0, -0.25, -0.25, 0.75, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-0.5, 1.0, 0.25, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.5, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -1.0, 0.25, 1.0, -1.0, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, -0.25, -0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -1.0, 0.75, 0.75, 0.25, 0.25, 0.5, 1.0, -0.5, 0.25, -0.5, 1.0, 0.75, 0.5, 0.0, 0.25, 0.25, 1.0, -0.75, 0.25, -0.5, -0.75, -1.0, -0.75, -0.75, -0.75, 0.0, 0.0, -0.5, 0.75, -0.75, -0.25, 0.25, -0.25, 1.0, -0.5, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, 0.25, -0.75, 0.0, 0.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, 0.5, 0.75, -1.0, 0.0, -0.5, 1.0, -0.25, -0.75, 0.0, 0.25, -0.25, 0.75, 0.0, -1.0, -0.5, 0.25, ]);
    
    const array3 = new Float32Array([1.0, -0.75, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.25, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 1.0, 0.0, 0.0, 0.75, 0.5, 0.75, -0.75, -0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.0, -0.5, -0.25, 0.5, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, 0.5, 0.5, 0.0, 0.0, -0.75, 0.5, 0.0, 0.75, -0.25, 0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, 0.25, 1.0, -0.25, 1.0, -0.25, -0.75, -1.0, -0.75, -1.0, -0.75, 0.25, -1.0, -1.0, -0.75, 0.5, 0.5, 0.75, 0.25, -0.25, 0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 0.25, -0.25, 1.0, -0.25, ]);
    const array4 = new Float32Array([-0.5, 1.0, 0.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.25, 0.75, 0.75, 0.75, -0.5, 0.0, -0.5, 1.0, -1.0, -0.75, -1.0, 1.0, 0.75, 0.0, 0.5, -0.25, 0.5, 0.5, -1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.25, -0.75, -0.25, 1.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.5, -0.25, 0.75, -1.0, 0.75, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, -0.75, -0.25, 0.5, -0.5, -0.25, -0.75, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, 0.25, 0.5, -0.5, -1.0, -0.25, 1.0, 1.0, -0.5, 0.75, -0.25, 1.0, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, -0.75, 0.0, -1.0, -0.75, -0.5, 0.5, -0.25, -0.25, -0.5, -0.5, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.25, 0.75, -1.0, 0.75, -0.25, 1.0, 0.75, -0.25, 0.5, 0.25, 0.25, 0.0, -0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, -1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 1.0, 0.5, -0.25, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, -0.5, 0.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, -0.75, 0.0, -0.5, 0.25, -0.5, 0.0, 1.0, 0.25, -1.0, 0.0, -0.25, -1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 0.5, -1.0, 0.0, -0.5, -0.5, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.75, -1.0, -1.0, -0.5, 1.0, 0.25, 0.25, 0.25, 0.5, -0.75, 0.75, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query000.destroy()
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const array6 = new Float32Array([0.75, -0.5, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, 0.25, 1.0, 1.0, 0.5, -0.25, 0.5, 0.5, -0.5, 0.0, 0.75, 1.0, 0.75, -0.25, 0.25, 1.0, 0.25, -0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.75, 1.0, 0.5, 0.25, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.75, 1.0, -0.75, -0.25, -0.75, -0.25, 1.0, 0.0, -0.5, 1.0, 0.75, 0.25, 0.0, 0.25, -0.5, -1.0, 0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.5, -0.75, 1.0, -0.5, 0.25, -0.75, 0.0, -0.5, -1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 0.75, -1.0, -0.75, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, -0.75, -0.25, -0.25, 0.25, 0.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, ]);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    query001.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    query200.destroy()
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    query200.destroy()
    
    
    command_encoder200.clearBuffer(buffer201);
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
        occlusionQuerySet: query201
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
    
    device00.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query202
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_pass_encoder2020.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture200.destroy();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer202.destroy()
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device20.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    query202.destroy()
    
    query202.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer203.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    query201.destroy()
    device20.pushErrorScope("validation");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder2000.popDebugGroup();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
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
    device10.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.popDebugGroup();
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
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    render_bundle_encoder201.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2021.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device30.queue.submit([]);
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query202.destroy()
    
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array7 = new Float32Array([-0.75, 0.0, 0.0, 1.0, 1.0, 1.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.25, 0.75, 0.75, -1.0, 1.0, 0.25, 0.5, 0.75, -0.75, 1.0, -0.5, 0.5, 0.75, 0.0, -0.5, 0.0, -0.5, 0.25, 0.5, 0.25, -0.5, 0.5, 0.5, 0.5, -0.5, 0.25, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, 0.5, -1.0, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 0.0, 0.25, 0.5, 0.5, 0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, -0.25, 1.0, 0.0, 0.75, -0.75, 0.25, -1.0, 1.0, -0.25, -0.75, -0.75, -0.25, 0.0, -0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 0.0, -0.75, 0.25, 0.0, 0.75, 0.0, -0.5, ]);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
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
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    query300.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query203.destroy()
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
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.executeBundles([])
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2021.endOcclusionQuery()
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer204,
        0
    )
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    device00.pushErrorScope("internal");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query300.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device40.destroy();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    query203.destroy()
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2030.setPipeline(render_pipeline200);
    command_encoder300.insertDebugMarker("mymarker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    command_encoder300.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query201.destroy()
    render_pass_encoder2000.executeBundles([])
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2010.executeBundles([])
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const array8 = new Float32Array([0.75, 0.5, 0.25, 1.0, -0.25, 1.0, -0.5, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.75, 0.5, 0.25, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.75, -0.5, 0.75, 0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.75, -0.75, -0.5, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.25, 0.5, 1.0, -0.75, 0.0, 0.5, 0.5, -1.0, 0.25, 0.75, -1.0, 0.5, -0.5, 0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.75, -0.5, -0.25, -0.75, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 0.75, 1.0, -1.0, ]);
    render_pass_encoder2001.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer204,
        0
    )
    render_pass_encoder2010.popDebugGroup();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder202.setVertexBuffer(0, buffer203);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2001.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    command_encoder300.popDebugGroup()
    render_bundle_encoder202.draw(3);
    
    render_pass_encoder2001.setStencilReference(1);
    render_pass_encoder2010.setPipeline(render_pipeline203);
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer205
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
    render_pass_encoder2000.setStencilReference(1);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder2001.pushDebugGroup("group_marker");
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder200.setPipeline(render_pipeline203);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query200.destroy()
    render_pass_encoder2021.setStencilReference(1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer206,
        0
    )
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer207.destroy()
    buffer400.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    compute_pass_encoder2010.popDebugGroup()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    
    command_encoder200.resolveQuerySet(
        query204,
        0,
        32,
        buffer205,
        0
    )
    texture202.destroy();
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    buffer200.destroy()
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    render_pass_encoder2021.setPipeline(render_pipeline201);
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    buffer209.destroy()
    query202.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    
    device20.queue.writeBuffer(buffer2010, 0, array5, 0, array5.length);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query205.destroy()
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer206.destroy()
    render_pass_encoder2021.insertDebugMarker("marker");
    buffer302.destroy()
    
    render_pass_encoder2010.setVertexBuffer(0, buffer205);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    query204.destroy()
    buffer209.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device20.pushErrorScope("validation");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer204,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    texture201.destroy();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    query301.destroy()
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    device20.queue.writeBuffer(buffer2012, 0, array4, 0, array4.length);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    buffer2012.destroy()
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setVertexBuffer(0, buffer209);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.setVertexBuffer(0, buffer203);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2010.endOcclusionQuery()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2021.setBindGroup(0, bind_group204);
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.setVertexBuffer(0, buffer203);
    render_pass_encoder2000.end();
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
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group206);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2020.setVertexBuffer(0, buffer2013);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2019, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2001.end();
    render_pass_encoder2021.end();
    const command_buffer201 = command_encoder201.finish();
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group207);
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder3000.setVertexBuffer(0, buffer301);
    render_pass_encoder2030.draw(3);
    render_pass_encoder3000.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    const command_buffer203 = command_encoder203.finish();
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder3000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2019, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    const command_buffer300 = command_encoder300.finish();
    command_encoder200.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer2014, 0);
    render_pass_encoder3000.drawIndirect(buffer301, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.end();
    compute_pass_encoder2010.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder3000.draw(3);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.end();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder2001.draw(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder3000.draw(3);
    device00.queue.submit([command_buffer000, ]);
}