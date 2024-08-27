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
    
    
    
    const array0 = new Float32Array([0.75, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 0.75, 0.75, 0.75, -0.25, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, -0.25, 0.25, -0.25, -0.75, -0.75, 1.0, 0.25, 0.75, 1.0, 1.0, 0.0, -0.75, 0.75, 0.0, 0.25, 0.75, 1.0, 1.0, 1.0, -0.75, -0.25, 0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 0.75, -0.75, 0.0, -0.25, 0.5, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 0.5, 1.0, 0.75, -0.25, -0.25, 0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 0.5, -0.25, -1.0, 1.0, -0.5, 0.0, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 1.0, 1.0, -0.25, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.25, 0.0, -0.25, 0.25, -0.25, 1.0, -0.25, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -0.5, -0.75, -0.25, 1.0, 0.25, -0.5, -0.75, -0.75, 0.0, 0.25, 0.25, 0.5, 1.0, -0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 1.0, -0.5, -0.5, -1.0, -0.75, -0.5, 0.0, -0.25, 0.0, -0.5, 0.25, 0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.75, 0.25, 0.5, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([1.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, -0.75, -0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.75, 0.25, -0.75, 1.0, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.75, -0.75, -1.0, -0.5, 0.0, 0.0, 0.5, 0.75, 1.0, 0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, 0.0, -1.0, 0.25, -1.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.75, -0.25, 0.25, 0.0, 0.25, 0.0, 1.0, -0.5, -0.5, -0.5, -0.5, -0.5, 0.75, -0.5, 0.25, 0.0, 0.5, 1.0, 0.0, -1.0, 0.5, 0.0, -1.0, -0.75, -1.0, -0.25, -0.75, -0.25, -1.0, -0.5, 0.0, ]);
    device00.pushErrorScope("validation");
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder000.clearBuffer(buffer000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.clearBuffer(buffer000);
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    command_encoder000.insertDebugMarker("mymarker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.clearBuffer(buffer000);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const command_buffer000 = command_encoder000.finish();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.popDebugGroup();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer000,
        0,
        400
    );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const array3 = new Float32Array([-0.25, 0.25, -0.25, -1.0, -0.75, 0.25, -0.75, 0.5, -0.75, 0.5, -0.25, -0.75, -1.0, -0.75, 0.0, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, -0.25, 0.0, 0.25, -0.75, 1.0, 1.0, 0.75, -0.25, 1.0, 0.0, -1.0, -0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.25, 0.75, 0.75, -0.75, 0.25, -1.0, -1.0, 0.5, -1.0, -0.5, -1.0, 0.5, 0.0, 0.25, -0.5, 0.5, 0.25, 0.25, -0.25, 1.0, -0.5, 0.5, 0.75, 0.25, 0.25, 0.25, 0.75, 0.75, 1.0, 0.25, -1.0, 0.75, 0.75, -1.0, -0.5, 1.0, 0.75, 0.25, 0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.75, 0.0, -0.75, -1.0, 0.25, -0.25, -1.0, 1.0, -0.5, -0.5, -1.0, -0.75, 0.25, 0.5, -0.25, -1.0, -1.0, ]);
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.popDebugGroup();
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const array4 = new Float32Array([1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -0.25, 1.0, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, 0.25, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, 0.5, -0.75, -0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, 0.25, 0.5, -0.5, -1.0, -0.25, 0.5, 1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, -0.5, 1.0, 1.0, -0.25, -0.5, 0.75, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, -1.0, -0.5, -0.5, 0.0, 0.75, 0.0, 0.75, 0.0, 0.5, 1.0, 1.0, 0.5, -1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, 0.75, -0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.75, -0.5, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 0.25, ]);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.beginOcclusionQuery(0)
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    const array5 = new Float32Array([0.75, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, 0.75, 0.5, -0.75, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, -1.0, 0.0, -1.0, 0.5, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.75, 0.0, 1.0, -1.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.5, -0.25, 0.0, 0.75, -0.5, 0.5, -0.5, -1.0, -1.0, -0.5, -0.75, 0.75, -0.75, 0.5, 0.0, -1.0, 1.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, 0.75, -1.0, 0.25, 1.0, 0.0, 0.5, -1.0, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 0.75, -0.5, 0.0, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 1.0, 0.25, 0.0, -0.25, 1.0, 0.5, ]);
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
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder002.popDebugGroup();
    
    render_pass_encoder0010.popDebugGroup();
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setStencilReference(1);
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer000, ]);
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array6 = new Float32Array([0.25, 0.75, 0.25, -1.0, -0.75, 1.0, -0.75, 0.5, 0.25, 1.0, -1.0, -0.5, -1.0, 0.0, -1.0, 0.25, -0.25, -1.0, 0.0, 0.25, -0.25, 0.0, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, 0.5, 0.25, -0.5, 0.5, 1.0, -1.0, -0.75, 1.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -0.75, -0.5, -1.0, 0.5, -0.25, -0.5, 1.0, -1.0, 1.0, -0.5, 0.25, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.25, -0.25, -0.75, 0.25, 0.0, -0.25, 0.5, 1.0, 0.5, -1.0, -1.0, 1.0, -0.25, -0.5, 0.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.5, 0.0, 0.75, -0.75, -0.75, 0.25, -0.75, 0.0, 0.5, 0.5, 0.0, 0.0, 1.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder0010.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.75, -0.75, 0.5, 0.25, -1.0, 1.0, -0.75, 0.0, 0.25, 0.0, 0.75, -1.0, -1.0, 0.0, 1.0, -0.5, -0.25, 0.5, -1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, 0.75, 0.75, -0.75, 0.5, 0.5, -0.25, -0.5, 0.25, 1.0, 0.5, 0.75, 1.0, -0.5, -0.75, -0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 0.5, 0.75, 0.75, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, 0.0, -0.75, 0.25, 0.5, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, 0.25, -0.5, 0.75, 1.0, -0.25, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, -1.0, -0.5, 1.0, 0.5, 0.25, -0.25, 0.75, -0.25, 0.5, ]);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device10.pushErrorScope("validation");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_buffer201 = command_encoder201.finish();
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0010.endOcclusionQuery()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder0020.setStencilReference(1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
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
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device50.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
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
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture200.destroy();
    texture100.destroy();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array8 = new Float32Array([1.0, -0.25, 0.0, 0.75, 1.0, -0.25, -0.25, 0.25, -0.75, -1.0, 0.75, 0.0, 0.25, 0.0, -0.25, -1.0, -0.25, -0.75, -0.5, 0.5, -0.25, -0.25, -1.0, 0.5, -1.0, -0.25, 0.25, 0.25, 0.25, 0.5, -1.0, -0.5, 1.0, -0.25, 0.75, 0.0, -0.25, 0.25, -1.0, -0.75, -1.0, -0.75, 0.0, 0.5, -0.5, 0.0, 0.0, 1.0, 0.75, -0.25, 0.0, -0.25, -0.25, -0.25, 0.25, -1.0, -1.0, 0.75, 0.5, 0.75, -1.0, 0.25, 0.0, -1.0, -0.25, -0.75, -0.25, -0.5, -0.25, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.75, 0.75, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.5, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, ]);
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query006
    });
    render_bundle_encoder200.popDebugGroup();
    device60.pushErrorScope("validation");
    
    render_pass_encoder0010.beginOcclusionQuery(0)
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    command_encoder004.copyBufferToBuffer(
        buffer006,
        0,
        buffer005,
        0,
        400
    );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query007
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
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
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder0030.setStencilReference(1);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query004
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    
    
    render_pass_encoder0050.setStencilReference(1);
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
    device40.pushErrorScope("validation");
    render_pass_encoder0050.setStencilReference(1);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
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
    render_bundle_encoder002.popDebugGroup();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const command_buffer203 = command_encoder203.finish();
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer204 = command_encoder204.finish();
    
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder0040.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.popDebugGroup();
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
    
    device00.queue.writeBuffer(buffer005, 0, array8, 0, array8.length);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    render_pass_encoder0040.endOcclusionQuery()
    
    
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    texture201.destroy();
    render_pass_encoder0050.setStencilReference(1);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder102.popDebugGroup();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_pass_encoder0020.setStencilReference(1);
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0050.endOcclusionQuery()
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder0030.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
}