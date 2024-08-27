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
    
    
    const array0 = new Float32Array([0.25, -0.5, -1.0, 0.25, 1.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, 0.75, 0.75, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.25, -1.0, 0.25, -0.75, -1.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 1.0, 0.0, -0.25, -1.0, -0.25, -0.25, 0.5, -0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 0.5, -0.5, 1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 0.0, -0.5, 0.75, -0.25, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, 0.25, -0.5, -0.25, 0.5, 1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, 0.5, 0.25, -1.0, 0.75, 0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array1 = new Float32Array([-1.0, -1.0, 0.25, -0.75, 0.5, 0.75, -0.75, 1.0, -0.75, -0.5, 0.5, -0.75, 0.5, 1.0, -0.25, 0.25, 1.0, -0.25, 0.5, -0.25, 1.0, -0.5, 0.25, -1.0, -0.25, 0.5, 1.0, -0.75, -0.5, -1.0, -0.5, 0.75, -0.75, 0.25, -1.0, -1.0, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.0, -1.0, -0.75, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, 0.75, 1.0, 0.5, -1.0, -0.25, 0.5, -0.75, 1.0, -0.25, 0.75, 0.25, -0.5, 0.25, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -1.0, 0.25, 0.25, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, -0.75, -1.0, -0.25, -1.0, -0.25, -0.25, -0.75, -1.0, -0.25, 1.0, -0.5, -0.75, 1.0, 0.0, -0.25, 0.0, ]);
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder101.insertDebugMarker("mymarker");
    const array2 = new Float32Array([-0.75, 1.0, -0.5, 0.5, -1.0, -0.25, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 0.25, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, 0.0, 0.75, 0.5, 0.0, -0.5, 1.0, 0.25, -0.5, -1.0, -0.25, 1.0, -1.0, 1.0, -0.75, 0.75, -0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -0.75, 1.0, -0.25, 1.0, -1.0, -0.5, 1.0, 0.5, -0.25, 0.5, 0.5, 0.5, 0.75, 0.0, 0.25, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, 0.75, 1.0, 0.5, -0.25, -0.5, 0.25, 0.0, -0.75, -0.75, 1.0, 0.25, 0.25, -0.25, -1.0, -1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, -1.0, -0.25, 0.5, 0.25, -1.0, 1.0, -0.25, ]);
    const array3 = new Float32Array([0.25, 0.25, 1.0, 0.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.5, -0.75, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.75, -0.5, -0.25, 0.5, 0.0, -0.25, 1.0, 0.5, 0.75, 0.0, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, -0.25, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, 0.0, -0.5, 0.0, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 0.25, 0.75, -0.75, 0.5, 0.25, -0.25, 0.0, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 0.25, -0.5, -0.5, 1.0, 1.0, 0.0, -0.25, 0.0, 0.25, -0.5, -1.0, -1.0, -1.0, 1.0, 0.25, -1.0, -0.25, 0.75, 0.25, -0.75, -0.25, -0.5, -0.5, 1.0, 1.0, ]);
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
        occlusionQuerySet: query102
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.queue.submit([]);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder101.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("internal");
    query102.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer102.destroy()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    query100.destroy()
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.popDebugGroup();
    
    device20.pushErrorScope("internal");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer104 = command_encoder104.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1050.executeBundles([])
    
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("internal");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    query103.destroy()
    render_pass_encoder1000.executeBundles([])
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setStencilReference(1);
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    device30.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.setStencilReference(1);
    
    query101.destroy()
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder1051.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder1051.executeBundles([])
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture101.destroy();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query104
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1031.popDebugGroup();
    device10.pushErrorScope("internal");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("internal");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    device10.queue.submit([command_buffer104, ]);
    
    device50.destroy();
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
    render_pass_encoder1060.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query200.destroy()
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1040.executeBundles([render_bundle_encoder101, ])
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer101
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder3000.popDebugGroup()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query201.destroy()
    render_pass_encoder1050.executeBundles([])
    const array4 = new Float32Array([1.0, 0.25, 1.0, 0.0, 0.5, -1.0, 0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -0.5, 0.0, 0.5, 0.5, -0.25, -1.0, 1.0, 0.25, 1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 1.0, -1.0, 0.75, 0.5, -0.75, 0.0, 0.25, -0.5, 0.5, 0.0, -0.75, -1.0, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, 1.0, -1.0, -1.0, 1.0, 0.75, 0.5, -0.5, 0.5, 0.0, -0.5, 0.75, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.0, -0.5, 1.0, 0.0, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 0.75, -0.5, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 1.0, -0.25, -0.5, -1.0, 0.0, 0.5, 0.25, ]);
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.setStencilReference(1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query102.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.setStencilReference(1);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1070.pushDebugGroup("group_marker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query104
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1070.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query202.destroy()
    texture200.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1070.setStencilReference(1);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1001.executeBundles([])
    const render_pass_encoder1081 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1081",
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
    render_pass_encoder1020.setStencilReference(1);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    query202.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    query301.destroy()
    buffer200.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1081.executeBundles([render_bundle_encoder101, ])
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    render_pass_encoder1001.popDebugGroup();
    command_encoder200.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1061.pushDebugGroup("group_marker");
    render_pass_encoder1021.setStencilReference(1);
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    render_pass_encoder1081.setPipeline(render_pipeline100);
    render_pass_encoder1070.setPipeline(render_pipeline100);
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1080.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_pass_encoder1021.setStencilReference(1);
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1081.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture201.destroy();
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: query101
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1031.setPipeline(render_pipeline100);
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, ])
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1060.beginOcclusionQuery(0)
    buffer200.destroy()
    render_pass_encoder1050.popDebugGroup();
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder1080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder1051.popDebugGroup();
    query201.destroy()
    texture200.destroy();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.setPipeline(render_pipeline100);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setPipeline(render_pipeline100);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1051.setPipeline(render_pipeline101);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query301.destroy()
    
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1080.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1070.setStencilReference(1);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.executeBundles([])
    command_encoder200.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    texture300.destroy();
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder105.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1061.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_pass_encoder1071 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query104
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1030.popDebugGroup();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.popDebugGroup();
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query301.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1080.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1090.executeBundles([])
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder1061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder1080.setPipeline(render_pipeline102);
    render_pass_encoder2000.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1071.setStencilReference(1);
    render_pass_encoder1071.beginOcclusionQuery(0)
    
    render_pass_encoder1030.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder302.insertDebugMarker("mymarker");
    render_pass_encoder1050.popDebugGroup();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    render_pass_encoder1090.setPipeline(render_pipeline103);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.insertDebugMarker("mymarker");
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1060.beginOcclusionQuery(0)
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1061.setPipeline(render_pipeline101);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1071.endOcclusionQuery()
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder1010.setPipeline(render_pipeline103);
    render_pass_encoder1011.setPipeline(render_pipeline101);
    render_pass_encoder1000.setPipeline(render_pipeline103);
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1071.setPipeline(render_pipeline101);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1090.setBindGroup(0, bind_group100);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1070.setBindGroup(0, bind_group102);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1081.setBindGroup(0, bind_group103);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group104);
    render_pass_encoder1000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1071.setBindGroup(0, bind_group105);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.setVertexBuffer(0, buffer101);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1071.setVertexBuffer(0, buffer1015);
    render_pass_encoder1031.popDebugGroup();
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group200);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group108);
    render_pass_encoder1070.setVertexBuffer(0, buffer102);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group109);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1021.setVertexBuffer(0, buffer1017);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1000.setVertexBuffer(0, buffer1015);
    render_pass_encoder1021.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.setVertexBuffer(0, buffer1014);
    render_pass_encoder1001.setIndexBuffer(buffer1021, "uint16");
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1010);
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

    render_pass_encoder1050.setBindGroup(0, bind_group1011);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1081.setVertexBuffer(0, buffer1021);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group1012);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder1010.setVertexBuffer(0, buffer1017);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder1070.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer1014);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1014);
    render_pass_encoder1050.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.setVertexBuffer(0, buffer101);
    render_pass_encoder1011.setVertexBuffer(0, buffer1018);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder2000.draw(3);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group1015);
    render_pass_encoder1071.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer1030);
    render_pass_encoder1090.setVertexBuffer(0, buffer1033);
    render_pass_encoder1090.drawIndirect(buffer108, 0);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    render_pass_encoder1080.setBindGroup(0, bind_group1016);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1017);
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer1018);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1080.setVertexBuffer(0, buffer1031);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1061.setVertexBuffer(0, buffer1022);
    render_pass_encoder1021.end();
    render_pass_encoder1030.end();
    render_pass_encoder1061.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1071.end();
    render_pass_encoder1020.drawIndexed(3);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1080.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1040.setVertexBuffer(0, buffer1018);
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1000.end();
    render_pass_encoder1070.drawIndirect(buffer1011, 0);
    render_pass_encoder1081.drawIndirect(buffer1032, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1061.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1081.drawIndirect(buffer108, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_pass_encoder2010.setBindGroup(0, bind_group201);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1081.end();
    render_pass_encoder2000.end();
    render_pass_encoder1081.drawIndirect(buffer101, 0);
    const command_buffer108 = command_encoder108.finish();
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    render_pass_encoder1061.end();
    render_pass_encoder1051.end();
    render_pass_encoder1050.end();
    render_pass_encoder1001.draw(3);
    command_encoder100.popDebugGroup()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer1023, "uint16");
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1080.drawIndirect(buffer101, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1061.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1090.end();
    render_pass_encoder1070.drawIndirect(buffer1014, 0);
    const command_buffer109 = command_encoder109.finish();
    command_encoder102.popDebugGroup()
    compute_pass_encoder1000.end();
    command_encoder101.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1070.popDebugGroup();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1050.drawIndexedIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer100, command_buffer108, command_buffer109, ]);
    render_pass_encoder2010.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1011.end();
    render_pass_encoder1061.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1036, "uint16");
    command_encoder105.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1018);
    render_pass_encoder2010.end();
    render_pass_encoder1081.setIndexBuffer(buffer1028, "uint16");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1031.setVertexBuffer(0, buffer1020);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.draw(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer106, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndirect(buffer1037, 0);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1080.drawIndirect(buffer102, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer1033, 0);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1090.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1061.drawIndirect(buffer104, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    device30.queue.submit([]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer103, command_buffer108, ]);
    render_pass_encoder1070.drawIndirect(buffer107, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1014, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1080.drawIndirect(buffer1019, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1080.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1081.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1081.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.drawIndirect(buffer102, 0);
    render_pass_encoder1051.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder1080.drawIndirect(buffer105, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1090.drawIndirect(buffer107, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1080.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1081.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndirect(buffer104, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1090.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.draw(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1039, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1061.draw(3);
    render_pass_encoder1090.drawIndirect(buffer109, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1001.end();
    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1042,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1090.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1016, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1081.end();
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1081.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1090.drawIndirect(buffer109, 0);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.setIndexBuffer(buffer105, "uint16");
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1010.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1061.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1081.drawIndirect(buffer101, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1071.drawIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer201, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1090.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1090.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer1029, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1061.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1081.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder1081.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1070.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1081.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1036, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1071.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.draw(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer100, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1061.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1018, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer1022, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.drawIndirect(buffer108, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1061.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1021.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    device30.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1090.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer104, command_buffer108, command_buffer109, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer200, ]);
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1012, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1028, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1080.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer105, command_buffer107, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder2000.draw(3);
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer108, ]);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1051.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1048, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer1025, 0);
    device30.queue.submit([]);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1081.drawIndirect(buffer105, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1081.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndirect(buffer102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1080.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1060.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1048, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1047, 0);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1081.setIndexBuffer(buffer104, "uint16");
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder1081.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer1021, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1071.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1020, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1080.drawIndirect(buffer1012, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1080.drawIndirect(buffer1031, 0);
    render_pass_encoder1081.drawIndirect(buffer1014, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1081.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1039, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1000.end();
    render_pass_encoder1081.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1080.drawIndirect(buffer1030, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1060.drawIndirect(buffer1032, 0);
    render_pass_encoder1090.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1048, "uint16");
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([]);
    render_pass_encoder1081.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, command_buffer104, command_buffer109, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1048, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1061.drawIndirect(buffer1049, 0);
    render_pass_encoder1090.drawIndirect(buffer102, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1000.end();
    render_pass_encoder1070.draw(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1090.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1081.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1034, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer105, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1044, "uint16");
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1043, 0);
    device20.queue.submit([]);
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1020.end();
    render_pass_encoder1081.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1061.draw(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer100, 0);
    render_pass_encoder1071.drawIndirect(buffer107, 0);
    render_pass_encoder1070.drawIndirect(buffer107, 0);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1060.end();
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1024, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1080.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1081.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1090.drawIndirect(buffer108, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1051.drawIndirect(buffer108, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1090.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1090.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1010, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1071.end();
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1070.end();
    device30.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1031, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1071.drawIndexed(3);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1052, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1052, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.drawIndirect(buffer100, 0);
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndirect(buffer1038, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1071.drawIndirect(buffer109, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1039, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndirect(buffer1026, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1061.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer107, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1061.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1035, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1050, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1070.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1032, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndirect(buffer1010, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1080.drawIndirect(buffer1050, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1030.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndirect(buffer108, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1081.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1055, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder2010.end();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer1025, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1053, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer108, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
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
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1020, 0);
    render_pass_encoder1070.drawIndirect(buffer1025, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    device10.queue.submit([]);
    render_pass_encoder2010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1070.draw(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder1071.drawIndirect(buffer1057, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1061.drawIndirect(buffer102, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
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
                    buffer: buffer1058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1059,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1081.drawIndirect(buffer103, 0);
    render_pass_encoder1090.drawIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1090.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1057, 0);
    device00.queue.submit([]);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndirect(buffer1049, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1042, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1090.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1090.drawIndirect(buffer1018, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndirect(buffer1012, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1011.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer100, 0);
    render_pass_encoder1061.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndirect(buffer107, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1081.setIndexBuffer(buffer1043, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2010.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1090.drawIndirect(buffer1019, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1081.drawIndirect(buffer100, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1043, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    render_pass_encoder1090.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1058, 0);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndirect(buffer1039, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    device10.queue.submit([command_buffer105, command_buffer109, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1081.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1081.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer108, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1037, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1081.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder2010.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1060, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1060, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1090.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1011.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1080.end();
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1039, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1061.setIndexBuffer(buffer1060, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    device10.queue.submit([command_buffer101, command_buffer107, command_buffer108, ]);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1060.drawIndirect(buffer108, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1021.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    device20.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    compute_pass_encoder1000.end();
    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
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
                    buffer: buffer1061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1062,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1024);
    render_pass_encoder1090.drawIndirect(buffer1048, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndirect(buffer1027, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1060.drawIndirect(buffer1037, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    device20.queue.submit([]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1090.drawIndirect(buffer104, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.end();
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1080.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1080.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.popDebugGroup();
    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
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
                    buffer: buffer1063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1064,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.end();
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
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
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    render_pass_encoder1051.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer105, 0);
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1027);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1069, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1070.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1081.drawIndirect(buffer1018, 0);
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1061.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    device30.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.draw(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1064, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer1067, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer1068, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1000.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1067, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer107, ]);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1081.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1090.drawIndirect(buffer107, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1090.drawIndirect(buffer1062, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    device00.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1080.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1071.end();
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1081.drawIndirect(buffer1046, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1051.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1061.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
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
                    buffer: buffer1070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1071,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1028);
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndirect(buffer1041, 0);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1024, "uint16");
    compute_pass_encoder3010.popDebugGroup()
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
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1029);
    render_pass_encoder1090.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder2010.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndirect(buffer1016, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1071.drawIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1071.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer1036, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1018, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    device20.queue.submit([]);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    device20.queue.submit([]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1081.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndirect(buffer1021, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1026, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndirect(buffer1013, 0);
    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
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
                    buffer: buffer1074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1075,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1030);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
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
                    buffer: buffer1076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1077,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    render_pass_encoder1001.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1028, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1078, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1075, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1081.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1081.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1019, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1061.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.end();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1081.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.end();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1074, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1021, 0);
    render_pass_encoder1051.end();
    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1081,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1061.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1081.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1076, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1038, "uint16");
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndirect(buffer1080, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1090.drawIndirect(buffer100, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1047, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer1031, 0);
    render_pass_encoder1080.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1080.drawIndirect(buffer1063, 0);
    render_pass_encoder1051.drawIndirect(buffer1061, 0);
    render_pass_encoder1080.drawIndirect(buffer1012, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1068, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1071.draw(3);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1051.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.drawIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1064, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1041, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1079, 0);
    device30.queue.submit([]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1050.end();
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1082, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndirect(buffer1071, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1059, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1080, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1054, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1061.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1057, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndirect(buffer1059, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndirect(buffer1059, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndirect(buffer1069, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1083, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1083, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1054, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1090.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1051.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer103, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1064, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1081.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1061, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1077, "uint16");
    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1085,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1033);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndirect(buffer1063, 0);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1071.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1059, "uint16");
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer1081, 0);
    render_pass_encoder1090.drawIndirect(buffer1049, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1070.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndirect(buffer1037, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1056, 0);
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1090.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1090.drawIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1081.setIndexBuffer(buffer109, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer1072, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1061.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1062, 0);
    render_pass_encoder1090.drawIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1090.end();
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndirect(buffer1057, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1072, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1085, 0);
    render_pass_encoder1070.drawIndirect(buffer1058, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1022, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndirect(buffer1060, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1050.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1058, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndirect(buffer1058, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1090.drawIndirect(buffer1031, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1070.drawIndirect(buffer1066, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1061.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1068, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1090.drawIndirect(buffer105, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1080.drawIndirect(buffer1058, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1080.drawIndirect(buffer1037, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1047, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    render_pass_encoder1061.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1050, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
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
        
    const bind_group1034 = device10.createBindGroup({
        label: "bind_group1034",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1034);
    render_pass_encoder1090.drawIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1061.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndirect(buffer1068, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1090.drawIndirect(buffer1056, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1050.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndirect(buffer1062, 0);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1066, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1086, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1071.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1031.drawIndirect(buffer1050, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1071.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    device30.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1065, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer101, command_buffer109, ]);
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1061.drawIndirect(buffer1074, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer1066, 0);
    render_pass_encoder1081.drawIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1081, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1090.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1052, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1081.end();
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer100, command_buffer107, command_buffer109, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1080.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1060.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1075, "uint16");
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1061.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer105, command_buffer106, command_buffer109, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer105, ]);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1068, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndirect(buffer1081, 0);
    device20.queue.submit([]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1073, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1080.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1090.drawIndirect(buffer1085, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndirect(buffer1063, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer1070, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    device10.queue.submit([command_buffer105, command_buffer106, command_buffer107, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1077, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
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
                    buffer: buffer1088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1089,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1035);
    render_pass_encoder1050.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1068, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.end();
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1090.drawIndirect(buffer1085, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1075, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1080.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1026, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1070.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1090.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndirect(buffer1047, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1090, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1090, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1090.drawIndirect(buffer108, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1020.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1047, 0);
    device10.queue.submit([command_buffer106, command_buffer109, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer1067, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndirect(buffer1062, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1059, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1081.drawIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1071.drawIndirect(buffer1083, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1091, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1061.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1084, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1064, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1080.drawIndirect(buffer1068, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1071.end();
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1036 = device10.createBindGroup({
        label: "bind_group1036",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1036);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1089, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1094, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    device30.queue.submit([]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1020.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1085, 0);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1080.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1086, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1051.drawIndirect(buffer1077, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1021.drawIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndirect(buffer1087, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndirect(buffer1080, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1011.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1071.drawIndirect(buffer1054, 0);
    render_pass_encoder1071.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1024, 0);
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1037 = device10.createBindGroup({
        label: "bind_group1037",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1037);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1081.drawIndirect(buffer1095, 0);
    render_pass_encoder1060.drawIndirect(buffer1085, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.drawIndirect(buffer1093, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1081.drawIndirect(buffer1050, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1062, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndirect(buffer1066, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1070.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer1063, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1057, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1016, 0);
    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
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
                    buffer: buffer1097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1098,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1038);
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1068, "uint16");
    device10.queue.submit([command_buffer104, command_buffer107, command_buffer108, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndirect(buffer1094, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer1071, 0);
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1071.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1061.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer1073, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1071.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1099, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1099, 0);
    render_pass_encoder1081.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndirect(buffer1099, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1011, "uint16");
    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
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
                    buffer: buffer10100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10101,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1039);
    render_pass_encoder1020.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    device20.queue.submit([]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1051.drawIndirect(buffer1081, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.end();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer1089, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1094, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1051.drawIndirect(buffer1064, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1080.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.end();
    device20.queue.submit([]);
    render_pass_encoder1090.drawIndirect(buffer1081, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1084, 0);
    render_pass_encoder1021.drawIndirect(buffer10101, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer100, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndirect(buffer1077, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndirect(buffer1067, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1081.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1091, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1084, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10103, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10103, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1080.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1061.drawIndirect(buffer103, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1070.drawIndirect(buffer1047, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer10103, 0);
    render_pass_encoder1090.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer1091, 0);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1081.drawIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1090.drawIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1056, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1095, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1029, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer106, command_buffer108, command_buffer109, ]);
    render_pass_encoder1071.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1084, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer1080, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    device10.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1090.drawIndirect(buffer1034, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, command_buffer108, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer10103, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10104, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1090.drawIndirect(buffer1097, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1080.drawIndirect(buffer10103, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1060.drawIndirect(buffer10102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1095, 0);
    render_pass_encoder1020.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1094, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1090, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1094, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.end();
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1061.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer10104, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1097, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer102, command_buffer108, ]);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1090.drawIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer1080, 0);
    render_pass_encoder1031.drawIndirect(buffer1087, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1080.end();
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder2000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1080.drawIndirect(buffer10103, 0);
    render_pass_encoder1090.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.end();
    render_pass_encoder1071.drawIndirect(buffer1080, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1020.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1060.draw(3);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1071.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1010, 0);
    render_pass_encoder1090.drawIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer108, ]);
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer10104, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10106 = device10.createBuffer({
        label: "buffer10106",
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
                    buffer: buffer10105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10106,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1040);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1031, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1080.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder1081.drawIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1081.drawIndirect(buffer1075, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1051, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1056, 0);
    render_pass_encoder1020.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    device20.queue.submit([]);
    render_pass_encoder1050.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1080, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1011.drawIndirect(buffer1062, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1069, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10107 = device10.createBuffer({
        label: "buffer10107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10107, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10107, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer1094, 0);
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
        
    const bind_group1041 = device10.createBindGroup({
        label: "bind_group1041",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1041);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1021.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1090.drawIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1060.drawIndirect(buffer1057, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndirect(buffer10103, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1089, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndirect(buffer10103, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndirect(buffer1094, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1071.drawIndirect(buffer105, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1094, 0);
    device20.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1061.drawIndirect(buffer104, 0);
    render_pass_encoder1090.drawIndirect(buffer1023, 0);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1047, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1085, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndirect(buffer10104, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1061.drawIndirect(buffer1035, 0);
    render_pass_encoder1090.drawIndirect(buffer1086, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer10104, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1081.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndirect(buffer10104, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer107, command_buffer109, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1090.drawIndirect(buffer1033, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1093, "uint16");
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1094, 0);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1090.drawIndirect(buffer101, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1061.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1061.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1090.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer108, 0);
    render_pass_encoder1081.drawIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1098, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1070.end();
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1066, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1072, "uint16");
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer106, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1046, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1061.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer1066, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1071.draw(3);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer1087, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1021.drawIndirect(buffer1083, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1080, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1010.drawIndirect(buffer1086, 0);
    render_pass_encoder1080.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1061, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1099, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1070.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10110 = device10.createBuffer({
        label: "buffer10110",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10110, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1020.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndirect(buffer1076, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1077, 0);
    device30.queue.submit([]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer1073, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1021.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1078, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10110, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1061.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10111 = device10.createBuffer({
        label: "buffer10111",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10111, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10111, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1070.drawIndirect(buffer10102, 0);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer103, command_buffer108, ]);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1081.end();
    render_pass_encoder1020.drawIndirect(buffer1095, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndirect(buffer106, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1040.drawIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer10111, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.popDebugGroup();
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1090, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer1032, 0);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1081.drawIndirect(buffer10102, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1080.drawIndirect(buffer10111, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndirect(buffer1099, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1010.drawIndirect(buffer1061, 0);
    render_pass_encoder1071.drawIndirect(buffer1095, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    const buffer10112 = device10.createBuffer({
        label: "buffer10112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10113 = device10.createBuffer({
        label: "buffer10113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1042 = device10.createBindGroup({
        label: "bind_group1042",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10113,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1042);
    render_pass_encoder1060.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1081.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndirect(buffer1098, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder1061.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer1066, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndirect(buffer10102, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1090.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1080.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1071.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1050, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer10111, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.drawIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1097, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1080.end();
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndirect(buffer105, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1031.drawIndirect(buffer10111, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1056, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1092, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1085, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1077, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndirect(buffer1073, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndirect(buffer100, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1080.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndirect(buffer1073, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1070, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10114 = device10.createBuffer({
        label: "buffer10114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10114, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10114, 0);
    render_pass_encoder1071.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndirect(buffer10114, 0);
    render_pass_encoder1031.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer1035, 0);
    render_pass_encoder1081.drawIndirect(buffer105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1060.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1061, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1090.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1098, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer10101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1020.drawIndirect(buffer10111, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1056, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1089, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1019, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1081.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer10104, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1011, 0);
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1051.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1090, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1050.drawIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1060.drawIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer106, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1092, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1017, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1090.drawIndirect(buffer10104, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1060.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    device20.queue.submit([]);
    render_pass_encoder1080.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder1060.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1020.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer104, command_buffer109, ]);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndirect(buffer1089, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1061.drawIndirect(buffer1098, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndirect(buffer10102, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1097, 0);
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1001.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1058, 0);
    render_pass_encoder1001.drawIndirect(buffer1072, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1070.drawIndirect(buffer10105, 0);
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10115 = device10.createBuffer({
        label: "buffer10115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10115, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10115, 0);
    render_pass_encoder1081.drawIndirect(buffer1025, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer10115, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10111, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer1050, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1063, 0);
    render_pass_encoder1070.drawIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer107, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.drawIndirect(buffer1057, 0);
    const buffer10116 = device10.createBuffer({
        label: "buffer10116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10117 = device10.createBuffer({
        label: "buffer10117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1043 = device10.createBindGroup({
        label: "bind_group1043",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10117,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1043);
    render_pass_encoder1080.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1051.drawIndirect(buffer10108, 0);
    render_pass_encoder1090.drawIndirect(buffer1076, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1080.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1011.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndirect(buffer1058, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1052, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1081.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndirect(buffer1094, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer1042, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1021.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1081.drawIndirect(buffer10103, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1090.endOcclusionQuery()
    render_pass_encoder1001.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1081.end();
    render_pass_encoder1001.drawIndirect(buffer10116, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1084, 0);
    render_pass_encoder1010.drawIndirect(buffer1048, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer10107, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1021.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndirect(buffer1089, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1000.drawIndirect(buffer1085, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1094, "uint16");
    device10.queue.submit([command_buffer103, command_buffer105, command_buffer106, ]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1020.drawIndirect(buffer10111, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1021, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1060.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10109, 0);
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1081.draw(3);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1080.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1048, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1058, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndirect(buffer1089, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer10102, 0);
    render_pass_encoder1021.drawIndirect(buffer1079, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1001.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1081.drawIndirect(buffer1099, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndirect(buffer1087, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer10108, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1080.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.drawIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndirect(buffer10101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1081.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1071.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1061, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1040.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1071.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1081.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndirect(buffer1081, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10111, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1089, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1081.drawIndirect(buffer1099, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1021.drawIndirect(buffer1084, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1081.drawIndirect(buffer1063, 0);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer105, command_buffer109, ]);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1085, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1073, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.draw(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1051.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    const buffer10118 = device10.createBuffer({
        label: "buffer10118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10119 = device10.createBuffer({
        label: "buffer10119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1044 = device10.createBindGroup({
        label: "bind_group1044",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10119,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1044);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10103, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndirect(buffer10113, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1070.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1090.drawIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10104, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1062, 0);
    device10.queue.submit([command_buffer104, command_buffer108, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1021.drawIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer10119, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1031.drawIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1092, 0);
    const buffer10120 = device10.createBuffer({
        label: "buffer10120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10121 = device10.createBuffer({
        label: "buffer10121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1045 = device10.createBindGroup({
        label: "bind_group1045",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10121,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1045);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10120, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1086, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndirect(buffer10115, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer10108, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1059, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndirect(buffer10103, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndirect(buffer10119, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1081.drawIndirect(buffer1084, 0);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1060.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer1096, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1081.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1070.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1078, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndirect(buffer10103, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1090.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer10119, 0);
    render_pass_encoder1081.drawIndirect(buffer1068, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10113, 0);
    render_pass_encoder1071.drawIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1071.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndirect(buffer10113, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1061.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer1010, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1071.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10122 = device10.createBuffer({
        label: "buffer10122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10122, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10122, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1048, "uint16");
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1089, 0);
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer1050, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndirect(buffer1056, 0);
    render_pass_encoder1090.drawIndirect(buffer1071, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1057, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer10108, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer1075, 0);
    render_pass_encoder1081.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndirect(buffer1057, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1061.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1091, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer10102, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1049, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1030.drawIndirect(buffer10111, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1090.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndirect(buffer1072, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    const buffer10123 = device10.createBuffer({
        label: "buffer10123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10124 = device10.createBuffer({
        label: "buffer10124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1046 = device10.createBindGroup({
        label: "bind_group1046",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10124,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1046);
    render_pass_encoder1081.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.drawIndirect(buffer1057, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1081.end();
    render_pass_encoder2000.end();
    render_pass_encoder1070.drawIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndirect(buffer1077, 0);
    render_pass_encoder1010.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10114, 0);
    const buffer10125 = device10.createBuffer({
        label: "buffer10125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10126 = device10.createBuffer({
        label: "buffer10126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1047 = device10.createBindGroup({
        label: "bind_group1047",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10126,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1047);
    render_pass_encoder1080.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndirect(buffer10123, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1081.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1061.drawIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndirect(buffer1066, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1001.drawIndirect(buffer10105, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndirect(buffer1047, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1084, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndirect(buffer1088, 0);
    device20.queue.submit([]);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer1084, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1020.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndirect(buffer10114, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1050.drawIndirect(buffer1049, 0);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer10118, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1043, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10111, 0);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer104, command_buffer105, command_buffer106, command_buffer107, ]);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer10109, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1079, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    const buffer10127 = device10.createBuffer({
        label: "buffer10127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10128 = device10.createBuffer({
        label: "buffer10128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1048 = device10.createBindGroup({
        label: "bind_group1048",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10128,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1048);
    render_pass_encoder1030.drawIndirect(buffer1076, 0);
    render_pass_encoder1020.drawIndirect(buffer10106, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1056, 0);
    const buffer10129 = device10.createBuffer({
        label: "buffer10129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10130 = device10.createBuffer({
        label: "buffer10130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1049 = device10.createBindGroup({
        label: "bind_group1049",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10130,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1049);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndirect(buffer1099, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1081.end();
    render_pass_encoder1031.drawIndirect(buffer1094, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndirect(buffer1047, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10130, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1080.drawIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndirect(buffer10120, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndirect(buffer10125, 0);
    render_pass_encoder1050.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1068, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10115, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1061.drawIndirect(buffer1095, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndirect(buffer1061, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer10118, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1031.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer10123, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndirect(buffer10114, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer10115, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndirect(buffer1080, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1081, 0);
    render_pass_encoder1031.drawIndirect(buffer1076, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1010.drawIndirect(buffer10113, 0);
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    const buffer10131 = device10.createBuffer({
        label: "buffer10131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10132 = device10.createBuffer({
        label: "buffer10132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1050 = device10.createBindGroup({
        label: "bind_group1050",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10132,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1050);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder1061.drawIndirect(buffer1050, 0);
    render_pass_encoder2000.drawIndexed(3);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1090.drawIndirect(buffer1025, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1030, 0);
    render_pass_encoder1001.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1062, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer10106, 0);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.end();
    device20.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.drawIndirect(buffer1095, 0);
    render_pass_encoder1040.drawIndirect(buffer1089, 0);
    render_pass_encoder1080.drawIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1092, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer10104, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer1068, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer1066, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10101, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1090.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1010.drawIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1090.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1066, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer10124, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer1091, 0);
    device20.queue.submit([]);
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer1093, 0);
    const buffer10133 = device10.createBuffer({
        label: "buffer10133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10134 = device10.createBuffer({
        label: "buffer10134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1051 = device10.createBindGroup({
        label: "bind_group1051",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10134,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1051);
    render_pass_encoder1000.drawIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10129, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.drawIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndirect(buffer10117, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10132, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1010.drawIndirect(buffer10124, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1081.drawIndirect(buffer10104, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder1061.drawIndirect(buffer1079, 0);
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1080.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1080.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10122, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1050.drawIndirect(buffer1086, 0);
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndirect(buffer1064, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10116, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndirect(buffer1070, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1030.drawIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndirect(buffer1095, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndirect(buffer1068, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1080.drawIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1034, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer1078, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1051.drawIndirect(buffer1074, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndirect(buffer10133, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1060.drawIndirect(buffer1094, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndirect(buffer10102, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1059, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10133, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1061.endOcclusionQuery()
    render_pass_encoder1010.drawIndirect(buffer10115, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1055, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndirect(buffer10107, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1081.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1044, 0);
    device30.queue.submit([]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1081.drawIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1068, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer10103, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndirect(buffer1079, 0);
    const buffer10135 = device10.createBuffer({
        label: "buffer10135",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10136 = device10.createBuffer({
        label: "buffer10136",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1052 = device10.createBindGroup({
        label: "bind_group1052",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10135,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10136,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1052);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    render_pass_encoder1061.drawIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer10133, 0);
    render_pass_encoder1051.drawIndirect(buffer1087, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndirect(buffer1062, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1070.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer10112, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1081.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1064, 0);
    const buffer10137 = device10.createBuffer({
        label: "buffer10137",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10138 = device10.createBuffer({
        label: "buffer10138",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1053 = device10.createBindGroup({
        label: "bind_group1053",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10137,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10138,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1053);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1062, 0);
    render_pass_encoder1060.drawIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    device00.queue.submit([]);
    render_pass_encoder1081.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1064, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndirect(buffer1047, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer10129, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1090.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer10115, 0);
    render_pass_encoder1050.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndirect(buffer10128, 0);
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer10126, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndirect(buffer10132, 0);
    render_pass_encoder1040.drawIndirect(buffer1062, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1051.drawIndirect(buffer10138, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndirect(buffer1094, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1051.drawIndirect(buffer1066, 0);
    render_pass_encoder1051.drawIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1084, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder1081.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1021.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndirect(buffer10116, 0);
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1090.drawIndirect(buffer10115, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10138, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10110, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1080.drawIndirect(buffer1011, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndirect(buffer10107, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1090.drawIndirect(buffer10110, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer10134, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1081.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1080.draw(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.popDebugGroup();
    const buffer10139 = device10.createBuffer({
        label: "buffer10139",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10140 = device10.createBuffer({
        label: "buffer10140",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1054 = device10.createBindGroup({
        label: "bind_group1054",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10139,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10140,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1054);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1080.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer10114, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1073, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1080.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndirect(buffer10103, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer1092, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer10114, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10130, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1077, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1081.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1075, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1076, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1060.drawIndirect(buffer1091, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1081.drawIndirect(buffer1034, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer10141 = device10.createBuffer({
        label: "buffer10141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10142 = device10.createBuffer({
        label: "buffer10142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1055 = device10.createBindGroup({
        label: "bind_group1055",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10142,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1055);
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1080.drawIndirect(buffer10103, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer1092, 0);
    render_pass_encoder1040.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10115, 0);
    const buffer10143 = device10.createBuffer({
        label: "buffer10143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10144 = device10.createBuffer({
        label: "buffer10144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1056 = device10.createBindGroup({
        label: "bind_group1056",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10144,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1056);
    render_pass_encoder1090.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1000.drawIndirect(buffer10142, 0);
    render_pass_encoder1080.drawIndirect(buffer1098, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndirect(buffer10111, 0);
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10106, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1067, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1060.drawIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndirect(buffer1056, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer1097, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndirect(buffer10106, 0);
    render_pass_encoder1090.drawIndirect(buffer100, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndirect(buffer1088, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10138, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1081.drawIndirect(buffer10112, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndirect(buffer10140, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndirect(buffer10115, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1090.drawIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndirect(buffer1040, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1025, "uint16");
    const buffer10145 = device10.createBuffer({
        label: "buffer10145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10146 = device10.createBuffer({
        label: "buffer10146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1057 = device10.createBindGroup({
        label: "bind_group1057",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10146,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1057);
    render_pass_encoder1080.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    const buffer10147 = device10.createBuffer({
        label: "buffer10147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10148 = device10.createBuffer({
        label: "buffer10148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1058 = device10.createBindGroup({
        label: "bind_group1058",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10148,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1058);
    render_pass_encoder1081.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder1021.drawIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1060.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10105, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1051.drawIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1020.setIndexBuffer(buffer10138, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1091, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10115, 0);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndirect(buffer10125, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1001.drawIndirect(buffer10145, 0);
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1090.drawIndirect(buffer1094, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1048, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10133, "uint16");
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1090.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1080.end();
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    const buffer10149 = device10.createBuffer({
        label: "buffer10149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10150 = device10.createBuffer({
        label: "buffer10150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1059 = device10.createBindGroup({
        label: "bind_group1059",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10150,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1059);
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndirect(buffer1057, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1078, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndirect(buffer10104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10151 = device10.createBuffer({
        label: "buffer10151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10151, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10151, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1077, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndirect(buffer1091, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10123, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndirect(buffer10103, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1010.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1090.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer10122, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10122, 0);
    device10.queue.submit([command_buffer101, command_buffer109, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1040.drawIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1055, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1061.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer10144, 0);
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer10133, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1090.drawIndirect(buffer10104, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1000.drawIndirect(buffer1068, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer10145, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndirect(buffer10134, 0);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndirect(buffer1050, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10145, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10151, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1011.drawIndirect(buffer1088, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer1096, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndirect(buffer10135, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1065, 0);
    device00.queue.submit([]);
    render_pass_encoder1061.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1070, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1081.drawIndirect(buffer10115, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer10109, 0);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1081.setIndexBuffer(buffer101, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer10136, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer1053, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1001.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.drawIndirect(buffer1023, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer10115, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer10141, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndirect(buffer10144, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10130, "uint16");
    render_pass_encoder1090.drawIndirect(buffer10115, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1051.end();
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1061.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndirect(buffer10135, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1030.drawIndirect(buffer10132, 0);
    render_pass_encoder1021.drawIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndirect(buffer1078, 0);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer10112, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10104, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1086, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    device30.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer10139, 0);
    device20.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1052, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1080.drawIndirect(buffer10110, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10152 = device10.createBuffer({
        label: "buffer10152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10152, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10152, 0);
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer10149, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1081.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10122, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10151, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1000.drawIndirect(buffer10135, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1081.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1071.drawIndirect(buffer1075, 0);
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndirect(buffer10150, 0);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1060, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer10121, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1078, 0);
    const buffer10153 = device10.createBuffer({
        label: "buffer10153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10154 = device10.createBuffer({
        label: "buffer10154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1060 = device10.createBindGroup({
        label: "bind_group1060",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10154,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1060);
    render_pass_encoder1020.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndirect(buffer10105, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1090.drawIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1087, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1050, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1060.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndirect(buffer10114, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1021.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndirect(buffer1077, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10103, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1071.drawIndirect(buffer10112, 0);
    render_pass_encoder1070.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10148, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndirect(buffer1066, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1053, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer10151, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10117, 0);
    render_pass_encoder1061.end();
    const buffer10155 = device10.createBuffer({
        label: "buffer10155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10156 = device10.createBuffer({
        label: "buffer10156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1061 = device10.createBindGroup({
        label: "bind_group1061",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10156,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1061);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1061.drawIndirect(buffer1063, 0);
    render_pass_encoder1060.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1040.drawIndirect(buffer10151, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10156, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder1020.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndirect(buffer102, 0);
    device50.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1052, 0);
    render_pass_encoder1010.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10114, 0);
    const buffer10157 = device10.createBuffer({
        label: "buffer10157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10158 = device10.createBuffer({
        label: "buffer10158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1062 = device10.createBindGroup({
        label: "bind_group1062",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10158,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1062);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer10124, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndirect(buffer10151, 0);
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer1057, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10116, 0);
    render_pass_encoder1080.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndirect(buffer10156, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10159 = device10.createBuffer({
        label: "buffer10159",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10159, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10159, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndirect(buffer10118, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10148, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndirect(buffer1085, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1000.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndirect(buffer1053, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1060, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndirect(buffer1021, 0);
    render_pass_encoder1071.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer10155, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1061.drawIndirect(buffer10151, 0);
    render_pass_encoder1011.drawIndirect(buffer10151, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1080.drawIndirect(buffer10102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1021.drawIndirect(buffer10159, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1061.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1001.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.drawIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1070.drawIndirect(buffer10111, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1080.drawIndirect(buffer10114, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1090.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer10145, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer10152, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10122, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1071.drawIndirect(buffer10144, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndirect(buffer10115, 0);
    render_pass_encoder1061.drawIndirect(buffer1061, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1051.drawIndirect(buffer1037, 0);
    render_pass_encoder1050.drawIndirect(buffer10114, 0);
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer10141, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1060.drawIndirect(buffer1058, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1051.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10160 = device10.createBuffer({
        label: "buffer10160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10160, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10160, 0);
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer1075, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1070.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1001.drawIndirect(buffer1097, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1084, 0);
    device20.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer10156, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1090.drawIndirect(buffer1088, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1080.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer10159, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1080.drawIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer1056, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1064, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1070.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    render_pass_encoder1050.drawIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer10156, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10154, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndexedIndirect(buffer10131, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1070.drawIndirect(buffer10116, 0);
    render_pass_encoder1060.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1081.drawIndirect(buffer10102, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer10159, 0);
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndirect(buffer10159, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1061, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1071.drawIndirect(buffer10135, 0);
    render_pass_encoder1090.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1050.drawIndirect(buffer10160, 0);
    render_pass_encoder1070.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndirect(buffer10147, 0);
    render_pass_encoder1051.drawIndirect(buffer1082, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10158, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1090.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1090.drawIndirect(buffer10152, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1084, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer10121, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10129, 0);
    render_pass_encoder1050.drawIndirect(buffer10105, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndirect(buffer1064, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndirect(buffer1097, 0);
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndirect(buffer10159, 0);
    render_pass_encoder1000.drawIndirect(buffer10152, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10139, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10111, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1071.drawIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndirect(buffer1053, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1090.drawIndirect(buffer10105, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1018, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1080.drawIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1080.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1092, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer1053, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder2000.end();
    render_pass_encoder1031.drawIndirect(buffer1078, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndirect(buffer1060, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.drawIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1072, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1071.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer10113, 0);
    render_pass_encoder1001.drawIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10104, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1001.drawIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10151, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1051.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1030.drawIndirect(buffer10106, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1000.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer1056, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10107, 0);
    render_pass_encoder1080.drawIndirect(buffer10111, 0);
    render_pass_encoder1020.drawIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1060.drawIndirect(buffer1058, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer1056, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1070.drawIndirect(buffer10119, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1070.drawIndirect(buffer1085, 0);
    device30.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndirect(buffer10144, 0);
    render_pass_encoder1090.drawIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndirect(buffer10110, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1081.drawIndirect(buffer10160, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1019, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1049, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer10134, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1090.drawIndirect(buffer1077, 0);
    render_pass_encoder1050.drawIndirect(buffer10104, 0);
    device30.queue.submit([]);
    render_pass_encoder1071.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1069, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10159, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1067, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndirect(buffer10101, 0);
    render_pass_encoder1020.drawIndirect(buffer10148, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1071.drawIndirect(buffer10159, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1055, "uint16");
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1051.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1011.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer10132, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1020.drawIndirect(buffer1081, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1010.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1070.setIndexBuffer(buffer10160, "uint16");
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1030.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10100, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1088, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10137, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1087, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1081.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndirect(buffer1089, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1001.drawIndirect(buffer1052, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1095, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer1010, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1090.drawIndirect(buffer103, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.drawIndirect(buffer10124, 0);
    render_pass_encoder1060.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndirect(buffer1077, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1051.drawIndirect(buffer10114, 0);
    render_pass_encoder1071.drawIndirect(buffer10151, 0);
    render_pass_encoder1000.drawIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndirect(buffer1093, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer1080, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1075, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10151, 0);
    render_pass_encoder1080.drawIndirect(buffer10111, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1070.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1040.drawIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndirect(buffer10113, 0);
    render_pass_encoder1050.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer101, command_buffer107, command_buffer109, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10116, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10124, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1031.drawIndirect(buffer1097, 0);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndirect(buffer1093, 0);
    render_pass_encoder1011.drawIndirect(buffer1065, 0);
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer10145, 0);
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1078, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer10143, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10160, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1081.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1080.drawIndirect(buffer10104, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder1001.drawIndirect(buffer1074, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10104, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.setIndexBuffer(buffer10159, "uint16");
    render_pass_encoder1021.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer1063, 0);
    render_pass_encoder1010.drawIndirect(buffer10115, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10151, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.end();
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1080.drawIndirect(buffer10117, 0);
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1081.drawIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer10155, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer10110, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer10100, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer1051, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10111, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1000.drawIndirect(buffer1095, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndirect(buffer1075, 0);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1081.setIndexBuffer(buffer106, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    const buffer10161 = device10.createBuffer({
        label: "buffer10161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10162 = device10.createBuffer({
        label: "buffer10162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1063 = device10.createBindGroup({
        label: "bind_group1063",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10162,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1063);
    render_pass_encoder1070.drawIndexedIndirect(buffer10137, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndirect(buffer10115, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10108, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10159, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer1041, 0);
    render_pass_encoder1090.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer10104, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndirect(buffer10113, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1031.drawIndirect(buffer10103, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1086, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10113, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer10139, "uint16");
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1083, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1090.drawIndirect(buffer10151, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer10159, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10146, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1020.drawIndirect(buffer10142, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10111, 0);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10156, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1078, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1051.drawIndirect(buffer10139, 0);
    render_pass_encoder1080.drawIndirect(buffer10152, 0);
    render_pass_encoder1071.draw(3);
    device10.queue.submit([command_buffer108, command_buffer109, ]);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10137, "uint16");
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1068, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1051.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndirect(buffer10109, 0);
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.drawIndirect(buffer1070, 0);
    render_pass_encoder1011.drawIndirect(buffer10114, 0);
    render_pass_encoder1020.drawIndirect(buffer10120, 0);
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1049, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer10159, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10118, "uint16");
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1040.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndirect(buffer1060, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1091, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.drawIndirect(buffer1049, 0);
    render_pass_encoder1031.drawIndirect(buffer1088, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1011.drawIndirect(buffer1090, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10159, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1051.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10120, 0);
    render_pass_encoder1021.drawIndirect(buffer10103, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1010.setIndexBuffer(buffer10115, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1080.drawIndirect(buffer10133, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1081.drawIndirect(buffer10160, 0);
    render_pass_encoder1011.drawIndirect(buffer10147, 0);
    render_pass_encoder1031.drawIndirect(buffer1094, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10140, 0);
    render_pass_encoder1020.drawIndirect(buffer10116, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10139, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndirect(buffer10115, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10119, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1061.drawIndirect(buffer1094, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer1050, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer1024, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10108, 0);
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1087, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2000.draw(3);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1081.drawIndirect(buffer10102, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10115, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1020.drawIndirect(buffer10151, 0);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1061.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer10110, 0);
    device30.queue.submit([]);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1079, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10163 = device10.createBuffer({
        label: "buffer10163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10163, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10163, 0);
    render_pass_encoder2010.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1061.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1070.drawIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndirect(buffer10160, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndirect(buffer10124, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1050.drawIndirect(buffer10132, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer1051, 0);
    device10.queue.submit([command_buffer101, command_buffer109, ]);
    render_pass_encoder1090.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10125, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10127, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer1087, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1090.drawIndirect(buffer10159, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndirect(buffer10110, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1061.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer10137, 0);
    render_pass_encoder1061.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer1079, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndirect(buffer1093, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer10160, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1051.drawIndirect(buffer1060, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10160, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1081.drawIndirect(buffer1087, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1090.drawIndirect(buffer1044, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1070.drawIndirect(buffer10113, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndirect(buffer10151, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1071.drawIndirect(buffer10114, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndirect(buffer1063, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndirect(buffer10104, 0);
    render_pass_encoder1011.drawIndirect(buffer1057, 0);
    render_pass_encoder1021.drawIndirect(buffer10160, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1040.drawIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndirect(buffer10148, 0);
    render_pass_encoder1021.drawIndirect(buffer10163, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1051.drawIndirect(buffer1099, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer10154, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndirect(buffer10139, 0);
    render_pass_encoder1090.drawIndirect(buffer1082, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1030.drawIndirect(buffer10103, 0);
    render_pass_encoder1021.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1001.drawIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1058, 0);
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.end();
    device20.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1051.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1031.drawIndirect(buffer10114, 0);
    render_pass_encoder1031.drawIndirect(buffer10122, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10134, "uint16");
    device30.queue.submit([]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1055, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer10103, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer10142, 0);
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1020.drawIndirect(buffer1094, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer10158, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1081.drawIndirect(buffer10160, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndirect(buffer1069, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndirect(buffer10151, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10159, 0);
    device00.queue.submit([]);
    render_pass_encoder1071.drawIndirect(buffer1072, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1021.drawIndirect(buffer10111, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder1001.drawIndirect(buffer10102, 0);
    render_pass_encoder1000.drawIndirect(buffer1094, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1058, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1080.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1021.drawIndirect(buffer10155, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1098, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1011.drawIndirect(buffer10163, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.end();
    render_pass_encoder1040.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer10124, 0);
    render_pass_encoder1010.drawIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer10107, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer10104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1080.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndirect(buffer1081, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer10106, 0);
    render_pass_encoder1001.drawIndirect(buffer10103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1030.drawIndirect(buffer1068, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10148, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1090.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1031.drawIndirect(buffer10152, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1080.end();
    const buffer10164 = device10.createBuffer({
        label: "buffer10164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10165 = device10.createBuffer({
        label: "buffer10165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1064 = device10.createBindGroup({
        label: "bind_group1064",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10165,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1064);
    render_pass_encoder1040.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.drawIndirect(buffer10124, 0);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10123, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1061.drawIndirect(buffer1085, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10106, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndirect(buffer1069, 0);
    render_pass_encoder1061.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer1093, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer10146, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1061.drawIndirect(buffer10137, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1020.drawIndirect(buffer1063, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer10155, 0);
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10138, 0);
    device50.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1090.end();
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1080.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    const buffer10166 = device10.createBuffer({
        label: "buffer10166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10167 = device10.createBuffer({
        label: "buffer10167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1065 = device10.createBindGroup({
        label: "bind_group1065",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10167,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1065);
    render_pass_encoder1061.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1080.drawIndirect(buffer1055, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10112, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1001.drawIndirect(buffer10163, 0);
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1051.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder1021.drawIndirect(buffer1072, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10102, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10107, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer10101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer10111, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndirect(buffer10138, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1081.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer10115, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10110, 0);
    const buffer10168 = device10.createBuffer({
        label: "buffer10168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10169 = device10.createBuffer({
        label: "buffer10169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1066 = device10.createBindGroup({
        label: "bind_group1066",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10169,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1066);
    render_pass_encoder1060.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1081.endOcclusionQuery()
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10170 = device10.createBuffer({
        label: "buffer10170",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10170, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10170, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1010.drawIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndirect(buffer1071, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer10146, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndirect(buffer10151, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1081.drawIndirect(buffer10151, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1061.drawIndirect(buffer1088, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndirect(buffer10102, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1030.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1060.drawIndirect(buffer1056, 0);
    render_pass_encoder1071.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder1040.drawIndirect(buffer10158, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10112, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1071.drawIndirect(buffer10159, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1061.end();
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer10160, 0);
    render_pass_encoder1051.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer10165, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer10114, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1021.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndirect(buffer10133, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1060.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1060.drawIndirect(buffer1028, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1081.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndirect(buffer10170, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer10105, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1051, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer1011, 0);
    device00.queue.submit([]);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1081.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndirect(buffer10159, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10151, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer10129, 0);
    render_pass_encoder1010.drawIndirect(buffer1058, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1077, 0);
    render_pass_encoder1011.drawIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1094, 0);
    device10.queue.submit([command_buffer104, command_buffer105, command_buffer109, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10142, 0);
    render_pass_encoder1021.drawIndirect(buffer10152, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndirect(buffer1037, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1072, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1091, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1056, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndirect(buffer1099, 0);
    render_pass_encoder1031.drawIndirect(buffer10159, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10169, "uint16");
    render_pass_encoder1081.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1066, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndirect(buffer1020, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10139, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1080.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1090.drawIndirect(buffer10120, 0);
    render_pass_encoder1080.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10150, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndirect(buffer10159, 0);
    render_pass_encoder1001.drawIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1059, 0);
    render_pass_encoder1080.drawIndirect(buffer1089, 0);
    render_pass_encoder1090.drawIndirect(buffer10103, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1071.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1061.drawIndirect(buffer10128, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1051, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10145, 0);
    render_pass_encoder1060.drawIndirect(buffer10151, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndirect(buffer10156, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndirect(buffer10114, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndirect(buffer10122, 0);
    render_pass_encoder1051.drawIndirect(buffer10104, 0);
    render_pass_encoder1060.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1094, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.drawIndirect(buffer10155, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1001.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10111, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1051.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10158, 0);
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1030.drawIndirect(buffer10122, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10171 = device10.createBuffer({
        label: "buffer10171",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10171, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10171, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndirect(buffer10171, 0);
    render_pass_encoder1081.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer10166, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10104, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer10165, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1080.drawIndirect(buffer10115, 0);
    render_pass_encoder1071.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndirect(buffer1079, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10170, 0);
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1001.drawIndirect(buffer1082, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1040.drawIndirect(buffer10135, 0);
    render_pass_encoder1050.drawIndirect(buffer10149, 0);
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer10167, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer10136, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndirect(buffer10111, 0);
    render_pass_encoder1081.draw(3);
    render_pass_encoder1020.drawIndirect(buffer10159, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1090.drawIndirect(buffer10104, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10110, 0);
    render_pass_encoder1010.drawIndirect(buffer10150, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1001.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10122, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1040.drawIndirect(buffer1047, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1080.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1061.drawIndirect(buffer1069, 0);
    render_pass_encoder1081.drawIndirect(buffer10140, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1080.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1099, 0);
    render_pass_encoder1081.drawIndirect(buffer10132, 0);
    render_pass_encoder1021.drawIndirect(buffer1080, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1060.drawIndirect(buffer1065, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1061.drawIndirect(buffer1096, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10109, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1061.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1060.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1000.drawIndirect(buffer1087, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1085, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1090, 0);
    render_pass_encoder1080.drawIndirect(buffer10163, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10151, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10167, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1060.drawIndirect(buffer10103, 0);
    render_pass_encoder1031.drawIndirect(buffer10110, 0);
    render_pass_encoder1001.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer10103, 0);
    render_pass_encoder1030.drawIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1070.drawIndirect(buffer10163, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10171, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1000.drawIndirect(buffer1066, 0);
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1047, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1070.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1050.drawIndirect(buffer10152, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1061.drawIndirect(buffer10151, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer10135, 0);
    render_pass_encoder1061.drawIndirect(buffer1053, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1080.drawIndirect(buffer1064, 0);
    render_pass_encoder1080.drawIndirect(buffer10102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1040.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1028, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10162, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10118, 0);
    render_pass_encoder1011.drawIndirect(buffer10156, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndirect(buffer10157, 0);
    render_pass_encoder1040.drawIndirect(buffer10162, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    device30.queue.submit([]);
    render_pass_encoder1031.drawIndirect(buffer10160, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1081.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1079, 0);
    const buffer10172 = device10.createBuffer({
        label: "buffer10172",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10173 = device10.createBuffer({
        label: "buffer10173",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1067 = device10.createBindGroup({
        label: "bind_group1067",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10172,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10173,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1067);
    render_pass_encoder1051.drawIndirect(buffer10157, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1071.drawIndirect(buffer10110, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1056, 0);
    render_pass_encoder1000.drawIndirect(buffer1083, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer10147, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10159, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndirect(buffer10104, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder1070.drawIndirect(buffer10159, 0);
    render_pass_encoder1080.drawIndirect(buffer10170, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10144, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer10163, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1050.drawIndirect(buffer10170, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10107, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1061.drawIndirect(buffer10160, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10174 = device10.createBuffer({
        label: "buffer10174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10174, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10174, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1077, 0);
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1000.drawIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer10138, 0);
    render_pass_encoder1000.drawIndirect(buffer10104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1060, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer10171, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1021.drawIndirect(buffer1094, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1001.drawIndirect(buffer10104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1021.drawIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10159, 0);
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10175 = device10.createBuffer({
        label: "buffer10175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10175, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10175, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1040.drawIndirect(buffer1074, 0);
    render_pass_encoder1040.drawIndirect(buffer1086, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1080.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1057, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer10134, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1080.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer10126, 0);
    render_pass_encoder1000.drawIndirect(buffer1096, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndirect(buffer10139, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder1061.drawIndirect(buffer1083, 0);
    render_pass_encoder1070.drawIndirect(buffer10111, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1071.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer10158, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder1001.drawIndirect(buffer1083, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndirect(buffer10156, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer1090, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.drawIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10139, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1077, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndirect(buffer10114, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1071.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10166, 0);
    render_pass_encoder1051.drawIndirect(buffer1071, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10165, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1080.drawIndirect(buffer10159, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1060.drawIndirect(buffer10165, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1085, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1088, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1090.drawIndirect(buffer10145, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1061.drawIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10129, 0);
    render_pass_encoder1071.drawIndirect(buffer10148, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndirect(buffer1064, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1070.drawIndirect(buffer10152, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1050.drawIndirect(buffer10160, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1010.drawIndirect(buffer1025, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1090.end();
    const buffer10176 = device10.createBuffer({
        label: "buffer10176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10177 = device10.createBuffer({
        label: "buffer10177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1068 = device10.createBindGroup({
        label: "bind_group1068",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10177,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1068);
    render_pass_encoder1070.drawIndirect(buffer10126, 0);
    render_pass_encoder1061.drawIndirect(buffer10145, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10156, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1031.drawIndirect(buffer1055, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1099, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1092, 0);
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10154, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1095, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1069, 0);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer105, ]);
    render_pass_encoder1011.drawIndirect(buffer1091, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10168, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10114, 0);
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1080.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder1070.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1020.drawIndirect(buffer10170, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1092, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1078, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1061.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1080.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10110, "uint16");
    render_pass_encoder1050.drawIndirect(buffer10174, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1083, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndirect(buffer10159, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1021.drawIndexedIndirect(buffer10158, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1083, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1073, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1079, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer10139, 0);
    render_pass_encoder1090.drawIndirect(buffer1085, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1051.drawIndirect(buffer10152, 0);
    render_pass_encoder1020.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndirect(buffer10152, 0);
    render_pass_encoder1040.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder1030.drawIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1010.drawIndirect(buffer10175, 0);
    render_pass_encoder1021.drawIndirect(buffer10140, 0);
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1054, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1080.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndirect(buffer10122, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10177, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1018, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1090.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1071.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10136, 0);
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1060.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndirect(buffer1078, 0);
    render_pass_encoder1080.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer10120, "uint16");
    render_pass_encoder1051.drawIndirect(buffer10160, 0);
    render_pass_encoder1001.drawIndirect(buffer10102, 0);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1050.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndirect(buffer1090, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1020.drawIndirect(buffer10127, 0);
    render_pass_encoder1031.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1090.drawIndirect(buffer10133, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndirect(buffer1071, 0);
    render_pass_encoder1000.drawIndirect(buffer10140, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10104, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10146, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1080.setIndexBuffer(buffer1084, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1050, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1054, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10163, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1020.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndirect(buffer1060, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10148, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1020.setIndexBuffer(buffer10111, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1069, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1090.drawIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    render_pass_encoder1050.drawIndirect(buffer1051, 0);
    render_pass_encoder1070.drawIndirect(buffer1018, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1073, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10178 = device10.createBuffer({
        label: "buffer10178",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10178, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10178, 0);
    render_pass_encoder1040.drawIndirect(buffer10117, 0);
    render_pass_encoder1020.drawIndirect(buffer10107, 0);
    render_pass_encoder1090.end();
    render_pass_encoder1081.drawIndirect(buffer1070, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1001.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1086, "uint16");
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1050.drawIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer10141, 0);
    render_pass_encoder1001.drawIndirect(buffer1053, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10156, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1081.drawIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer10103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1063, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer107, command_buffer109, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer10170, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer10170, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10174, 0);
    device10.queue.submit([command_buffer105, command_buffer108, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1011.drawIndirect(buffer10159, 0);
    render_pass_encoder1040.drawIndirect(buffer10104, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1050.drawIndirect(buffer1093, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10121, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1061.drawIndirect(buffer1095, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1090.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.drawIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndirect(buffer10174, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10179 = device10.createBuffer({
        label: "buffer10179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10179, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10179, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10170, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1070.drawIndirect(buffer10179, 0);
    render_pass_encoder1081.drawIndirect(buffer10159, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1070.drawIndirect(buffer107, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1071.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10103, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1078, "uint16");
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndirect(buffer1078, 0);
    render_pass_encoder1070.drawIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndirect(buffer10157, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1000.drawIndirect(buffer1055, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1080.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1020.drawIndirect(buffer10151, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1080.end();
    render_pass_encoder1060.drawIndirect(buffer10159, 0);
    render_pass_encoder1090.drawIndirect(buffer10159, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1001.drawIndirect(buffer10174, 0);
    render_pass_encoder1040.drawIndirect(buffer1078, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1090.setIndexBuffer(buffer1082, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10127, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10164, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1061.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1070.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10114, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10175, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1054, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1020.drawIndirect(buffer1077, 0);
    render_pass_encoder1000.drawIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10131, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndirect(buffer10104, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1054, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer10173, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1069, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1092, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndirect(buffer10105, 0);
    render_pass_encoder1011.drawIndirect(buffer10141, 0);
    render_pass_encoder1011.drawIndirect(buffer10115, 0);
    render_pass_encoder1081.drawIndirect(buffer10110, 0);
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    render_pass_encoder1070.drawIndirect(buffer1094, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    render_pass_encoder1050.drawIndirect(buffer10178, 0);
    device10.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1063, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10129, "uint16");
    render_pass_encoder1090.drawIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1090.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1080.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1030.drawIndirect(buffer10126, 0);
    render_pass_encoder1011.drawIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndirect(buffer10151, 0);
    device10.queue.submit([command_buffer103, command_buffer109, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10109, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1096, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1001.drawIndirect(buffer10144, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1031.drawIndirect(buffer10103, 0);
    render_pass_encoder1051.drawIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndirect(buffer10112, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer10170, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1065, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.setIndexBuffer(buffer10137, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10145, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer10113, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10156, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndirect(buffer1095, 0);
    render_pass_encoder1080.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndirect(buffer1082, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10176, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10168, 0);
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1081.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1088, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1081.drawIndirect(buffer10179, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10171, 0);
    const buffer10180 = device10.createBuffer({
        label: "buffer10180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10181 = device10.createBuffer({
        label: "buffer10181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1069 = device10.createBindGroup({
        label: "bind_group1069",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10181,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1069);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10154, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10157, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10180, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndirect(buffer10130, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1080.drawIndirect(buffer1071, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10163, 0);
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1080, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndirect(buffer10112, 0);
    render_pass_encoder1031.drawIndirect(buffer1057, 0);
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1021.drawIndirect(buffer10159, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer10115, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1069, "uint16");
    render_pass_encoder1090.drawIndirect(buffer10177, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndirect(buffer10178, 0);
    render_pass_encoder1011.drawIndirect(buffer1051, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer10105, 0);
    render_pass_encoder1001.drawIndirect(buffer10169, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10120, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1069, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer1079, 0);
    render_pass_encoder1081.drawIndirect(buffer1094, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer10178, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1099, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1070.drawIndirect(buffer10178, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1061, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10166, 0);
    render_pass_encoder1050.drawIndirect(buffer1086, 0);
    render_pass_encoder1081.drawIndirect(buffer1052, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1071.drawIndirect(buffer10122, 0);
    render_pass_encoder1061.drawIndirect(buffer10152, 0);
    render_pass_encoder1061.drawIndirect(buffer10151, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1090.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer10102, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1081.drawIndirect(buffer10179, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1071.drawIndirect(buffer10170, 0);
    render_pass_encoder1040.drawIndirect(buffer10102, 0);
    render_pass_encoder1080.drawIndirect(buffer10170, 0);
    render_pass_encoder1060.drawIndirect(buffer1079, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer107, 0);
    render_pass_encoder1071.drawIndirect(buffer10104, 0);
    render_pass_encoder1031.drawIndirect(buffer10148, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1031.drawIndirect(buffer10179, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1064, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10159, 0);
    render_pass_encoder1081.drawIndirect(buffer10155, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1086, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndirect(buffer10167, 0);
    render_pass_encoder1060.drawIndirect(buffer10171, 0);
    render_pass_encoder1050.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer10136, 0);
    render_pass_encoder1061.drawIndirect(buffer1082, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1090.drawIndirect(buffer10122, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10158, "uint16");
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndirect(buffer1082, 0);
    render_pass_encoder1010.drawIndirect(buffer10115, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1046, 0);
    render_pass_encoder1070.drawIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1040.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1080.drawIndirect(buffer10110, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndirect(buffer10179, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1094, 0);
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder1080.drawIndirect(buffer1081, 0);
    render_pass_encoder1051.drawIndirect(buffer10152, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.end();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer105, command_buffer107, ]);
    render_pass_encoder1070.end();
    render_pass_encoder1090.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1097, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1052, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10143, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1021.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    render_pass_encoder1081.drawIndirect(buffer10163, 0);
    render_pass_encoder1051.drawIndirect(buffer10122, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10159, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10179, 0);
    device10.queue.submit([command_buffer105, command_buffer106, command_buffer108, ]);
    render_pass_encoder1000.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndirect(buffer1078, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1081.drawIndirect(buffer10177, 0);
    render_pass_encoder1060.drawIndirect(buffer10160, 0);
    render_pass_encoder1021.drawIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10128, 0);
    render_pass_encoder1081.drawIndirect(buffer1091, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10124, 0);
    render_pass_encoder1050.drawIndirect(buffer10102, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1001.drawIndirect(buffer10153, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10109, "uint16");
    device10.queue.submit([command_buffer100, command_buffer109, ]);
    const buffer10182 = device10.createBuffer({
        label: "buffer10182",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10183 = device10.createBuffer({
        label: "buffer10183",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1070 = device10.createBindGroup({
        label: "bind_group1070",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10182,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10183,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1070);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndirect(buffer10107, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1031.drawIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndirect(buffer10115, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer10103, 0);
    render_pass_encoder1061.drawIndirect(buffer10174, 0);
    render_pass_encoder1061.drawIndirect(buffer10111, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndirect(buffer1069, 0);
    render_pass_encoder1040.drawIndirect(buffer10160, 0);
    render_pass_encoder1061.drawIndirect(buffer10107, 0);
    render_pass_encoder1081.drawIndirect(buffer1076, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1021.drawIndirect(buffer10161, 0);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1080.drawIndirect(buffer10110, 0);
    render_pass_encoder1051.drawIndirect(buffer10159, 0);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1060.setIndexBuffer(buffer10132, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10141, 0);
    render_pass_encoder1000.drawIndirect(buffer10110, 0);
    render_pass_encoder1090.drawIndirect(buffer1028, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer10157, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1090.drawIndirect(buffer1091, 0);
    render_pass_encoder1030.drawIndirect(buffer1060, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1061.setIndexBuffer(buffer10126, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1091, 0);
    render_pass_encoder1081.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndirect(buffer1053, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer10109, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1087, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1081.drawIndirect(buffer1091, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1081, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1071, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10174, "uint16");
    render_pass_encoder1021.drawIndirect(buffer10107, 0);
    render_pass_encoder1090.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1021.drawIndirect(buffer10163, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10121, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer10181, 0);
    render_pass_encoder1080.setIndexBuffer(buffer10111, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer1055, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer10133, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1086, 0);
    render_pass_encoder1010.drawIndirect(buffer1083, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder1010.drawIndirect(buffer10111, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10138, 0);
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1038, 0);
    const buffer10184 = device10.createBuffer({
        label: "buffer10184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10185 = device10.createBuffer({
        label: "buffer10185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1071 = device10.createBindGroup({
        label: "bind_group1071",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10185,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1071);
    render_pass_encoder1081.drawIndexedIndirect(buffer1074, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10171, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1096, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndirect(buffer10159, 0);
    render_pass_encoder1070.drawIndirect(buffer10174, 0);
    render_pass_encoder1010.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer10164, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1081, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndirect(buffer1069, 0);
    render_pass_encoder1060.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer10114, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10153, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer10147, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1030.drawIndirect(buffer1082, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer10151, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10116, 0);
    render_pass_encoder1020.drawIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndirect(buffer10152, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndirect(buffer108, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1050.drawIndirect(buffer10160, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1053, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1080.drawIndexedIndirect(buffer10161, 0);
    render_pass_encoder1051.drawIndirect(buffer1051, 0);
    render_pass_encoder1050.drawIndirect(buffer1037, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1061.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.drawIndirect(buffer10104, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1080.drawIndirect(buffer1090, 0);
    render_pass_encoder1081.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1031.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1090, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1081.drawIndirect(buffer10178, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10132, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1060.drawIndirect(buffer1069, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1090.drawIndirect(buffer1010, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1090.drawIndirect(buffer10114, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1061.drawIndirect(buffer1055, 0);
    render_pass_encoder1080.drawIndirect(buffer1076, 0);
    render_pass_encoder1050.drawIndirect(buffer1077, 0);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1090.drawIndirect(buffer10179, 0);
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10140, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10102, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.drawIndirect(buffer10170, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10184, 0);
    render_pass_encoder1081.drawIndirect(buffer1043, 0);
    device10.queue.submit([]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1061.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1031.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1090.drawIndirect(buffer10122, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1058, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndirect(buffer10160, 0);
    render_pass_encoder1090.drawIndirect(buffer10103, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1097, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10157, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1061.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10171, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1071.draw(3);
    render_pass_encoder1070.drawIndirect(buffer10163, 0);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer108, ]);
    render_pass_encoder1001.drawIndirect(buffer10114, 0);
    render_pass_encoder1090.drawIndirect(buffer10174, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    device10.queue.submit([command_buffer104, command_buffer108, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10101, 0);
    render_pass_encoder1071.drawIndirect(buffer1080, 0);
    render_pass_encoder1090.drawIndirect(buffer10178, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1011.drawIndirect(buffer10113, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1061.drawIndirect(buffer1094, 0);
    render_pass_encoder1001.drawIndirect(buffer10159, 0);
    render_pass_encoder1020.setIndexBuffer(buffer10176, "uint16");
    render_pass_encoder1081.drawIndirect(buffer10174, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1090.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1010.drawIndirect(buffer1093, 0);
    render_pass_encoder1001.drawIndirect(buffer1051, 0);
    render_pass_encoder1081.drawIndirect(buffer10163, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1070, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1098, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer10128, "uint16");
    render_pass_encoder1081.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1069, 0);
    render_pass_encoder1080.drawIndirect(buffer1079, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer10106, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10170, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1090, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1071.drawIndirect(buffer10111, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndirect(buffer1091, 0);
    render_pass_encoder1060.drawIndirect(buffer10160, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10117, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10143, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10113, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10144, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10119, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1065, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer10107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer10177, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndirect(buffer10179, 0);
    render_pass_encoder1031.drawIndirect(buffer1049, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndirect(buffer10167, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1081.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1010.drawIndirect(buffer10102, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1031.drawIndirect(buffer1067, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10152, 0);
    const buffer10186 = device10.createBuffer({
        label: "buffer10186",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10187 = device10.createBuffer({
        label: "buffer10187",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1072 = device10.createBindGroup({
        label: "bind_group1072",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10186,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10187,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1072);
    render_pass_encoder1081.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1065, 0);
    device10.queue.submit([command_buffer102, command_buffer109, ]);
    render_pass_encoder1000.drawIndirect(buffer10160, 0);
    render_pass_encoder1031.drawIndirect(buffer1096, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1090.drawIndirect(buffer10156, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1070.drawIndirect(buffer10108, 0);
    render_pass_encoder1071.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer10130, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1090.drawIndirect(buffer10179, 0);
    render_pass_encoder1061.drawIndirect(buffer10170, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1075, "uint16");
    render_pass_encoder1060.drawIndirect(buffer10178, 0);
    render_pass_encoder1000.drawIndirect(buffer10172, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1061.drawIndirect(buffer1094, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1081.drawIndirect(buffer1012, 0);
    render_pass_encoder1051.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.drawIndirect(buffer105, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1089, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1078, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1090, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.drawIndirect(buffer10180, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1084, 0);
    render_pass_encoder1061.drawIndirect(buffer10170, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1074, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10110, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer10134, 0);
    render_pass_encoder1071.drawIndirect(buffer10175, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10167, 0);
    render_pass_encoder1031.drawIndirect(buffer1091, 0);
    render_pass_encoder1061.drawIndirect(buffer10151, 0);
    render_pass_encoder1070.drawIndirect(buffer10178, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1099, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1090.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10146, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10179, 0);
    render_pass_encoder1050.drawIndirect(buffer10110, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1061.drawIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10110, 0);
    render_pass_encoder1081.drawIndirect(buffer10122, 0);
    render_pass_encoder1090.drawIndirect(buffer10107, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1060.drawIndirect(buffer1096, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.drawIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1010.drawIndirect(buffer10179, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1081.drawIndexedIndirect(buffer1071, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1094, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1051.drawIndirect(buffer10146, 0);
    render_pass_encoder2010.end();
    render_pass_encoder1040.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1070.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1055, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1081.drawIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer100, command_buffer109, ]);
    render_pass_encoder1070.drawIndirect(buffer10107, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10125, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer10188 = device10.createBuffer({
        label: "buffer10188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10188, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer10188, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer10111, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10134, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1089, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer10167, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1021.drawIndirect(buffer1069, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.end();
    render_pass_encoder1080.setIndexBuffer(buffer1080, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1054, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10112, 0);
    render_pass_encoder1000.setIndexBuffer(buffer10150, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1081.setIndexBuffer(buffer10184, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1000.drawIndirect(buffer10103, 0);
    render_pass_encoder1050.drawIndirect(buffer10163, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1053, 0);
    render_pass_encoder1001.drawIndirect(buffer10104, 0);
    render_pass_encoder1040.drawIndirect(buffer10172, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1011.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1020.drawIndirect(buffer1054, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer10175, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1090, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1058, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1076, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1040.drawIndirect(buffer10137, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1081.drawIndirect(buffer1083, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.drawIndirect(buffer10115, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer10163, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer10174, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1052, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1030.drawIndirect(buffer10115, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10148, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1021.drawIndirect(buffer1082, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1094, "uint16");
    render_pass_encoder1061.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1094, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1069, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1050.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1021.drawIndirect(buffer10178, 0);
    render_pass_encoder1080.drawIndirect(buffer10160, 0);
    render_pass_encoder1001.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1061.setIndexBuffer(buffer10155, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1055, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1081.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1078, 0);
    render_pass_encoder1051.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer10138, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer10159, 0);
    render_pass_encoder1080.drawIndirect(buffer10115, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1040.drawIndirect(buffer10115, 0);
    render_pass_encoder1080.drawIndirect(buffer1048, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1081.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer10171, 0);
    render_pass_encoder1021.drawIndirect(buffer10188, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10118, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1071, "uint16");
    render_pass_encoder1081.drawIndirect(buffer10178, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1079, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10155, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1090.setIndexBuffer(buffer1075, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1071.drawIndirect(buffer1043, 0);
    render_pass_encoder1090.drawIndirect(buffer1079, 0);
    render_pass_encoder1000.drawIndirect(buffer10123, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1011.setIndexBuffer(buffer10120, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1060.drawIndirect(buffer1083, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1040.drawIndirect(buffer1090, 0);
    render_pass_encoder1061.setIndexBuffer(buffer1093, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1090.drawIndirect(buffer10171, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1051, 0);
    render_pass_encoder1030.drawIndirect(buffer10106, 0);
    render_pass_encoder1050.drawIndirect(buffer10141, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1069, 0);
    render_pass_encoder1070.drawIndirect(buffer1058, 0);
    render_pass_encoder1040.setIndexBuffer(buffer10106, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1046, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1001.drawIndirect(buffer10155, 0);
    render_pass_encoder1020.drawIndirect(buffer1091, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1093, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer1099, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer10175, 0);
    render_pass_encoder1031.setIndexBuffer(buffer10168, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1099, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer10104, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1080.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndirect(buffer1051, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1051.drawIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndirect(buffer1079, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10160, 0);
    render_pass_encoder1080.drawIndirect(buffer10179, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1031.drawIndirect(buffer10104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer10136, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1001.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1080.setIndexBuffer(buffer10125, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1060, 0);
    render_pass_encoder1081.drawIndirect(buffer10111, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10157, "uint16");
    render_pass_encoder1090.drawIndirect(buffer10173, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer10101, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10114, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10122, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1083, 0);
    render_pass_encoder1080.drawIndexedIndirect(buffer1073, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1067, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1090, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1061.drawIndexedIndirect(buffer1068, 0);
    render_pass_encoder1090.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10152, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer10184, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1087, 0);
    device10.queue.submit([command_buffer109, ]);
    render_pass_encoder1080.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.drawIndirect(buffer10163, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1099, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10153, 0);
    render_pass_encoder1020.drawIndirect(buffer10161, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1055, 0);
    render_pass_encoder1021.drawIndirect(buffer10116, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10183, 0);
    render_pass_encoder1090.drawIndirect(buffer10160, 0);
    render_pass_encoder1061.drawIndirect(buffer10152, 0);
    render_pass_encoder1031.drawIndirect(buffer1090, 0);
    render_pass_encoder1050.drawIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndirect(buffer1059, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10174, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1031.drawIndirect(buffer10160, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10178, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer10142, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer10175, 0);
    device10.queue.submit([command_buffer108, ]);
    render_pass_encoder1060.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1099, 0);
    render_pass_encoder1010.setIndexBuffer(buffer10181, "uint16");
    render_pass_encoder1061.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1064, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer10161, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1090.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10171, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer10154, 0);
    render_pass_encoder1011.drawIndirect(buffer10179, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10151, 0);
    render_pass_encoder1081.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer1091, 0);
    render_pass_encoder1080.setIndexBuffer(buffer1066, "uint16");
    render_pass_encoder1090.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1051.drawIndirect(buffer10129, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10156, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1082, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1011.drawIndirect(buffer1047, 0);
    render_pass_encoder1061.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer10184, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1040.drawIndirect(buffer1051, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1076, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1090, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1088, 0);
    render_pass_encoder1080.drawIndirect(buffer10104, 0);
    render_pass_encoder1090.setIndexBuffer(buffer10144, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1054, 0);
    render_pass_encoder1061.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1069, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1061.drawIndexedIndirect(buffer10159, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10149, "uint16");
    render_pass_encoder1090.setIndexBuffer(buffer1054, "uint16");
    render_pass_encoder1061.setIndexBuffer(buffer1071, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.setIndexBuffer(buffer10140, "uint16");
    render_pass_encoder1031.drawIndirect(buffer10103, 0);
    render_pass_encoder1060.setIndexBuffer(buffer10184, "uint16");
    render_pass_encoder1080.drawIndirect(buffer10175, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1000.drawIndirect(buffer10188, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10131, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer10163, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1090.drawIndexedIndirect(buffer10179, 0);
    render_pass_encoder1061.drawIndirect(buffer1052, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder1080.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer10152, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10107, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer10114, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1056, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer10149, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndirect(buffer10188, 0);
    render_pass_encoder1090.drawIndirect(buffer1082, 0);
    render_pass_encoder1021.drawIndirect(buffer10175, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer10115, 0);
    render_pass_encoder1090.drawIndexedIndirect(buffer10186, 0);
    render_pass_encoder1051.drawIndirect(buffer10174, 0);
    render_pass_encoder1080.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1079, 0);
    render_pass_encoder1071.setIndexBuffer(buffer10114, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer10187, "uint16");
    render_pass_encoder1000.drawIndirect(buffer10102, 0);
    render_pass_encoder1020.drawIndirect(buffer10110, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1070, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
}