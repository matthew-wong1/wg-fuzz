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
    const array0 = new Float32Array([-1.0, 0.25, 0.0, -0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 1.0, -0.5, 0.0, -1.0, 0.5, 0.0, 0.75, -0.25, 0.5, 0.75, 1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, -1.0, -0.75, -0.5, 0.75, -0.75, 0.0, 0.5, 0.5, 0.0, 0.75, -0.5, 0.5, 0.5, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, 0.0, 0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -1.0, 0.25, 0.0, -0.25, -0.5, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.75, -0.5, -0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 0.25, 0.25, -0.75, ]);
    const array1 = new Float32Array([1.0, -0.5, 0.75, 0.75, 0.25, 0.0, -1.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.25, -1.0, 0.25, -0.5, -1.0, -0.5, 0.25, 0.75, -1.0, -0.75, -0.75, 0.75, 0.75, 1.0, 1.0, 0.25, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, -0.75, 1.0, 0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, 0.0, 0.25, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.75, 0.75, -0.25, -0.5, -1.0, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.25, 0.0, -1.0, 0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    const array2 = new Float32Array([0.75, -0.25, -0.75, 0.5, -0.5, -0.25, 1.0, -1.0, 0.25, 0.0, 1.0, -0.5, -0.5, -0.75, 0.25, -0.25, 1.0, 0.0, 0.25, -0.75, 0.75, 0.25, 1.0, -0.25, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.25, 0.75, 0.5, -0.75, -1.0, 0.5, 1.0, -0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.5, 1.0, -0.75, 0.25, -1.0, -1.0, 0.25, -1.0, 0.5, -1.0, -0.75, -0.5, 0.0, 0.5, -0.75, -0.75, -0.5, 0.5, -0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.25, 0.75, -1.0, -0.25, -0.25, 0.25, ]);
    
    query101.destroy()
    
    query101.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query103.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    query101.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder1000.setStencilReference(1);
    texture100.destroy();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    
    device20.destroy();
    query100.destroy()
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
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
    query101.destroy()
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    
    query103.destroy()
    
    query102.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    query101.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.executeBundles([])
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("internal");
    query100.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([-0.25, -0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, -0.75, 1.0, 0.25, -0.75, -0.75, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, 0.75, 0.0, -1.0, -1.0, 0.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, -1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 1.0, -0.5, 0.0, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.5, -0.75, 0.5, 0.0, -0.25, -0.75, 1.0, 0.0, -0.75, -0.5, 1.0, 0.25, -0.25, -0.75, -1.0, 1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 1.0, -0.5, 0.75, 0.0, -0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device30.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    query102.destroy()
    render_pass_encoder1000.popDebugGroup();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    query104.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1000.setStencilReference(1);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const array4 = new Float32Array([0.25, 0.75, 0.0, -0.5, -0.5, 0.75, 1.0, -1.0, 0.5, 0.0, 1.0, -0.75, -0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 1.0, -0.75, -0.25, -0.25, -0.25, -0.75, 0.5, -1.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -0.5, -0.25, -0.25, -0.75, 0.25, -0.75, 0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, 0.5, 0.75, -0.75, 0.25, -1.0, -0.75, 0.25, -0.25, -1.0, -0.75, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.0, -0.75, -0.5, -0.5, -0.75, 0.0, -1.0, 0.5, 0.5, 0.5, -0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.0, 0.75, 1.0, ]);
    
    render_pass_encoder1000.insertDebugMarker("marker");
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
    query104.destroy()
    texture101.destroy();
    query101.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const array5 = new Float32Array([0.75, 1.0, 0.25, 0.0, 1.0, 0.0, -0.75, 0.25, 0.25, -0.25, 0.5, 0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 1.0, -1.0, 0.75, 0.0, -0.75, 0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.25, 0.5, -0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, -0.75, -0.75, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, 0.5, -0.5, 0.0, -0.5, 0.75, 0.0, 0.75, -0.25, -1.0, 0.25, 0.25, -0.25, -0.75, 0.0, 1.0, -0.5, -0.25, 0.0, 1.0, 0.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.0, -0.5, -0.5, -0.5, 0.5, -1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -1.0, 0.0, 0.0, 1.0, 0.5, -0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 0.5, 0.25, -0.5, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("validation");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    query100.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    texture102.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
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
    texture103.destroy();
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    query100.destroy()
    render_pass_encoder1040.executeBundles([])
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device60.pushErrorScope("out-of-memory");
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder1030.insertDebugMarker("marker");
    const array6 = new Float32Array([1.0, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, 0.0, -1.0, -0.5, 1.0, 0.0, 0.25, 0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.75, 0.75, 1.0, 0.5, -0.75, -0.5, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, 0.5, -0.75, -1.0, -0.25, -0.5, -0.75, -1.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.75, 1.0, -1.0, -1.0, -1.0, 1.0, 0.0, 0.5, 0.25, -1.0, -0.75, 1.0, -0.5, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, -1.0, 0.5, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, 0.75, 0.25, 0.5, -0.75, 0.25, 0.0, -0.25, -0.5, 0.75, 1.0, 0.0, -1.0, 0.0, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.75, 0.75, 1.0, -0.75, 1.0, ]);
    
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    texture104.destroy();
    render_pass_encoder1000.popDebugGroup();
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1000.setStencilReference(1);
    buffer100.destroy()
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.pushErrorScope("internal");
    query100.destroy()
    query102.destroy()
    
    render_pass_encoder1050.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    query104.destroy()
    buffer101.destroy()
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query104.destroy()
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1030.executeBundles([])
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    query103.destroy()
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1040.executeBundles([])
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1050.setStencilReference(1);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1050.setStencilReference(1);
    const command_buffer601 = command_encoder601.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1000.popDebugGroup();
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    device40.destroy();
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1050.setStencilReference(1);
    buffer600.destroy()
    
    
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    buffer602.destroy()
    texture105.destroy();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder1040.setStencilReference(1);
    const array7 = new Float32Array([1.0, -0.5, 1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.75, 0.75, 0.5, 1.0, -1.0, -0.75, -1.0, 0.25, 0.25, 1.0, -0.75, -0.25, -0.75, -0.75, -0.75, 0.75, -0.75, -0.25, -0.75, 0.25, -1.0, 0.25, 0.0, -0.25, -0.75, -0.25, -1.0, 1.0, -0.5, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, 1.0, 0.25, 0.75, -0.75, -0.25, 0.0, 0.75, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 1.0, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.75, -1.0, -0.5, -1.0, -0.25, 0.0, -0.25, 0.5, -0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -1.0, 0.75, 0.5, -0.25, 0.75, 0.25, 0.0, 0.25, -0.25, 1.0, 0.5, -0.75, -0.5, -0.75, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    query104.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1030.executeBundles([])
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.pushErrorScope("validation");
    render_pass_encoder1030.executeBundles([])
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device100.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query103.destroy()
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1050.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.executeBundles([])
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    query102.destroy()
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1060.insertDebugMarker("marker");
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1050.executeBundles([])
    query109.destroy()
    render_pass_encoder1040.setStencilReference(1);
    device60.pushErrorScope("internal");
    render_pass_encoder1050.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1060.insertDebugMarker("marker");
    buffer102.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
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
    render_pass_encoder1050.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_pass_encoder1050.setStencilReference(1);
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer103.destroy()
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder1000.popDebugGroup();
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device80.pushErrorScope("out-of-memory");
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1050.setStencilReference(1);
    query100.destroy()
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1040.setStencilReference(1);
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.executeBundles([])
    device80.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1060.pushDebugGroup("group_marker");
    buffer700.destroy()
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.popDebugGroup();
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    render_pass_encoder1030.insertDebugMarker("marker");
    
    query108.destroy()
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    
    
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    texture1200.destroy();
    render_pass_encoder1000.executeBundles([])
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    render_pass_encoder1060.insertDebugMarker("marker");
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query108.destroy()
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout103]
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device110.pushErrorScope("internal");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1100.destroy()
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
    render_pass_encoder1060.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1013 = device10.createQuerySet({
        label: "query1013",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    
    query1011.destroy()
    
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    buffer601.destroy()
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    query108.destroy()
    device120.destroy();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    query100.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.executeBundles([])
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query108.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query109.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: query101
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    
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
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    query103.destroy()
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    render_pass_encoder1070.pushDebugGroup("group_marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder1030.popDebugGroup();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    
    command_encoder1101.insertDebugMarker("mymarker");
    command_encoder1100.insertDebugMarker("mymarker");
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const command_buffer1100 = command_encoder1100.finish();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    const command_buffer701 = command_encoder701.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    const command_buffer1101 = command_encoder1101.finish();
}