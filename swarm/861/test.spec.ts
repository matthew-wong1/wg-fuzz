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
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array0 = new Float32Array([-0.75, 0.25, 1.0, 0.25, -0.75, -1.0, 0.5, -0.5, -0.5, -0.5, 1.0, -0.25, -0.5, -0.75, -0.25, 0.25, 0.0, 0.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, -0.75, 0.25, 1.0, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, 0.0, -1.0, 1.0, 0.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, 0.75, 1.0, -0.5, 1.0, 0.25, 0.5, -0.75, -0.25, -0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 0.25, 0.75, -1.0, 0.75, -0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 0.75, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, 0.75, 0.25, 0.0, -0.25, 1.0, -0.25, 0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, 1.0, ]);
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
    
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array1 = new Float32Array([-0.25, -1.0, -1.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.75, 0.75, -1.0, -0.5, -1.0, 0.25, -1.0, -0.5, 1.0, 1.0, -0.5, -0.25, -0.75, -1.0, 0.75, -0.25, 1.0, -0.75, -0.25, 0.5, 0.0, 0.0, -0.5, -0.75, 0.75, 0.0, 0.25, 0.25, 0.25, 0.5, -1.0, 0.5, 1.0, -0.75, -0.5, 0.75, 0.75, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, -0.75, 0.25, 0.75, 0.75, -1.0, 1.0, -0.5, 0.5, 1.0, 0.0, 0.75, -1.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.0, 0.75, 0.25, 0.75, -0.25, 0.25, 0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -1.0, -0.5, 0.5, 0.0, -1.0, 0.5, 0.0, -0.75, -1.0, 0.5, 0.5, 0.75, 0.75, -0.25, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
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
    
    
    
    
    
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    query000.destroy()
    buffer000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const array2 = new Float32Array([0.75, -0.75, 0.0, 0.25, -1.0, -1.0, -0.5, 1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.5, 0.25, -0.75, 0.25, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, -1.0, -1.0, 0.75, 0.5, -0.5, -0.25, -0.25, 1.0, -0.25, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, 0.75, -0.25, 0.75, -0.75, 0.5, 1.0, -1.0, 0.0, 0.0, 0.5, 1.0, -1.0, 0.0, 0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.75, 0.75, 0.75, -0.25, 1.0, 1.0, 0.5, 0.5, 0.25, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, 0.25, -0.75, 1.0, -1.0, -0.75, 0.0, -0.75, -0.5, -0.25, ]);
    query000.destroy()
    
    texture001.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    buffer001.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array3 = new Float32Array([-0.75, -0.5, -0.5, 1.0, -0.75, 0.75, -0.5, -0.75, 1.0, 0.25, 0.5, -0.75, 0.25, -1.0, 0.0, -1.0, -0.25, -1.0, -0.75, 0.0, 0.5, -1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -0.25, 0.5, -0.5, -1.0, -0.75, 0.0, 0.25, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, -1.0, -0.75, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -0.75, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, 0.5, -0.25, -0.5, -1.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, -0.5, -1.0, 0.5, -0.75, 1.0, 0.0, -0.25, -0.25, 1.0, 0.5, -1.0, 0.0, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 1.0, 0.0, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array4 = new Float32Array([-0.5, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.25, 0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -0.25, 0.5, 0.75, 0.75, 0.25, -0.5, 0.75, 0.5, 0.5, 0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, -0.25, -1.0, -1.0, 0.0, -1.0, 1.0, -0.25, 0.0, 0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 0.5, 0.25, -0.25, -1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, 0.5, -1.0, 0.5, -0.75, -0.25, -0.5, -0.25, 0.0, -0.5, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -0.75, ]);
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
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
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.pushErrorScope("out-of-memory");
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    buffer200.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.executeBundles([])
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query001.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    query200.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query002.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    query100.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
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
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    command_encoder004.clearBuffer(buffer002);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    command_encoder101.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const array5 = new Float32Array([0.75, -0.5, 0.75, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, -0.5, 1.0, 0.5, -1.0, -0.25, 0.75, -0.75, 0.0, -0.5, 0.5, -1.0, 0.5, 0.5, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.0, -0.5, -1.0, 0.75, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, -0.75, 0.5, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.75, 1.0, -1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.75, 0.25, -1.0, -0.25, 0.75, 0.75, -0.5, -0.75, -0.75, -0.75, 0.25, -1.0, -0.75, 0.75, 0.0, 1.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, 1.0, -0.25, -1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, 0.25, -0.25, 0.75, -1.0, ]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("out-of-memory");
    command_encoder101.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.executeBundles([])
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    query002.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    query100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    buffer002.destroy()
    texture100.destroy();
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0020.executeBundles([])
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer004.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    query100.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
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
        occlusionQuerySet: undefined
    });
    query000.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query300.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    query200.destroy()
    query001.destroy()
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder202.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
        occlusionQuerySet: query100
    });
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture200.destroy();
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array6 = new Float32Array([-0.25, 0.0, 0.0, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, 0.75, 0.75, -0.5, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, 0.5, -0.5, -0.25, 0.25, 1.0, -0.75, 0.75, -0.75, -0.5, 1.0, 0.75, 0.5, 0.75, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.5, 0.25, -0.25, -0.25, -0.75, 1.0, 1.0, 0.0, -0.75, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 0.25, 0.0, 0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, -1.0, -0.5, -0.25, 0.25, -1.0, -0.75, 0.0, -0.5, -1.0, 0.0, 1.0, -1.0, 1.0, 1.0, 0.25, -0.5, 0.0, -0.5, ]);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
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
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout203]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder0010.popDebugGroup();
    query002.destroy()
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder300.clearBuffer(buffer302);
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder300.clearBuffer(buffer302);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder0000.popDebugGroup()
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    query300.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query100.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
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
    query100.destroy()
    
    query004.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer301.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0050.executeBundles([])
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    query000.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout205]
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer302.destroy()
    
    query300.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query005 = device00.createQuerySet({
        label: "query005",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    texture101.destroy();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query300.destroy()
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder1020.executeBundles([])
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.75, -1.0, -0.5, 0.0, -1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 1.0, -0.25, -0.75, 0.0, -1.0, -0.75, -0.75, 0.0, 0.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.0, -0.75, 0.0, -1.0, 0.5, -0.75, 0.25, 0.0, 1.0, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, 0.25, -0.75, 0.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 1.0, 0.5, -0.5, 0.5, 0.25, 0.0, 0.25, 0.25, 0.0, -0.5, -0.25, 0.5, 0.75, -0.25, 0.5, -0.5, 0.5, 0.75, 0.75, 0.0, 0.0, 0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 1.0, 1.0, 0.5, 0.75, -1.0, -0.5, -0.25, 0.25, 0.5, 0.25, -0.75, 0.0, 1.0, ]);
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    query204.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    query202.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer300.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2030.executeBundles([])
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    buffer005.destroy()
    render_pass_encoder0010.popDebugGroup();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query101.destroy()
    render_pass_encoder2030.executeBundles([])
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query201.destroy()
    query300.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query001.destroy()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
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
    render_pass_encoder1010.executeBundles([])
    query300.destroy()
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer304, 0, array2, 0, array2.length);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder2010.popDebugGroup()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    buffer304.destroy()
    query201.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query301.destroy()
    buffer305.destroy()
    render_pass_encoder2030.executeBundles([])
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture202.destroy();
    buffer100.destroy()
    texture102.destroy();
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query007.destroy()
    
    query204.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_pass_encoder0050.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
}