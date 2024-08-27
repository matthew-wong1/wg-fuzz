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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, 0.5, 0.0, 0.25, -0.25, -0.5, 0.5, 0.0, -0.5, -0.25, -0.75, 0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, -0.5, 0.5, -0.25, 1.0, 0.5, -0.25, 0.5, 0.5, 0.25, 0.0, 0.75, -1.0, 1.0, -0.75, 0.0, 1.0, 0.0, 0.0, -0.5, -1.0, -0.25, 0.75, -0.25, -0.25, -0.5, -0.75, 0.25, -0.5, 0.5, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.25, 1.0, 0.25, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.75, -0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 0.25, 0.75, -0.25, 1.0, -0.25, 0.25, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array1 = new Float32Array([0.5, 0.75, -0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 0.25, -0.5, 0.25, 0.0, -0.5, 1.0, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, -0.25, 0.0, -0.75, 0.5, -0.5, -0.5, -1.0, 1.0, -1.0, 0.0, -0.75, 0.0, -0.75, -1.0, 0.0, -1.0, 0.25, -0.25, -1.0, -1.0, 0.0, 1.0, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, -0.5, -1.0, 0.25, -1.0, -1.0, -1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, -0.5, 0.5, 0.5, 0.75, 0.5, -1.0, 0.5, 0.75, 0.75, -0.25, 0.25, 0.5, 0.0, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.popDebugGroup()
    const array2 = new Float32Array([0.25, 0.75, -0.75, 0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.5, -0.5, 0.75, -1.0, -0.75, 0.0, 0.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.5, 0.25, 1.0, -0.5, 1.0, -1.0, 0.5, 0.25, 0.0, -1.0, -1.0, -0.25, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, -0.5, 0.25, -1.0, -1.0, 0.25, -1.0, -0.25, -0.5, 0.0, 0.0, 0.25, -1.0, -1.0, -1.0, 0.0, -0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.75, 0.75, 1.0, -0.5, 1.0, 0.5, -0.5, 1.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.5, 1.0, 0.75, 1.0, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.75, -0.25, 0.75, -0.5, 0.5, -0.25, ]);
    const array3 = new Float32Array([-1.0, -0.75, 1.0, 0.75, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, 1.0, 0.5, 0.5, 0.25, -0.75, 0.75, -0.5, -0.25, -0.25, 0.0, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.0, -1.0, -1.0, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, -1.0, -0.5, 0.5, 0.5, 0.25, -1.0, 0.75, -0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.25, 1.0, 1.0, 1.0, -0.25, 0.0, -0.5, -0.75, -0.5, 0.0, 1.0, 0.5, 0.75, -0.75, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, 1.0, 0.75, 0.25, -1.0, -0.5, -0.5, 0.0, 0.5, -0.75, 0.0, 1.0, -1.0, 0.25, -1.0, -0.5, 0.0, 1.0, -0.75, -0.75, 0.5, -1.0, 0.25, -0.25, -0.25, 0.0, ]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query101.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    texture100.destroy();
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    texture100.destroy();
    
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
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
        occlusionQuerySet: query101
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
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
        occlusionQuerySet: query100
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline101);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1030.setPipeline(render_pipeline102);
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
        occlusionQuerySet: query101
    });
    compute_pass_encoder1020.popDebugGroup()
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    buffer101.destroy()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.setPipeline(render_pipeline100);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.pushErrorScope("validation");
    command_encoder102.clearBuffer(buffer100);
    render_bundle_encoder103.setPipeline(render_pipeline101);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder103.insertDebugMarker("marker");
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1000.insertDebugMarker("marker");
    buffer100.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1001.setPipeline(render_pipeline103);
    
    query101.destroy()
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.submit([]);
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    query102.destroy()
    render_pass_encoder1020.executeBundles([render_bundle_encoder102, ])
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group101);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1000.setStencilReference(1);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder103.setBindGroup(0, bind_group102);
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    
    buffer107.destroy()
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    query100.destroy()
    query101.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    query000.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer103.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
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

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    
    
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    texture101.destroy();
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder102.setVertexBuffer(0, buffer102);
    buffer102.destroy()
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
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

    render_bundle_encoder101.setBindGroup(0, bind_group106);
    buffer1010.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    
    render_pass_encoder1001.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.setVertexBuffer(0, buffer107);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder101.setVertexBuffer(0, buffer1010);
    buffer108.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1013.destroy()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder103.setVertexBuffer(0, buffer106);
    buffer105.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1021.setPipeline(render_pipeline105);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    texture102.destroy();
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_pass_encoder1001.draw(3);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1001.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer1012,
        0
    )
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group107);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1001.end();
    buffer1014.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1000.end();
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    compute_pass_encoder1011.insertDebugMarker("marker")
    
    
    buffer1015.destroy()
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1040.beginOcclusionQuery(0)
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    command_encoder103.clearBuffer(buffer1010);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder103.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder100.popDebugGroup();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1040.setPipeline(render_pipeline106);
    render_pass_encoder1031.setPipeline(render_pipeline104);
    
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    
    render_pass_encoder1030.setVertexBuffer(0, buffer1014);
    const array4 = new Float32Array([-0.75, -1.0, 0.75, -0.5, 0.75, 0.0, 1.0, -0.75, -0.5, 0.75, 0.75, -0.5, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, 1.0, -0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.75, 0.25, 0.25, 0.0, 0.75, 0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 0.25, 1.0, 0.5, -1.0, -0.5, -0.5, 1.0, -0.25, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, 1.0, 0.25, -0.75, -0.5, -0.75, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, -1.0, -1.0, 0.5, 0.5, 0.0, 0.25, 1.0, 0.5, 0.5, -0.25, -0.75, 1.0, -0.25, -0.75, 0.0, -0.5, -1.0, 0.0, 1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 0.5, ]);
    render_pass_encoder1041.setPipeline(render_pipeline100);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1017, 0, array1, 0, array1.length);
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    render_bundle_encoder103.drawIndirect(buffer108, 0);
    device00.pushErrorScope("internal");
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_bundle_encoder102.draw(3);
    buffer1019.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1030.draw(3);
    
    render_pass_encoder1040.popDebugGroup();
    
    render_pass_encoder1001.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    {
        await buffer1018.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1018.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1018.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1030.popDebugGroup();
    render_bundle_encoder100.setVertexBuffer(0, buffer1010);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    render_pass_encoder1030.setStencilReference(1);
    query101.destroy()
    render_pass_encoder1031.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    query102.destroy()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1041.insertDebugMarker("marker");
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group109);
    render_pass_encoder1021.setStencilReference(1);
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_pass_encoder1031.insertDebugMarker("marker");
    
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    render_bundle_encoder101.draw(3);
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    texture103.destroy();
    render_pass_encoder1031.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setIndexBuffer(buffer1010, "uint16");
    
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const array5 = new Float32Array([-1.0, 0.5, -0.75, 0.5, -1.0, 0.5, 0.5, -0.75, 0.5, 0.25, -0.5, 1.0, -0.5, 0.25, -0.25, 1.0, -0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, -1.0, 0.75, -1.0, 0.5, -0.5, -0.75, -0.75, 0.75, 0.75, 0.75, 0.25, -0.75, 0.0, -0.25, -0.25, 0.5, 0.75, 0.0, -1.0, 1.0, 0.0, 0.0, 1.0, -0.25, 0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.5, 0.25, 0.75, -1.0, 0.0, -1.0, -0.5, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.75, -0.75, 0.0, -1.0, 0.75, 1.0, 0.25, 0.25, 0.0, -0.75, 0.5, -0.5, 0.0, -0.75, -0.75, 0.5, -1.0, 0.25, -0.75, 0.0, 0.5, 0.75, -1.0, -0.25, -0.25, 0.75, -0.5, ]);
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder100.popDebugGroup();
    buffer1021.destroy()
    const array6 = new Float32Array([1.0, -0.5, -0.5, -0.5, -0.25, -0.75, 1.0, -0.5, -0.5, 1.0, 0.25, -0.5, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.75, -0.5, -1.0, -0.75, 0.75, 1.0, 1.0, 1.0, 1.0, 0.0, -0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.75, 1.0, -0.25, 0.5, -0.5, -0.5, -0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.75, 0.25, 0.75, 0.5, 1.0, 0.25, 0.0, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -0.25, 1.0, -0.25, -1.0, -0.5, 0.25, -0.5, -1.0, 0.5, 0.75, 1.0, 0.25, 0.0, -1.0, 0.75, 0.25, 0.25, -0.25, 0.25, 0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.75, -0.5, -0.75, -0.5, -0.75, -1.0, ]);
    render_bundle_encoder100.draw(3);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1011.setPipeline(render_pipeline1011);
    render_pass_encoder1041.setStencilReference(1);
    render_pass_encoder1041.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1021.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_bundle_encoder102.draw(3);
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    render_bundle_encoder102.popDebugGroup();
    buffer1020.destroy()
    render_pass_encoder1021.setVertexBuffer(0, buffer103);
    buffer106.destroy()
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    render_pass_encoder1021.insertDebugMarker("marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1031.insertDebugMarker("marker");
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1011.setStencilReference(1);
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer107,
        0,
        400
    );
    render_pass_encoder1051.insertDebugMarker("marker");
    query101.destroy()
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    render_pass_encoder1031.popDebugGroup();
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1011.destroy()
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group1010);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    query101.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder102.finish();
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    buffer1012.destroy()
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1011);
    texture000.destroy();
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1010.setVertexBuffer(0, buffer102);
    command_encoder104.copyBufferToBuffer(
        buffer1013,
        0,
        buffer102,
        0,
        400
    );
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder106.copyBufferToBuffer(
        buffer1014,
        0,
        buffer1018,
        0,
        400
    );
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    buffer1022.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1051.setPipeline(render_pipeline101);
    render_bundle_encoder103.insertDebugMarker("marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1001.insertDebugMarker("marker")
    render_pass_encoder1060.setPipeline(render_pipeline100);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder1010.drawIndexed(3);
    command_encoder106.copyBufferToBuffer(
        buffer100,
        0,
        buffer1025,
        0,
        400
    );
    render_pass_encoder1051.setStencilReference(1);
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
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
    
    buffer1026.destroy()
    render_pass_encoder1061.setPipeline(render_pipeline1014);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1051.insertDebugMarker("marker");
    render_bundle_encoder101.setIndexBuffer(buffer105, "uint16");
    
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1041.setStencilReference(1);
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    query102.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1025, 0, array6, 0, array6.length);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    compute_pass_encoder1011.pushDebugGroup("group_marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    device10.queue.writeBuffer(buffer1018, 0, array0, 0, array0.length);
    
    render_pass_encoder1061.setStencilReference(1);
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    buffer1024.destroy()
    buffer1016.destroy()
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1023, 0, array6, 0, array6.length);
    device10.pushErrorScope("validation");
    query103.destroy()
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1012);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setVertexBuffer(0, buffer1026);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1041.setVertexBuffer(0, buffer1020);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1010.popDebugGroup();
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
        layout: render_pipeline1014.getBindGroupLayout(0),
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

    render_pass_encoder1061.setBindGroup(0, bind_group1013);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
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
        layout: render_pipeline1011.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.end();
    render_pass_encoder1031.draw(3);
    render_pass_encoder1061.setVertexBuffer(0, buffer1014);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1011.setVertexBuffer(0, buffer103);
    render_pass_encoder1061.drawIndirect(buffer1030, 0);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1015);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1051.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group1016);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1041.end();
    render_pass_encoder1051.setVertexBuffer(0, buffer1030);
    render_pass_encoder1061.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1060.setVertexBuffer(0, buffer1022);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1020, 0);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1051.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer105, command_buffer106, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder1060.end();
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.end();
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer100, ]);
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
        layout: render_pipeline106.getBindGroupLayout(0),
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
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.setVertexBuffer(0, buffer1021);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1061.end();
    render_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1040.end();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1011, 0);
    render_pass_encoder1041.drawIndirect(buffer106, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.end();
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1061.drawIndirect(buffer1017, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1061.draw(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1060.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1061.drawIndexedIndirect(buffer1037, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1036, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1061.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1060.drawIndirect(buffer108, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.end();
}