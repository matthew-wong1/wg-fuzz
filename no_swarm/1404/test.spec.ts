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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-1.0, 0.0, 0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.25, 0.25, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, -0.75, 0.0, 1.0, -1.0, 0.25, 0.75, 1.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.5, 0.25, 0.75, -0.75, 0.0, 0.75, -0.5, 0.75, -1.0, 1.0, -1.0, 0.25, -0.5, 0.5, -1.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 0.75, -1.0, 0.0, -0.75, 0.25, 0.75, 0.0, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 0.5, 0.5, -0.5, 0.75, -0.5, 0.5, -1.0, -0.25, -0.75, 0.5, -1.0, -0.25, 0.75, -0.25, 0.5, 0.5, 0.5, -0.25, -0.5, 0.75, 0.25, 0.5, -0.5, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    compute_pass_encoder1000.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.destroy();
    
    command_encoder101.insertDebugMarker("mymarker");
    
    texture101.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array1 = new Float32Array([0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, -0.75, 0.0, 0.75, 1.0, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, 0.25, -0.75, -0.5, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, -0.5, -0.25, -1.0, -0.25, 0.25, 0.0, 1.0, 0.75, -0.75, -1.0, 0.75, 0.5, 0.0, -0.25, 0.75, 0.0, 1.0, -0.25, 0.5, -0.5, 0.25, 1.0, 0.75, -1.0, -0.75, -0.75, 0.25, -1.0, 0.5, -0.25, -0.75, 0.5, 1.0, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, 1.0, 1.0, 0.25, 0.25, -1.0, 0.75, 0.0, 0.25, -0.75, 1.0, -0.25, -0.25, 0.5, -0.75, 0.75, -0.75, 0.5, -0.25, -1.0, 1.0, -0.75, -0.5, 0.5, -0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("validation");
    query101.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    buffer100.destroy()
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
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
        occlusionQuerySet: query100
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_bundle_encoder100.popDebugGroup();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.submit([]);
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, 0.25, -0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, -0.5, 1.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.0, 1.0, -0.75, -0.25, -0.25, 0.5, 0.0, -0.5, 0.25, 0.25, -0.25, 1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, 0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.25, 1.0, 0.25, -0.75, -1.0, -0.5, -0.75, -0.5, -0.5, -0.75, 0.0, 0.25, -0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 0.0, -1.0, 0.75, 0.5, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, 0.5, -0.25, -0.25, -0.5, -0.5, 1.0, 0.0, 0.5, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 0.25, -1.0, 0.0, ]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1010.setStencilReference(1);
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    
    
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query100.destroy()
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
        occlusionQuerySet: query100
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    query100.destroy()
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    texture102.destroy();
    query100.destroy()
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1011.setStencilReference(1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture105 = device10.createTexture({
        label: "texture105",
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device00.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder1010.setStencilReference(1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1021.beginOcclusionQuery(0)
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    query100.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer103.destroy()
    render_pass_encoder1010.popDebugGroup();
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_pass_encoder1021.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1011.insertDebugMarker("marker");
    
    render_pass_encoder1010.executeBundles([])
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1000.setPipeline(render_pipeline100);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.setPipeline(render_pipeline101);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    texture106.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.executeBundles([])
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    texture103.destroy();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.executeBundles([])
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    texture104.destroy();
    
    
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_pass_encoder1010.executeBundles([])
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const array3 = new Float32Array([0.75, -0.5, 0.0, 0.75, -1.0, 0.5, -1.0, 0.5, -0.75, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.5, -0.75, 1.0, 0.5, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.25, 0.0, 0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.0, 1.0, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, -0.75, -1.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.25, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, -1.0, 1.0, -0.25, 0.25, -0.25, 1.0, 0.0, -0.5, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 1.0, 0.25, ]);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1021.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const array4 = new Float32Array([0.5, 0.25, -0.75, -0.5, 1.0, -0.75, -1.0, -0.5, -0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.75, 0.25, -0.75, 1.0, 0.75, -0.5, -0.75, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.75, 0.5, -0.5, 1.0, 0.75, 0.75, 0.25, 0.5, 0.25, -0.25, 0.0, 0.25, -0.75, -1.0, 0.25, 1.0, -1.0, -0.75, -1.0, -0.5, 0.5, -0.75, 0.75, -1.0, -1.0, 0.0, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 1.0, -0.75, -0.5, 1.0, 0.25, 0.5, -0.75, 0.25, 0.5, 0.25, -0.5, 0.25, 1.0, 0.5, -0.75, 0.5, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, 1.0, 0.75, -0.5, -1.0, -0.5, 0.75, -1.0, 0.5, 0.5, ]);
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    const array5 = new Float32Array([0.25, 1.0, -1.0, -0.75, 0.75, 0.75, 0.5, 1.0, 0.75, 0.0, 0.25, 0.0, 0.5, 0.5, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -0.5, 0.0, 0.5, 1.0, -0.5, 0.25, 0.5, 0.25, 0.5, -0.75, 0.75, -0.75, -0.75, -0.75, -1.0, 1.0, -0.75, -0.75, 0.5, 0.25, 0.0, -0.5, -1.0, 0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, 1.0, -1.0, 1.0, 0.75, 0.25, -0.25, -0.5, 0.5, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 0.75, 0.25, 0.0, -0.25, -0.25, -1.0, -0.5, 0.25, -0.75, 0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.25, 0.5, -1.0, -1.0, 0.5, -0.25, 0.25, -0.25, ]);
    render_pass_encoder1031.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setVertexBuffer(0, buffer100);
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1001.popDebugGroup();
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32uint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    render_pass_encoder1021.setStencilReference(1);
    
    buffer101.destroy()
    render_pass_encoder1002.setStencilReference(1);
    buffer104.destroy()
    render_pass_encoder1002.insertDebugMarker("marker");
    render_pass_encoder1021.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder1002.executeBundles([render_bundle_encoder100, ])
    render_pass_encoder1032.pushDebugGroup("group_marker");
    buffer106.destroy()
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group102);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1031.setPipeline(render_pipeline101);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1032.setPipeline(render_pipeline100);
    command_encoder103.copyTextureToTexture(
        {
            texture: texture103
        },
        {
            texture: texture107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1001.pushDebugGroup("group_marker");
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group103);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder1011.insertDebugMarker("marker");
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1030.popDebugGroup();
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    command_encoder102.copyTextureToTexture(
        {
            texture: texture105
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    render_pass_encoder1031.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_bundle_encoder100.setBindGroup(0, bind_group105);
    
    render_pass_encoder1032.popDebugGroup();
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1032.pushDebugGroup("group_marker");
    const render_pass_encoder1033 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1033.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.clearBuffer(buffer106);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1033.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1033.setPipeline(render_pipeline101);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    buffer108.destroy()
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer1013,
        0
    )
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1033.beginOcclusionQuery(0)
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    buffer1016.destroy()
    const render_pass_encoder1034 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1034",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1004,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1001.popDebugGroup();
    
    render_pass_encoder1034.insertDebugMarker("marker");
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query102
    });
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1032.beginOcclusionQuery(1)
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    buffer106.destroy()
    render_pass_encoder1034.setPipeline(render_pipeline100);
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1034.pushDebugGroup("group_marker");
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    render_pass_encoder1031.setVertexBuffer(0, buffer1013);
    buffer1012.destroy()
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device10.queue.writeBuffer(buffer109, 0, array1, 0, array1.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture108 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1021.setVertexBuffer(0, buffer1014);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1034.setStencilReference(1);
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    
    
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1011.beginOcclusionQuery(0)
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1040.setPipeline(render_pipeline101);
    buffer1012.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.popDebugGroup();
    
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    render_pass_encoder1034.setStencilReference(1);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    render_pass_encoder1000.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1031.draw(3);
    buffer105.destroy()
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1030.executeBundles([])
    const render_pass_encoder1035 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1035",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1005,
            },
        ],
        occlusionQuerySet: query104
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    const texture_view1053 = texture105.createView({ label: "texture_view1053" });
    render_pass_encoder1035.beginOcclusionQuery(0)
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1034.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
        occlusionQuerySet: query104
    });
    render_pass_encoder1035.endOcclusionQuery()
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1051.executeBundles([])
    const render_pass_encoder1003 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1003",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    buffer1010.destroy()
    render_pass_encoder1001.setStencilReference(1);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
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
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group107);
    render_pass_encoder1050.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query101.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer1019, 0, array0, 0, array0.length);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer109,
        0
    )
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    
    
    
    render_pass_encoder1051.setStencilReference(1);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1032.endOcclusionQuery()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1035.beginOcclusionQuery(0)
    texture104.destroy();
    render_pass_encoder1034.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1033.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1042 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1042",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1051.insertDebugMarker("marker");
    buffer1017.destroy()
    render_pass_encoder1042.setPipeline(render_pipeline100);
    render_pass_encoder1003.setPipeline(render_pipeline101);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
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
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1033.setBindGroup(0, bind_group108);
    command_encoder101.popDebugGroup()
    render_pass_encoder1050.setPipeline(render_pipeline102);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1003.setBindGroup(0, bind_group109);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.setPipeline(render_pipeline102);
    device10.queue.submit([]);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
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
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1010);
    render_pass_encoder1010.setVertexBuffer(0, buffer1023);
    render_pass_encoder1041.setVertexBuffer(0, buffer109);
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
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
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    render_pass_encoder1042.setBindGroup(0, bind_group1011);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.setVertexBuffer(0, buffer101);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1041.drawIndirect(buffer1019, 0);
    render_pass_encoder1035.setPipeline(render_pipeline102);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
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
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1012);
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
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1032.setBindGroup(0, bind_group1013);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1032.setVertexBuffer(0, buffer106);
    render_pass_encoder1003.setVertexBuffer(0, buffer1021);
    render_pass_encoder1003.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.setPipeline(render_pipeline101);
    render_pass_encoder1003.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1032.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.setVertexBuffer(0, buffer1016);
    render_pass_encoder1033.setVertexBuffer(0, buffer1023);
    render_pass_encoder1001.setIndexBuffer(buffer1019, "uint16");
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
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group1014);
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
    
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1015);
    render_pass_encoder1033.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
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
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1035.setBindGroup(0, bind_group1016);
    render_pass_encoder1033.drawIndirect(buffer1035, 0);
    render_pass_encoder1042.endOcclusionQuery()
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
    
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1034.setBindGroup(0, bind_group1017);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1042.setVertexBuffer(0, buffer1026);
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1034.setVertexBuffer(0, buffer1027);
    device10.queue.submit([]);
    render_pass_encoder1042.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1030.setVertexBuffer(0, buffer1029);
    render_pass_encoder1042.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1042.drawIndirect(buffer1010, 0);
    render_pass_encoder1032.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1034.draw(3);
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder1042.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1051.setVertexBuffer(0, buffer102);
    render_pass_encoder1033.end();
    render_pass_encoder1033.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1042.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1034.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1032.draw(3);
    render_pass_encoder1035.setVertexBuffer(0, buffer101);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1003.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1035.drawIndirect(buffer108, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1033.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1035.end();
    render_pass_encoder1032.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1035.popDebugGroup();
    render_pass_encoder1033.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
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
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1002.setBindGroup(0, bind_group1018);
    render_pass_encoder1042.endOcclusionQuery()
    render_pass_encoder1035.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1033.drawIndexedIndirect(buffer1037, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1042.drawIndirect(buffer1034, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1010.end();
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
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1019);
    render_pass_encoder1050.setVertexBuffer(0, buffer1023);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1051.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1042.drawIndirect(buffer1028, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1000.popDebugGroup();
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
    
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1020);
    render_pass_encoder1020.setVertexBuffer(0, buffer104);
    render_pass_encoder1042.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1042.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1033.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1034.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1002.setVertexBuffer(0, buffer101);
    render_pass_encoder1035.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1019, 0);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1042.drawIndirect(buffer1046, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1033.endOcclusionQuery()
    render_pass_encoder1002.drawIndirect(buffer104, 0);
    render_pass_encoder1032.end();
    render_pass_encoder1042.end();
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
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
    
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1021);
    render_pass_encoder1042.end();
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1042.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.setVertexBuffer(0, buffer1016);
    render_pass_encoder1034.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1033.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1032.drawIndirect(buffer1040, 0);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1028, "uint16");
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1040, 0);
    render_pass_encoder1042.drawIndirect(buffer1034, 0);
    render_pass_encoder1033.drawIndirect(buffer1027, 0);
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1034.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1034.end();
    render_pass_encoder1030.drawIndirect(buffer1029, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1034.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1000.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1035.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1003.drawIndirect(buffer1032, 0);
    render_pass_encoder1035.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1035.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1035.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1042.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1033.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1042.drawIndirect(buffer104, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1011.end();
    render_pass_encoder1033.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1035.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1035.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1034.drawIndirect(buffer1044, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1042.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1042.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1034.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1048, 0);
    render_pass_encoder1000.end();
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    render_pass_encoder1032.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1035.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1042.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1034.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1003.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1034.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1035.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1035.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1042.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1032.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1042.drawIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1033.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder1032.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1021, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1034.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1034.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1032.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1035.draw(3);
    device30.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1035.endOcclusionQuery()
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1051.drawIndirect(buffer109, 0);
    render_pass_encoder1033.end();
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1042.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1042.drawIndirect(buffer1010, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1030.drawIndirect(buffer1017, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1048, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer1049, 0);
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1034.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1033.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1035.drawIndirect(buffer1043, 0);
    render_pass_encoder1034.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1050, 0);
    device30.queue.submit([]);
    render_pass_encoder1034.drawIndirect(buffer102, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1028, "uint16");
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1032.drawIndirect(buffer1050, 0);
    render_pass_encoder1002.drawIndirect(buffer1040, 0);
    render_pass_encoder1032.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1032.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1042.end();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1046, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1042.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1032.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1035.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1034.popDebugGroup();
    render_pass_encoder1042.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1033.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1035.setIndexBuffer(buffer1050, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1033.end();
    render_pass_encoder1033.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1033.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1042.drawIndirect(buffer1038, 0);
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1042.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1034.draw(3);
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1035.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1035.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1042.end();
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1034.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer1047, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1042.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1042.drawIndexedIndirect(buffer1040, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1033.drawIndirect(buffer1046, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
}