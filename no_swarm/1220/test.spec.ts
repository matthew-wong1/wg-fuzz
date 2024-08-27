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
    
    
    
    const array0 = new Float32Array([-0.75, 0.5, -0.5, -0.25, 0.0, 1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.75, 1.0, 0.75, 0.25, -0.5, 1.0, -0.25, 0.5, -0.25, 0.25, -1.0, -1.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 0.5, 1.0, 0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.25, 0.5, 0.75, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, 0.75, 0.75, -1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.0, -0.25, -0.5, -0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -0.5, 0.25, -0.25, -0.75, -0.5, 0.0, 1.0, 0.0, 0.0, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, -0.5, 0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 0.0, 0.5, 0.25, -0.75, ]);
    const array1 = new Float32Array([1.0, 0.5, -0.75, -0.25, 0.5, -0.25, 0.5, -0.5, -1.0, -0.75, 0.5, -0.75, -1.0, 0.0, 1.0, -0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, 0.75, -1.0, -0.5, 0.75, 0.25, 1.0, -1.0, -0.25, 0.5, 0.0, 0.25, -0.5, 0.25, 0.5, -0.5, 0.25, 1.0, -0.75, 1.0, -0.25, 0.0, -0.75, 1.0, -0.25, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.25, 0.0, -0.25, 0.5, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, 0.0, 0.75, 0.0, 0.25, 0.75, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, -1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 0.0, -0.5, 0.0, -0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    device20.pushErrorScope("validation");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const array2 = new Float32Array([0.75, 0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 1.0, -0.25, 0.0, 0.75, -0.25, 0.25, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, 1.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, 0.0, -0.75, 1.0, -0.75, 0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, -1.0, 0.25, 0.5, 1.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, -0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -0.75, 0.75, 0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, -0.5, -0.25, 1.0, -0.75, 0.0, ]);
    const array3 = new Float32Array([-0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.25, -1.0, 0.0, 1.0, 0.0, 0.75, -0.5, 0.25, -0.25, -0.25, -0.25, -1.0, -0.25, 0.25, -0.75, 0.75, 1.0, 0.5, -0.25, 1.0, -0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, 1.0, 0.0, 0.75, -0.5, 0.25, -0.25, -0.75, -0.5, 1.0, -0.5, 0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -1.0, -0.5, 0.0, -0.25, 0.25, 0.25, -0.5, -0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.5, -0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.5, -0.25, -0.25, 0.0, -0.25, 0.75, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 0.5, 0.5, 0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer201.destroy()
    command_encoder201.clearBuffer(buffer201);
    texture100.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.popDebugGroup();
    
    buffer202.destroy()
    
    
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_buffer200 = command_encoder200.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    render_bundle_encoder200.popDebugGroup();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture200.destroy();
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture201.destroy();
    buffer100.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    render_pass_encoder1000.executeBundles([])
    device00.pushErrorScope("internal");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.executeBundles([])
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.popDebugGroup();
    
    buffer200.destroy()
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query200.destroy()
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder200.popDebugGroup();
    
    
    device20.pushErrorScope("internal");
    command_encoder100.popDebugGroup()
    device10.pushErrorScope("validation");
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer001.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    texture000.destroy();
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture101.destroy();
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.popDebugGroup();
    texture000.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer000.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder202.popDebugGroup();
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder1000.setStencilReference(1);
    
    
    
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer002.destroy()
    device30.pushErrorScope("internal");
    
    query100.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_pass_encoder1001.insertDebugMarker("marker");
    query000.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query300.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1001.executeBundles([])
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
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
    
    const array4 = new Float32Array([-0.75, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.75, -0.5, -0.25, 0.75, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, 0.5, 0.25, -1.0, -0.75, 1.0, -0.25, 0.75, 0.25, -0.5, -1.0, -0.5, -1.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 0.5, 0.0, 0.5, -0.75, 0.25, -0.75, 1.0, -0.75, -0.75, -0.75, -0.25, 0.5, 0.0, -1.0, 0.25, 0.25, -1.0, 0.5, -0.25, -1.0, -1.0, 0.5, 0.75, -0.25, 1.0, -0.5, 0.25, -0.5, -0.75, 0.5, -0.5, -0.25, 0.75, -0.75, 0.0, -1.0, 0.0, 0.5, -1.0, -1.0, 0.5, -0.5, 0.75, -0.25, -0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 0.0, -1.0, ]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    device20.pushErrorScope("validation");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    
    
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    query101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_buffer000 = command_encoder000.finish();
    command_encoder201.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
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
    texture202.destroy();
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    query101.destroy()
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
        occlusionQuerySet: undefined
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1010.setStencilReference(1);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    buffer201.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1000.popDebugGroup();
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer203.destroy()
    
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.executeBundles([render_bundle_encoder101, ])
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    texture103.destroy();
    render_pass_encoder3000.executeBundles([])
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    texture001.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture000.destroy();
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder3000.executeBundles([render_bundle_encoder300, ])
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    render_pass_encoder1010.setStencilReference(1);
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
        occlusionQuerySet: undefined
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    
    
    query202.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    query201.destroy()
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setPipeline(render_pipeline100);
    texture105.destroy();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    command_encoder001.pushDebugGroup("mygroupmarker")
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
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
    compute_pass_encoder2011.insertDebugMarker("marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    query103.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.popDebugGroup()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group100);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const array5 = new Float32Array([0.75, -0.75, -1.0, 0.5, -0.75, 0.0, 0.5, -0.75, 0.75, -1.0, 0.0, 1.0, -1.0, -0.5, -0.75, 0.5, -0.25, -0.75, 0.75, -0.25, 0.75, 0.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -0.25, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 1.0, -1.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.5, -0.25, 0.5, 0.0, 1.0, -0.25, 0.75, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 0.75, 0.5, 0.75, 1.0, 1.0, 0.0, 0.0, -1.0, 0.0, -1.0, 0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, -1.0, ]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.executeBundles([])
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
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
        layout: render_pipeline300.getBindGroupLayout(0),
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
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    device10.pushErrorScope("out-of-memory");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder103.clearBuffer(buffer103);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout304]
    });
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    render_pass_encoder1010.setPipeline(render_pipeline101);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.setStencilReference(1);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder3000.setPipeline(render_pipeline300);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline101);
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group102);
    render_pass_encoder1021.setPipeline(render_pipeline101);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group103);
    render_pass_encoder1001.setVertexBuffer(0, buffer100);
    compute_pass_encoder1010.popDebugGroup()
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
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

    render_pass_encoder3000.setBindGroup(0, bind_group301);
    const command_buffer301 = command_encoder301.finish();
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
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
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.submit([]);
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    render_pass_encoder3001.setPipeline(render_pipeline300);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    render_pass_encoder3001.popDebugGroup();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder3000.setVertexBuffer(0, buffer304);
    render_pass_encoder1011.setVertexBuffer(0, buffer108);
    render_pass_encoder3000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer102);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    render_pass_encoder1021.end();
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setVertexBuffer(0, buffer1011);
    device20.queue.submit([command_buffer202, ]);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group302);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([]);
    render_pass_encoder3001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.setVertexBuffer(0, buffer1014);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    device00.queue.submit([command_buffer001, ]);
    const command_buffer203 = command_encoder203.finish();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1018, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder3001.setVertexBuffer(0, buffer306);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3001.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    device20.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder1001.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder3001.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([]);
    render_pass_encoder3001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.end();
    render_pass_encoder3001.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.end();
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group109);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder3001.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder3001.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder3001.end();
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.end();
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder3000.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder3001.end();
    device10.queue.submit([command_buffer103, ]);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder3000.end();
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.end();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer300, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder3001.draw(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder3000.draw(3);
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder3001.drawIndirect(buffer302, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1012, 0);
    device30.queue.submit([command_buffer300, ]);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder3001.end();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.end();
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([]);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    device00.queue.submit([]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3001.draw(3);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder3001.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder3001.drawIndexedIndirect(buffer304, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1033, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1033, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1034, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3000.end();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder3000.drawIndirect(buffer303, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder2030.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder1021.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder3000.drawIndexed(3);
    compute_pass_encoder1010.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder2030.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder1021.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    device20.queue.submit([command_buffer202, command_buffer203, ]);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    device00.queue.submit([]);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1035, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder3001.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder2011.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3001.end();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder3001.drawIndexed(3);
    render_pass_encoder1001.end();
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder3000.end();
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder3001.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder3000.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3001.end();
    render_pass_encoder3000.drawIndexed(3);
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3001.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer300, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.end();
    device00.queue.submit([]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder3001.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1016);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
}