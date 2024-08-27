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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    buffer000.destroy()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture000.destroy();
    
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    
    const array0 = new Float32Array([0.25, 0.0, 0.5, 0.25, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.5, 0.5, 0.25, -0.25, 0.0, 0.5, 0.25, -0.5, -0.75, -0.25, -0.5, 0.25, 0.5, -0.5, 0.5, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -0.5, -0.5, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, 1.0, 0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -1.0, -0.75, 0.25, 0.25, 0.5, -0.25, 0.0, -0.5, -0.75, -1.0, -0.75, -0.25, 0.0, -1.0, -0.75, 0.25, -0.5, 0.75, -0.5, 0.25, -1.0, -0.75, 0.5, -0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, 0.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.pushErrorScope("out-of-memory");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder1000.popDebugGroup()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    render_pass_encoder1020.popDebugGroup();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1030.executeBundles([])
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder101.popDebugGroup()
    render_pass_encoder1020.executeBundles([])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder105.insertDebugMarker("mymarker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder104.insertDebugMarker("mymarker");
    const array1 = new Float32Array([-0.25, -0.25, -0.5, -1.0, -1.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.25, 1.0, -0.25, 1.0, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -0.75, -1.0, 0.5, -0.75, 0.25, 0.0, 0.75, -0.75, 0.5, -0.75, -0.5, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 0.75, -1.0, 0.25, -0.75, -1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -1.0, -0.75, 0.25, -0.25, -0.75, -0.75, -0.25, -1.0, -0.5, 0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -0.75, 0.75, 0.25, 0.75, -0.75, -1.0, 0.25, -0.75, 0.25, -0.25, -0.75, -0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, -0.5, -0.25, 0.0, 0.5, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.pushErrorScope("out-of-memory");
    texture100.destroy();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    texture101.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const array2 = new Float32Array([0.0, 0.75, -0.75, 1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, 1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, -0.75, -1.0, 1.0, 0.5, 0.0, -0.5, -1.0, -0.75, 0.75, -0.5, 0.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 1.0, 1.0, 0.25, 0.25, 1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, -0.25, 0.5, 0.5, 0.5, 1.0, 0.5, 0.75, -0.5, 0.25, -0.75, 0.5, 0.0, -0.75, 1.0, 0.0, 0.75, 0.5, 0.25, -0.75, 0.5, -0.75, -0.75, 0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 1.0, 0.25, -0.75, 0.5, 0.75, -0.5, 0.25, 0.5, -0.75, -0.25, -1.0, 0.0, 0.0, -0.5, -1.0, ]);
    
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
    const command_buffer103 = command_encoder103.finish();
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const array3 = new Float32Array([0.25, 0.5, 0.0, -0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 1.0, 0.25, 1.0, 0.75, -0.75, -0.5, 0.25, -0.25, 0.5, -1.0, -1.0, -0.25, 0.0, 0.5, -1.0, -0.75, 0.5, 0.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.75, -0.25, -0.25, 0.5, -1.0, 0.0, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 0.25, 0.5, -1.0, 0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -1.0, 0.25, 0.75, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 0.75, -0.25, -0.5, 0.75, 1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, -0.5, -1.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.5, -0.5, -0.5, -0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 0.75, ]);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1011.insertDebugMarker("marker");
    const compute_pass_encoder1041 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1041" });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1041.insertDebugMarker("marker")
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1030.setStencilReference(1);
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
    render_pass_encoder1011.insertDebugMarker("marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1041.pushDebugGroup("group_marker")
    render_pass_encoder1051.setStencilReference(1);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.75, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, -1.0, -0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, 0.5, 0.0, 0.75, -1.0, 0.75, 1.0, 0.0, 0.25, 0.5, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.75, -0.5, -0.25, 1.0, 0.25, 0.5, 0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, 1.0, 0.75, -1.0, -0.5, -0.75, 1.0, 0.0, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, -1.0, 0.0, 1.0, 0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 1.0, -1.0, -0.25, -0.75, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, -0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, -0.5, -0.75, 0.0, -0.5, ]);
    buffer100.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer103
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1051.setStencilReference(1);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1051.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.executeBundles([])
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1051.executeBundles([])
    
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setStencilReference(1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query101.destroy()
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder1011.insertDebugMarker("marker");
    buffer105.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1051.setStencilReference(1);
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.beginOcclusionQuery(0)
    render_pass_encoder1050.popDebugGroup();
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.executeBundles([])
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([])
    buffer101.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    buffer100.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1051.pushDebugGroup("group_marker");
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
    
    render_pass_encoder1051.executeBundles([])
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1041.setPipeline(compute_pipeline100);
    
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    render_pass_encoder1020.popDebugGroup();
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1051.setPipeline(render_pipeline101);
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    buffer103.destroy()
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1051.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
    render_pass_encoder1011.setStencilReference(1);
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
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
    render_pass_encoder1051.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1041.pushDebugGroup("group_marker");
    render_pass_encoder1041.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder105.popDebugGroup()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1020.setPipeline(render_pipeline102);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1041.popDebugGroup();
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1030.setPipeline(render_pipeline100);
    device30.destroy();
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1050.setPipeline(render_pipeline100);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer107.destroy()
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1022,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder106.copyBufferToTexture(
        {
            buffer: buffer108
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
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer108.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1041.setStencilReference(1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1041.setPipeline(render_pipeline101);
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1040.setPipeline(render_pipeline104);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder102.insertDebugMarker("mymarker");
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer106.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setStencilReference(1);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer400 = command_encoder400.finish();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1021.executeBundles([render_bundle_encoder102, ])
    
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.executeBundles([])
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.setPipeline(render_pipeline101);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1061.setStencilReference(1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1061.setPipeline(render_pipeline104);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    render_pass_encoder1060.setPipeline(render_pipeline101);
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    render_pass_encoder1011.setPipeline(render_pipeline102);
    compute_pass_encoder1041.insertDebugMarker("marker")
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1041.pushDebugGroup("group_marker");
    buffer102.destroy()
    query101.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1001.setPipeline(render_pipeline104);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer103);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1000.pushDebugGroup("group_marker");
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1041.setBindGroup(0, bind_group103);
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder1061.pushDebugGroup("group_marker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1061.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1000.popDebugGroup()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    const array5 = new Float32Array([0.0, -1.0, -0.25, 1.0, 0.0, 1.0, 0.25, 0.75, 0.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 0.25, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, -1.0, 1.0, -0.75, 1.0, 0.75, 0.25, 0.25, 0.5, 0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.0, 0.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, -0.5, -0.5, 0.75, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.25, 0.75, 0.5, -0.25, -0.75, 0.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.25, 1.0, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, -1.0, 1.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.25, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, 0.25, -1.0, 0.0, 0.0, 0.75, 0.25, -0.75, 0.5, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    render_bundle_encoder102.setPipeline(render_pipeline105);
    command_encoder106.copyBufferToBuffer(
        buffer1012,
        0,
        buffer100,
        0,
        400
    );
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer1015.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1070.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_bundle_encoder101.setBindGroup(0, bind_group105);
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer1013, 0, array5, 0, array5.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder1071.setPipeline(render_pipeline102);
    render_pass_encoder1020.popDebugGroup();
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    render_pass_encoder1070.setPipeline(render_pipeline104);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder1050.setVertexBuffer(0, buffer1018);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group108);
    render_pass_encoder1061.popDebugGroup();
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group109);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.setVertexBuffer(0, buffer1014);
    render_pass_encoder1041.popDebugGroup();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1030.setVertexBuffer(0, buffer1017);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1010);
    render_pass_encoder1010.setVertexBuffer(0, buffer1025);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1071.setBindGroup(0, bind_group1011);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.setVertexBuffer(0, buffer1017);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group1012);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.end();
    device40.queue.submit([command_buffer400, ]);
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1013);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group1014);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setVertexBuffer(0, buffer105);
    render_pass_encoder1060.setVertexBuffer(0, buffer1019);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
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
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1015);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.setVertexBuffer(0, buffer1027);
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1016);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1042, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.setVertexBuffer(0, buffer1025);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.setVertexBuffer(0, buffer1029);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1071.setVertexBuffer(0, buffer103);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1016, 0);
    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1044,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    render_pass_encoder1051.setBindGroup(0, bind_group1018);
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.setVertexBuffer(0, buffer107);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer103, 0);
    render_pass_encoder1041.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1041.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group1019);
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.end();
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1001.setVertexBuffer(0, buffer1026);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1010.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    command_encoder100.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1050.setIndexBuffer(buffer1048, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, command_buffer106, command_buffer107, ]);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1070.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    render_pass_encoder1061.setBindGroup(0, bind_group1020);
    render_pass_encoder1051.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1061.setVertexBuffer(0, buffer100);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1050, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer107, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1037, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer104, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    command_encoder101.popDebugGroup()
    compute_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1042, 0);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1021);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.draw(3);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer106, ]);
    const command_buffer101 = command_encoder101.finish();
    device40.queue.submit([]);
    render_pass_encoder1071.end();
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.end();
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1056, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1040.end();
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1030.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    compute_pass_encoder1041.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1060,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1030.drawIndirect(buffer1050, 0);
    render_pass_encoder1011.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1061, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1061, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1060.drawIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1061.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    compute_pass_encoder1040.end();
    device40.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1041.drawIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1056, 0);
    compute_pass_encoder1000.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer103, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1050, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1070.drawIndirect(buffer1061, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1025);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1056, 0);
    render_pass_encoder1041.drawIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1067,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder1061.drawIndirect(buffer1021, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1070.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1061.drawIndirect(buffer1048, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    compute_pass_encoder1041.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1056, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1050, 0);
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1068, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1027);
    render_pass_encoder1071.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1049, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1001.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1061.drawIndirect(buffer1029, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1050.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.draw(3);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1071.drawIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1040.setIndexBuffer(buffer1052, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    device40.queue.submit([command_buffer400, command_buffer401, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.drawIndirect(buffer1062, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1060.drawIndirect(buffer1057, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1071, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1070.drawIndirect(buffer1056, 0);
    render_pass_encoder1001.drawIndirect(buffer1057, 0);
    render_pass_encoder1071.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndirect(buffer1040, 0);
    compute_pass_encoder1041.end();
    compute_pass_encoder1041.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1070, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1068, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.drawIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer1049, 0);
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1073,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1057, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1021.end();
    const uint32_1041 = new Uint32Array(3);

    uint32_1041[0] = 100;
    uint32_1041[1] = 1;
    uint32_1041[2] = 1;

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1074, 0, uint32_1041, 0, uint32_1041.length);

    compute_pass_encoder1041.dispatchWorkgroupsIndirect(buffer1074, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1061, 0);
    render_pass_encoder1070.drawIndirect(buffer1049, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1041.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1015, 0);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1029);
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1030);
    render_pass_encoder1011.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    device20.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.end();
    device40.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1081, 0);
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1064, 0);
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndirect(buffer1076, 0);
    render_pass_encoder1041.drawIndirect(buffer1074, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1068, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1041.drawIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1042, 0);
    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1083,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1032);
    render_pass_encoder1071.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndirect(buffer1068, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer1074, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1061, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1084, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1084, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1085, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1085, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1061, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1087,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1033);
    render_pass_encoder1040.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1070, 0);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer1085, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1088, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndirect(buffer1071, 0);
    render_pass_encoder1020.drawIndirect(buffer1056, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder1061.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1041.end();
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1084, 0);
    render_pass_encoder1010.drawIndirect(buffer1085, 0);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    render_pass_encoder1061.drawIndirect(buffer1050, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1088, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.drawIndirect(buffer1049, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1060.drawIndirect(buffer1088, 0);
    render_pass_encoder1070.drawIndirect(buffer1084, 0);
    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1035 = device10.createBindGroup({
        label: "bind_group1035",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1092,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1035);
    render_pass_encoder1011.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1056, 0);
    device40.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1070.drawIndirect(buffer1056, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1085, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer1081, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1070, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1084, 0);
    render_pass_encoder1000.drawIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1051.drawIndirect(buffer1086, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndirect(buffer1088, 0);
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndirect(buffer1071, 0);
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndirect(buffer1061, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1084, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1081, 0);
    render_pass_encoder1070.drawIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1041.drawIndirect(buffer1050, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1074, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1071, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1030.drawIndirect(buffer1049, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndirect(buffer1081, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1071, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1051.drawIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1061.end();
    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1094,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1036);
    render_pass_encoder1050.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndirect(buffer1088, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1094, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1095, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1095, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1071.drawIndirect(buffer1010, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1071.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1060.drawIndirect(buffer1084, 0);
    compute_pass_encoder1041.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1085, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndirect(buffer1085, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1084, 0);
    compute_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer1061, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder1041.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1097,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1037);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.end();
    device40.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.end();
    render_pass_encoder1011.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1071, 0);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1095, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device40.queue.submit([]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1098, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1098, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndirect(buffer1068, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1038 = device10.createBindGroup({
        label: "bind_group1038",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10100,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1038);
    render_pass_encoder1050.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndirect(buffer1071, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1095, 0);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1051.drawIndirect(buffer1061, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer1092, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1071.drawIndirect(buffer1098, 0);
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1061.drawIndirect(buffer1085, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10101, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer10101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1096, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.end();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1061.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1039 = device10.createBindGroup({
        label: "bind_group1039",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10103,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1039);
    render_pass_encoder1010.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndexed(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1057, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1084, 0);
    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1040 = device10.createBindGroup({
        label: "bind_group1040",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10105,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndirect(buffer1098, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1050.drawIndirect(buffer1098, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1021.drawIndirect(buffer1081, 0);
    render_pass_encoder1021.drawIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1041.drawIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10107,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1041);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1083, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1098, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1060.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    const buffer10108 = device10.createBuffer({
        label: "buffer10108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10109 = device10.createBuffer({
        label: "buffer10109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10109,
                },
            },
        ],
    });

    compute_pass_encoder1041.setBindGroup(0, bind_group1042);
    render_pass_encoder1001.drawIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1070.drawIndirect(buffer1081, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1095, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1041.dispatchWorkgroups(100);
    compute_pass_encoder1041.end();
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer1084, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer1074, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndirect(buffer1095, 0);
}