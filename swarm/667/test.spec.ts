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
    
    
    
    
    
    
    
    
    
    
    const array0 = new Float32Array([-0.5, -0.5, -0.75, -1.0, -1.0, 0.25, -0.5, -0.25, -0.75, -0.5, 0.0, 0.5, -0.75, 0.0, -0.75, 0.5, 0.5, 0.0, -0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.25, 0.0, -0.5, 1.0, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 0.25, -0.25, 0.0, 0.75, -1.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.75, -1.0, 0.0, -1.0, 0.5, 1.0, 0.5, 0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.75, 0.5, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -0.5, -0.5, 0.0, 0.75, -1.0, 0.5, 0.75, 0.0, 0.75, -0.5, -0.5, -0.25, 1.0, 0.75, -0.5, -0.75, 0.25, 1.0, 0.75, -0.25, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array1 = new Float32Array([0.5, -1.0, 0.75, 0.5, 0.25, 0.25, -0.25, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, 1.0, -0.75, -0.75, -1.0, -0.25, 1.0, 0.5, 0.5, -0.75, 0.75, -0.5, -0.75, 1.0, 1.0, 1.0, 0.5, 0.0, 0.0, -0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.25, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 0.0, 0.25, 0.0, -1.0, 1.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.75, 1.0, 0.25, -0.25, -0.25, 0.0, -0.25, 0.75, -0.5, -1.0, 0.0, -0.5, -0.5, -1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -1.0, -0.75, 0.5, -0.25, 0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, -1.0, 0.0, 0.0, 0.5, -0.25, 0.0, 0.75, -0.75, 0.0, 0.75, ]);
    
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const array2 = new Float32Array([0.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, 0.75, -0.5, -0.5, -1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.0, 0.75, -1.0, -1.0, -1.0, 0.75, 0.25, 1.0, 0.75, 0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -0.75, 0.0, -0.5, -0.25, 0.75, -0.25, -0.75, 0.5, -0.5, -0.25, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, 0.75, -1.0, 0.25, 0.75, 0.75, -0.5, -0.25, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.75, 0.75, 0.5, 0.25, 0.75, -0.25, 0.0, 0.25, -0.25, -0.25, -1.0, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, -0.5, -0.25, -1.0, 0.25, -1.0, -1.0, 0.0, 0.25, 0.75, 0.0, 1.0, 0.0, 0.0, 0.75, 0.5, -0.25, 1.0, 0.25, -0.5, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_buffer000 = command_encoder000.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.insertDebugMarker("mymarker");
    
    command_encoder100.insertDebugMarker("mymarker");
    const command_buffer100 = command_encoder100.finish();
    
    command_encoder101.insertDebugMarker("mymarker");
    device00.pushErrorScope("internal");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array3 = new Float32Array([-0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.5, -1.0, 1.0, 0.75, 0.5, -1.0, 0.25, -0.25, -0.25, 0.75, 1.0, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.5, -0.5, -1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 0.25, -0.25, 0.5, 0.0, 0.75, -1.0, 0.75, 0.5, 1.0, 0.0, 0.0, 1.0, 0.75, -0.25, -0.5, 0.25, 0.5, -0.75, 0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 0.5, -0.5, 1.0, 0.25, -1.0, -1.0, 0.0, 1.0, -0.75, 0.25, -1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -0.5, 0.5, 0.75, 0.25, 1.0, -0.75, -0.25, -0.5, -0.25, -0.25, 1.0, 0.75, 0.75, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, -1.0, -1.0, 0.25, -0.25, -0.75, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("validation");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer001 = command_encoder001.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device30.pushErrorScope("out-of-memory");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const array4 = new Float32Array([-0.75, -0.75, -1.0, 0.0, 0.5, -1.0, 1.0, -0.75, 1.0, 1.0, 0.0, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, -0.25, -0.5, -0.25, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -0.5, 0.25, -0.5, -1.0, 1.0, -0.5, 0.5, -0.25, 0.75, -0.75, 0.75, -0.25, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 0.25, -0.75, -0.5, -0.5, -0.5, 0.25, 1.0, 1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 1.0, 1.0, -0.5, -0.25, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, -0.5, 0.0, -0.75, 0.0, -0.5, 0.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.5, 0.0, 0.75, -0.5, 0.0, 0.5, 1.0, 0.0, -0.5, 0.25, -1.0, 0.25, -0.75, -0.25, ]);
    query000.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer002 = command_encoder002.finish();
    device30.destroy();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    
    
    device00.queue.submit([command_buffer001, ]);
    
    query001.destroy()
    
    command_encoder003.insertDebugMarker("mymarker");
    
    device00.pushErrorScope("internal");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    command_encoder003.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
        occlusionQuerySet: undefined
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder1040.executeBundles([])
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    query002.destroy()
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.setStencilReference(1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
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
        occlusionQuerySet: query003
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    query100.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    query001.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    texture000.destroy();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    render_pass_encoder0050.insertDebugMarker("marker");
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
    render_pass_encoder0050.beginOcclusionQuery(0)
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    
    texture001.destroy();
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0030.beginOcclusionQuery(0)
    render_pass_encoder0030.executeBundles([])
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture003.destroy();
    query100.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    texture002.destroy();
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1040.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0030.endOcclusionQuery()
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
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0030.beginOcclusionQuery(0)
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device40.pushErrorScope("validation");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder1040.executeBundles([])
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
    render_pass_encoder0050.executeBundles([])
    
    
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0040.insertDebugMarker("marker")
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder0030.executeBundles([])
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query400.destroy()
    
    
    texture400.destroy();
    
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
    render_pass_encoder0030.setStencilReference(1);
    query103.destroy()
    
    render_pass_encoder0050.executeBundles([])
    
    render_pass_encoder0030.executeBundles([])
    
    
    render_pass_encoder1040.popDebugGroup();
    query005.destroy()
    render_pass_encoder0050.setStencilReference(1);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0030.endOcclusionQuery()
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    query003.destroy()
    query100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1040.setStencilReference(1);
    device40.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    texture402.destroy();
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query104.destroy()
    query103.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.pushErrorScope("validation");
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder0030.executeBundles([])
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    query003.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    query104.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    query005.destroy()
    render_pass_encoder0030.setStencilReference(1);
    query007.destroy()
    query007.destroy()
    render_pass_encoder1040.popDebugGroup();
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    render_pass_encoder0050.endOcclusionQuery()
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder1050.setStencilReference(1);
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1050.insertDebugMarker("marker");
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0050.executeBundles([])
    texture403.destroy();
    
    texture401.destroy();
    device10.pushErrorScope("internal");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query104.destroy()
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1060.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setStencilReference(1);
    query400.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1050.insertDebugMarker("marker");
    query002.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    
    
    texture101.destroy();
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_pass_encoder1060.executeBundles([])
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    
    texture405.destroy();
    query000.destroy()
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture004.destroy();
    render_pass_encoder1060.insertDebugMarker("marker");
    
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query007.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1060.executeBundles([])
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
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder002.insertDebugMarker("marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const texture_view4060 = texture406.createView({ label: "texture_view4060" });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder1070.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    query004.destroy()
    
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_pass_encoder0030.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    query103.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array5 = new Float32Array([-1.0, -0.75, 0.0, -0.5, 0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 0.5, -0.25, 0.75, 0.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.75, -0.5, 0.0, -0.5, 0.5, 1.0, 0.75, 0.0, -0.5, -1.0, 0.75, 0.75, -0.5, -0.25, -0.75, 0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, -0.5, -0.25, 0.0, 0.25, 0.25, 0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.0, 0.5, 0.75, 0.0, 1.0, 0.5, -0.5, -1.0, 0.0, 0.25, 1.0, -1.0, 0.75, 0.75, -0.75, 0.75, 0.25, 1.0, 1.0, 1.0, -0.25, 0.0, 0.0, 0.25, 1.0, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, 0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.5, -0.5, 0.0, -0.5, -1.0, ]);
    query002.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    texture005.destroy();
    
    
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0030.popDebugGroup();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query400.destroy()
    
    
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    query105.destroy()
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query104
    });
    query105.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1040.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}