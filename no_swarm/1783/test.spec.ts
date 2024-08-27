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
    const array0 = new Float32Array([1.0, 0.5, -0.5, -0.25, 0.75, -0.25, 0.75, -0.75, 0.0, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, 0.0, 0.5, 0.0, -0.5, -0.5, 0.25, 1.0, 0.5, -0.5, -1.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.25, 0.25, -0.25, -0.25, -1.0, -0.75, 0.25, 0.0, 0.25, 0.25, -0.5, 0.5, 1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.75, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, 0.25, -1.0, -0.25, 0.25, 0.0, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.5, 0.25, 0.5, -0.25, 0.75, -1.0, -1.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.5, -0.75, 0.0, 0.5, 0.75, 0.5, 0.5, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, 1.0, ]);
    
    
    const array1 = new Float32Array([0.5, 0.5, -0.25, -0.75, 0.25, 0.75, -1.0, -1.0, -0.25, -0.25, -0.75, -1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, -0.25, -0.25, 0.5, -0.75, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 0.25, -0.5, 0.75, 0.0, -1.0, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -0.5, 0.0, 0.5, 0.0, 0.75, 0.5, -1.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, -0.5, -0.25, -0.5, -0.5, 0.25, 1.0, -0.75, -0.25, 0.0, 0.5, -0.25, -0.75, 0.5, 0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.5, 0.75, -0.5, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.25, 1.0, 0.75, 0.25, 0.0, 0.5, -0.75, 1.0, 0.0, -0.75, 0.5, 1.0, 0.5, -0.75, 0.5, 1.0, 0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 0.5, 0.5, -0.75, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, -1.0, -0.75, -0.25, -0.5, 0.25, 0.75, -0.5, -1.0, -0.75, -0.5, 0.25, 0.75, -0.75, -0.75, 0.25, 0.75, -0.5, -0.5, 0.0, 1.0, -0.25, 0.25, 0.25, 0.75, 0.25, -0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.0, -1.0, -0.25, -0.75, -0.25, -0.75, 0.5, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, 0.25, 0.25, 0.25, -0.75, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, 1.0, 0.25, 0.75, 0.0, -0.25, 0.0, -0.25, -0.75, -0.75, 0.75, 0.5, -1.0, -0.25, -0.75, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-0.5, -0.25, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.0, 0.75, 0.0, 1.0, 1.0, 0.5, 1.0, -0.5, 0.75, 0.0, -0.5, 0.25, 0.0, 0.75, -0.25, -0.5, -1.0, 0.0, -0.5, -1.0, 0.25, -1.0, 0.0, -0.5, 0.75, 1.0, 0.75, 0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 0.0, -1.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.0, 0.0, -0.75, 0.25, 0.5, -0.5, -1.0, 0.75, -0.75, 0.0, 0.0, 1.0, -0.25, 1.0, 0.5, 1.0, 0.75, -0.5, -0.25, -0.75, 0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 0.5, 0.0, 0.25, 0.75, 0.75, 0.5, 0.5, 1.0, -1.0, 0.25, 0.5, 0.75, -0.75, -0.5, 0.75, 0.0, -0.75, 1.0, -1.0, 0.25, 0.75, 1.0, -0.5, -0.25, -1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device10.pushErrorScope("validation");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    texture101.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array4 = new Float32Array([-0.25, -0.25, 1.0, 0.0, 0.75, -0.25, -0.25, -0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -1.0, -1.0, 1.0, 1.0, -0.75, 0.0, 0.0, 0.75, 1.0, -0.5, 1.0, 0.75, 1.0, -0.5, 0.0, 0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 0.25, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.5, 0.75, 0.25, 0.75, -0.5, 0.5, -0.25, -0.25, 0.5, 1.0, -0.5, -0.5, -1.0, 0.0, -0.25, -0.5, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, 0.0, 0.0, 0.75, -0.75, 1.0, 1.0, 0.25, 0.5, -0.5, 0.75, -0.5, 1.0, -0.25, 0.5, 0.75, 0.0, 0.25, 1.0, -0.75, -0.5, 0.0, 1.0, 0.75, -0.25, -0.25, -0.5, -0.5, -0.75, 1.0, ]);
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    texture101.destroy();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder100.clearBuffer(buffer100);
    
    buffer101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
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
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.pushErrorScope("out-of-memory");
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    texture100.destroy();
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.executeBundles([])
    query100.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_pass_encoder1010.setStencilReference(1);
    
    const array5 = new Float32Array([-0.25, 0.75, 0.25, -0.5, -0.25, -0.5, 1.0, 0.75, 0.5, -0.75, 0.75, -0.5, 0.75, -0.25, -0.25, 0.5, 0.75, -0.5, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.0, 0.5, 0.5, 0.5, -0.75, -0.5, 0.0, -1.0, 0.5, 0.0, 0.25, 0.5, -0.25, -0.25, -0.75, 0.0, 0.25, -1.0, 0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.0, -0.25, -1.0, 1.0, 0.25, 0.0, 0.75, 0.75, 0.5, -0.75, 0.75, -1.0, 0.75, 0.0, -0.5, -0.5, 0.25, 0.25, -0.5, -0.25, 0.5, -0.25, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, -0.5, 0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.25, 1.0, -0.25, 0.5, -0.75, 1.0, -0.25, 0.25, 0.0, 0.5, 0.25, -0.5, 1.0, 0.5, ]);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1010.setPipeline(render_pipeline101);
    
    texture102.destroy();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const array6 = new Float32Array([1.0, -0.75, 0.75, 0.25, -0.75, 1.0, -0.75, -0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -1.0, -0.5, 0.0, -0.75, 1.0, 0.25, 1.0, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 1.0, 0.25, -0.5, 0.0, -1.0, -0.75, -0.5, 0.5, -0.25, -0.5, 0.25, 0.25, 1.0, 0.5, 1.0, 0.75, 0.75, -0.25, -0.75, 0.25, 0.75, -1.0, -0.5, -0.5, 0.0, 1.0, 0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 0.5, -0.25, -0.25, -0.5, -1.0, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, -0.25, -0.5, 0.0, -0.75, 0.25, 0.25, -0.5, 0.25, -0.75, -0.75, -0.25, -0.25, -1.0, -0.25, 0.5, 0.25, -1.0, -1.0, -0.75, 0.0, 0.25, ]);
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
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.setPipeline(render_pipeline102);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1000.setPipeline(render_pipeline102);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    
    render_pass_encoder1011.setPipeline(render_pipeline100);
    
    device20.pushErrorScope("validation");
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    query100.destroy()
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        occlusionQuerySet: query101
    });
    
    device10.pushErrorScope("validation");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query102.destroy()
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    buffer102.destroy()
    render_pass_encoder1030.setPipeline(render_pipeline103);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
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

    render_pass_encoder1011.setBindGroup(0, bind_group101);
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
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder102.setPipeline(render_pipeline106);
    render_pass_encoder1030.beginOcclusionQuery(0)
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1001.setStencilReference(1);
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1001.setPipeline(render_pipeline101);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.beginOcclusionQuery(0)
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline100);
    query103.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    buffer105.destroy()
    
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1001.pushDebugGroup("group_marker");
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query103
    });
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

    render_bundle_encoder101.setBindGroup(0, bind_group104);
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    buffer109.destroy()
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
        layout: render_pipeline106.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1000.setVertexBuffer(0, buffer102);
    const render_pass_encoder1002 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1002",
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
    render_bundle_encoder102.setVertexBuffer(0, buffer104);
    buffer1013.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer102
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group106);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    buffer1010.destroy()
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1051.setPipeline(render_pipeline102);
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1051.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1002.setPipeline(render_pipeline101);
    buffer1015.destroy()
    render_pass_encoder1050.setPipeline(render_pipeline109);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    buffer106.destroy()
    render_pass_encoder1001.beginOcclusionQuery(2)
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
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
    render_pass_encoder1040.beginOcclusionQuery(2)
    
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
    render_pass_encoder1011.setVertexBuffer(0, buffer106);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder1031.setPipeline(render_pipeline108);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1051.insertDebugMarker("marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1051.insertDebugMarker("marker");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer1013,
        0
    )
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
    render_pass_encoder1051.setStencilReference(1);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1031.insertDebugMarker("marker");
    render_pass_encoder1010.setVertexBuffer(0, buffer1012);
    
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1021.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    
    render_pass_encoder1010.draw(3);
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1051.pushDebugGroup("group_marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1021.setStencilReference(1);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1021.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_pass_encoder1000.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.setVertexBuffer(0, buffer106);
    render_bundle_encoder102.setIndexBuffer(buffer109, "uint16");
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.endOcclusionQuery()
    
    const command_buffer201 = command_encoder201.finish();
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
    render_pass_encoder1040.insertDebugMarker("marker");
    buffer107.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer1012,
        0
    )
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2001.insertDebugMarker("marker")
    render_pass_encoder1000.insertDebugMarker("marker");
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
        occlusionQuerySet: query100
    });
    
    render_pass_encoder1041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder1003 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1003",
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
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_pass_encoder1001.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer108,
        0
    )
    render_pass_encoder1002.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
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
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.executeBundles([])
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
        layout: render_pipeline103.getBindGroupLayout(0),
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
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1003.setPipeline(render_pipeline1011);
    render_pass_encoder1002.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.popDebugGroup();
    query103.destroy()
    render_pass_encoder1041.setPipeline(render_pipeline105);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_pass_encoder1021.setVertexBuffer(0, buffer104);
    render_pass_encoder1060.setPipeline(render_pipeline1013);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    render_pass_encoder1020.popDebugGroup();
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    buffer100.destroy()
    render_pass_encoder1031.insertDebugMarker("marker");
    render_bundle_encoder100.drawIndirect(buffer101, 0);
    texture102.destroy();
    render_pass_encoder1070.setPipeline(render_pipeline101);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_pass_encoder1001.setStencilReference(1);
    query100.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer103.destroy()
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder1002.setStencilReference(1);
    
    render_pass_encoder1030.setVertexBuffer(0, buffer101);
    command_encoder101.copyBufferToBuffer(
        buffer1014,
        0,
        buffer105,
        0,
        400
    );
    render_pass_encoder1001.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1020.setStencilReference(1);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
        layout: render_pipeline1011.getBindGroupLayout(0),
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

    render_pass_encoder1003.setBindGroup(0, bind_group108);
    render_bundle_encoder101.setIndexBuffer(buffer1019, "uint16");
    buffer1018.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    
    render_pass_encoder1021.setIndexBuffer(buffer106, "uint16");
    
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder101.drawIndexed(3);
    command_encoder202.insertDebugMarker("mymarker");
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1060.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder102.setIndexBuffer(buffer1016, "uint16");
    command_encoder103.copyBufferToBuffer(
        buffer108,
        0,
        buffer1017,
        0,
        400
    );
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1011.popDebugGroup();
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group109);
    render_pass_encoder1000.insertDebugMarker("marker");
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    render_pass_encoder1041.setVertexBuffer(0, buffer101);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1002.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_bundle_encoder102.drawIndexedIndirect(buffer101, 0);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1021.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1003.setVertexBuffer(0, buffer1020);
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    buffer1019.destroy()
    render_pass_encoder1051.setStencilReference(1);
    
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer1022, 0, array5, 0, array5.length);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_pass_encoder1051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
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
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.setStencilReference(1);
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1050.endOcclusionQuery()
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1001.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    
    compute_pass_encoder1070.insertDebugMarker("marker")
    render_pass_encoder1050.popDebugGroup();
    buffer1023.destroy()
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1051.beginOcclusionQuery(1)
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1071.setPipeline(render_pipeline101);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1022.setPipeline(render_pipeline1010);
    render_pass_encoder1000.end();
    render_pass_encoder1003.setIndexBuffer(buffer1020, "uint16");
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1041.endOcclusionQuery()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1071.setBindGroup(0, bind_group1010);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group1011);
    compute_pass_encoder2001.setPipeline(compute_pipeline200);
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
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

    render_pass_encoder1002.setBindGroup(0, bind_group1012);
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1002.setVertexBuffer(0, buffer1012);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1011.end();
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

    render_pass_encoder1051.setBindGroup(0, bind_group1013);
    render_pass_encoder1051.setVertexBuffer(0, buffer1018);
    render_pass_encoder1002.draw(3);
    command_encoder202.popDebugGroup()
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.popDebugGroup();
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
        layout: render_pipeline1010.getBindGroupLayout(0),
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

    render_pass_encoder1022.setBindGroup(0, bind_group1014);
    render_pass_encoder1021.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1002.end();
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
        layout: render_pipeline108.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group1015);
    render_pass_encoder1022.setVertexBuffer(0, buffer101);
    render_pass_encoder1003.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.setVertexBuffer(0, buffer109);
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1022.drawIndirect(buffer101, 0);
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
        layout: render_pipeline109.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group1016);
    render_pass_encoder1050.setVertexBuffer(0, buffer102);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1010, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.setVertexBuffer(0, buffer1032);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1070.setBindGroup(0, bind_group1017);
    render_pass_encoder1030.end();
    render_pass_encoder1071.drawIndirect(buffer1035, 0);
    render_pass_encoder1070.setVertexBuffer(0, buffer1025);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1031.end();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
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
    
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
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

    render_pass_encoder1001.setBindGroup(0, bind_group1018);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1001.setVertexBuffer(0, buffer108);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1039, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder1030.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1010, "uint16");
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group1019);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    device10.queue.submit([command_buffer106, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1022.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.setVertexBuffer(0, buffer1032);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
    render_pass_encoder1041.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1014, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1002.draw(3);
    device10.queue.submit([]);
    render_pass_encoder1071.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1022.drawIndirect(buffer103, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1002.drawIndirect(buffer1042, 0);
    const command_buffer100 = command_encoder100.finish();
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: render_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group1020);
    render_pass_encoder1071.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1022.end();
    render_pass_encoder1022.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1060.setVertexBuffer(0, buffer1025);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    const command_buffer102 = command_encoder102.finish();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1010, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder2001.end();
    render_pass_encoder1020.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.end();
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.end();
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1041.draw(3);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1051.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer102, command_buffer104, command_buffer105, command_buffer106, ]);
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1039, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1002.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group204);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1011, 0);
    render_pass_encoder1003.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1022.drawIndirect(buffer1016, 0);
    render_pass_encoder1002.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer100, 0);
    render_pass_encoder1070.drawIndirect(buffer1033, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1022.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1002.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1002.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2013, 0);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1022.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1036, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1003.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group205);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndirect(buffer1024, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2016, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group206);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder2001.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1003.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1003.end();
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1001.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1033, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1030.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1002.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1017, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1060.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1071.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1000.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2019, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2019, 0);
    render_pass_encoder1030.draw(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2020, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1003.drawIndirect(buffer106, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2021, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1003.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1022.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1030.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1022.drawIndirect(buffer1032, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1022.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.draw(3);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group207);
    render_pass_encoder1022.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1003.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1022.drawIndirect(buffer1020, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndirect(buffer1039, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1041.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1050.end();
    render_pass_encoder1000.end();
    render_pass_encoder1031.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2024, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2024, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1040.draw(3);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1039, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2025, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2025, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1022, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1039, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1003.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1032, 0);
    device20.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1040, "uint16");
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer1013, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2028, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1020, 0);
    render_pass_encoder1002.drawIndexed(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.end();
    render_pass_encoder1002.draw(3);
    render_pass_encoder1050.end();
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1050.end();
    render_pass_encoder1040.end();
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1003.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1003.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1025, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2031, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1021.drawIndirect(buffer1028, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1010.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1041.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1070.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexed(3);
    device20.queue.submit([]);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2032, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer108, 0);
    device20.queue.submit([]);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1003.drawIndirect(buffer1032, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1003.drawIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndirect(buffer1029, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1002.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1071.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1071.drawIndirect(buffer1017, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.end();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1030.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer106, ]);
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1003.drawIndirect(buffer1034, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2033, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2034, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2034, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1020.drawIndirect(buffer102, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1042, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1043, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1070.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1003.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1051.end();
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer1030, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1040, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1050.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1042, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1021.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1070.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1070.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1051.end();
    render_pass_encoder1041.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1002.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1036, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1002.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer1018, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1051.drawIndirect(buffer107, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1039, 0);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2010);
    render_pass_encoder1021.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1050.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1070.popDebugGroup()
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1002.drawIndirect(buffer1013, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1037, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.drawIndirect(buffer103, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1003.drawIndirect(buffer1027, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1011.end();
    render_pass_encoder1041.setIndexBuffer(buffer1014, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1002.draw(3);
    render_pass_encoder1002.end();
    device10.queue.submit([command_buffer101, command_buffer103, command_buffer107, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1003.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer1037, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1071.end();
    render_pass_encoder1003.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1003.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndexed(3);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.drawIndirect(buffer105, 0);
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1003.drawIndirect(buffer1020, 0);
    render_pass_encoder1022.draw(3);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1021, 0);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2011);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1003.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder1010.drawIndirect(buffer1022, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1000.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1031.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1022.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndirect(buffer108, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1003.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder1070.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1003.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2046, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1022.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1044, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1011, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1031.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1050.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    render_pass_encoder1002.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer1040, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1039, "uint16");
    device10.queue.submit([command_buffer102, command_buffer106, ]);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1022.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1060.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2048, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2048, 0);
    render_pass_encoder1050.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2049, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1022.drawIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1020.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1045, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1050.end();
    render_pass_encoder1030.drawIndirect(buffer1035, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1051.drawIndirect(buffer1014, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1045, 0);
    render_pass_encoder1022.drawIndirect(buffer1043, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    device10.queue.submit([command_buffer104, command_buffer105, command_buffer106, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1039, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1014, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2014);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1070.setIndexBuffer(buffer109, "uint16");
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2015);
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1071.end();
    render_pass_encoder1010.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1011.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1020, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer109, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndirect(buffer1021, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndirect(buffer102, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1025, 0);
    render_pass_encoder1022.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer108, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1002.drawIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndirect(buffer1025, 0);
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1022.setIndexBuffer(buffer106, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndirect(buffer1011, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1002.drawIndirect(buffer102, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1002.drawIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2056,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    render_pass_encoder1003.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1041.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1021.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1030, "uint16");
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1003.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndirect(buffer1032, 0);
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1031.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1032, "uint16");
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2017);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2059, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2059, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1023, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1043, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1041.drawIndirect(buffer1018, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1003.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1070.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1070.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.drawIndirect(buffer1010, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1035, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1021.popDebugGroup();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    device20.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2018);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1022.drawIndirect(buffer105, 0);
    render_pass_encoder1071.drawIndirect(buffer1018, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1002.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1003.drawIndirect(buffer104, 0);
    render_pass_encoder1022.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1003.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1002.drawIndirect(buffer1031, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1002.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1071.drawIndirect(buffer104, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1050.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1022.drawIndirect(buffer1032, 0);
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1022.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1003.drawIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1002.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1033, "uint16");
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1013, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1041, "uint16");
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    render_pass_encoder1030.end();
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1022.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.popDebugGroup();
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder1031.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.popDebugGroup();
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2021);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    render_pass_encoder1002.drawIndirect(buffer100, 0);
    render_pass_encoder1051.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndirect(buffer1036, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1002.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1003.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1050.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1011.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1070.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2069, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1022.drawIndirect(buffer1042, 0);
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndirect(buffer1030, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1002.drawIndirect(buffer105, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1022.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.draw(3);
    compute_pass_encoder2001.end();
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1070.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer103, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1022, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1040.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndirect(buffer1034, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1050.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1030.setIndexBuffer(buffer1027, "uint16");
    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2071,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    device20.queue.submit([]);
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1022.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, command_buffer105, command_buffer107, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1031.end();
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1041, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1001.drawIndirect(buffer1028, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1022.end();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1033, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1070.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1031.drawIndirect(buffer1038, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2072, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2072, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1041.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1032, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1022.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1003.drawIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndirect(buffer1027, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.draw(3);
    render_pass_encoder1002.drawIndirect(buffer100, 0);
    render_pass_encoder1030.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1019, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1003.drawIndexed(3);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder1022.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1041.end();
    render_pass_encoder1022.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1042, 0);
    render_pass_encoder1003.drawIndirect(buffer1045, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndirect(buffer1044, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1001.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1003.drawIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.setIndexBuffer(buffer106, "uint16");
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2023);
    render_pass_encoder1030.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1003.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1035, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2076, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer105, 0);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1003.drawIndirect(buffer1018, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1041.end();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1023, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1022.drawIndirect(buffer100, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.end();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1011, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2079, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1071.draw(3);
    render_pass_encoder1022.end();
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1060.end();
    render_pass_encoder1051.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, command_buffer106, ]);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1036, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.drawIndirect(buffer108, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1021.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.drawIndirect(buffer108, 0);
    render_pass_encoder1022.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1041, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1003.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2080, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.draw(3);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.draw(3);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1012, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1038, 0);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2025);
    render_pass_encoder1022.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1060.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexed(3);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndirect(buffer107, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1028, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1022.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1010, 0);
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2027);
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1022.drawIndirect(buffer102, 0);
    render_pass_encoder1040.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndirect(buffer1038, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1034, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1000.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.drawIndexed(3);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.draw(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer1034, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.popDebugGroup();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2087, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2087, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1022.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1013, 0);
    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2089,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2028);
    render_pass_encoder1051.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer101, command_buffer104, command_buffer106, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1021, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1070.drawIndirect(buffer1039, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2029);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1003.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1003.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndirect(buffer106, 0);
    render_pass_encoder1071.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1026, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1020.draw(3);
    render_pass_encoder1001.end();
    render_pass_encoder1002.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1025, 0);
    render_pass_encoder1022.drawIndirect(buffer1013, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1036, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1060.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1018, 0);
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndirect(buffer100, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1022.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1003.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1040.end();
    render_pass_encoder1070.drawIndirect(buffer104, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1044, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2092, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2092, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1021.drawIndirect(buffer1031, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1020, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1022.drawIndexed(3);
    compute_pass_encoder2020.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2093, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2093, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1003.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1044, 0);
    render_pass_encoder1022.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndirect(buffer1039, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2030);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1035, "uint16");
    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2097,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2031);
    render_pass_encoder1022.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.drawIndirect(buffer102, 0);
    render_pass_encoder1070.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1071.end();
    render_pass_encoder1071.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1001.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1043, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer1040, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1039, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1002.drawIndirect(buffer1019, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1070.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1022.drawIndirect(buffer108, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2098, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2098, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer107, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder1070.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1031, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer1020, 0);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1002.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1002.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1060.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1003.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([]);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1003.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1070.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer104, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1060.draw(3);
    render_pass_encoder1011.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2099, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2099, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1040, "uint16");
    device10.queue.submit([command_buffer102, command_buffer105, command_buffer106, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1025, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1003.draw(3);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1070.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer1039, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1011.end();
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20100, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20100, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1051.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1045, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1003.drawIndirect(buffer1032, 0);
    render_pass_encoder1001.drawIndirect(buffer1042, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1040, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1002.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndirect(buffer1014, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1051.drawIndirect(buffer1012, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1070.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1039, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1070.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1051.end();
    compute_pass_encoder2001.end();
    render_pass_encoder1040.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1000.drawIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1034, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20101, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20101, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1040, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndirect(buffer1012, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1060.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1010.draw(3);
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20102, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2032);
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20106,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2033);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer102, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer105, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndirect(buffer1029, 0);
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1031, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1002.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer1033, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1070.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1037, 0);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1060.drawIndirect(buffer104, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1010.end();
    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20108,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2034);
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1011, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1070.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1022, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20109, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20109, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1003.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer107, ]);
    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20111,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2035);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1018, 0);
    render_pass_encoder1011.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndirect(buffer1043, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20112, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20112, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1023, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1031, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1020.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer102, 0);
    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20114,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2036);
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1015, 0);
    render_pass_encoder1000.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1041, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20115, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1051.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20116, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20116, 0);
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.end();
    render_pass_encoder1000.end();
    render_pass_encoder1002.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1015, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1041.end();
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.end();
    render_pass_encoder1071.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndirect(buffer103, 0);
    render_pass_encoder1060.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1001.drawIndirect(buffer1027, 0);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1002.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1021, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1022.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.draw(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1022.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20117, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20117, 0);
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1003.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1071.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1003.drawIndirect(buffer1027, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1070.drawIndirect(buffer105, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1042, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1051.drawIndirect(buffer109, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1070.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1042, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1031, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer103, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1051.drawIndirect(buffer109, 0);
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1022.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1017, 0);
    render_pass_encoder1011.drawIndirect(buffer1021, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1022.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2020.end();
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.drawIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1003.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1003.popDebugGroup();
    compute_pass_encoder2001.end();
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20118, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20118, 0);
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.end();
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1003.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1031.draw(3);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.end();
    compute_pass_encoder2001.end();
    render_pass_encoder1060.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20119, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20119, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1018, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1003.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1060.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1002.end();
    render_pass_encoder1041.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.draw(3);
    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20121,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2037);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1051.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20122, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20122, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.end();
    render_pass_encoder1070.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20123, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20123, 0);
    render_pass_encoder1030.drawIndirect(buffer1044, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1045, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1022.draw(3);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer1038, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1028, 0);
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer1011, 0);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20125,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1021.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1043, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1000.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20127, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20127, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndirect(buffer1044, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.end();
    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20129,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2039);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1071.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1031, "uint16");
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1011.end();
    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20131,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2040);
    render_pass_encoder1003.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndirect(buffer1040, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1060.draw(3);
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1022.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1003.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.drawIndirect(buffer1045, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1030.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1019, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1010.drawIndirect(buffer1020, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20133,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2041);
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1002.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1050.drawIndirect(buffer1015, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1000.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1001.end();
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1002.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1002.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1041.endOcclusionQuery()
    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20135,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2042);
    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20137,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2043);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1002.drawIndirect(buffer1015, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1071.end();
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1020, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1070.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1039, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1071.drawIndirect(buffer1038, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer105, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1012, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1071.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1039, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1033, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1051.end();
    render_pass_encoder1060.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.drawIndirect(buffer1014, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1040.end();
    render_pass_encoder1003.drawIndirect(buffer104, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1045, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder1051.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1022.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer1025, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20139,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2044);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1011.draw(3);
    render_pass_encoder1002.end();
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1020.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20140, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20140, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer109, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndirect(buffer1036, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1033, "uint16");
    device10.queue.submit([]);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1002.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1012, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20141, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20141, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1001.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    render_pass_encoder1070.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1026, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer104, 0);
    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20143,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2045);
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1001.draw(3);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1045, "uint16");
    compute_pass_encoder2000.end();
    compute_pass_encoder2001.end();
    render_pass_encoder1041.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1030, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1011.end();
    render_pass_encoder1001.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1025, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20144, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20144, 0);
    render_pass_encoder1051.drawIndirect(buffer1025, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.drawIndexed(3);
    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20146,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2046);
    device20.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1041.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1041, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1021, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1010.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.setIndexBuffer(buffer101, "uint16");
    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20148,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2047);
    render_pass_encoder1040.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1021.drawIndexedIndirect(buffer1038, 0);
    device10.queue.submit([]);
    render_pass_encoder1070.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1020.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1029, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1021.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1034, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1003.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1020, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1001.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1070.endOcclusionQuery()
    render_pass_encoder1022.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1070.drawIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1031.end();
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1070.end();
    render_pass_encoder1022.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1070.end();
    render_pass_encoder1060.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1024, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1015, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1040, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20150,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2048);
    render_pass_encoder1040.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1001.drawIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer101, command_buffer107, ]);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20152,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2049);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1003.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1070.drawIndirect(buffer106, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1021, 0);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1000.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1020.popDebugGroup();
    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20153,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20154,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2050);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1030.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer107, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1060.end();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndirect(buffer107, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.end();
    render_pass_encoder1071.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1071.drawIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1041.drawIndirect(buffer100, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1003.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1030.draw(3);
    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20156,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2051);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1003.setIndexBuffer(buffer1035, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1051.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1003.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1070.draw(3);
    compute_pass_encoder2001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.drawIndirect(buffer102, 0);
    render_pass_encoder1031.drawIndirect(buffer1024, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1002.draw(3);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndirect(buffer106, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    device10.queue.submit([]);
    render_pass_encoder1060.drawIndirect(buffer106, 0);
    render_pass_encoder1021.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1041.drawIndirect(buffer103, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20158,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2052);
    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20159,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20160,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2053);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20161, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20161, 0);
    render_pass_encoder1010.drawIndirect(buffer1028, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1033, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer109, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer104, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    render_pass_encoder1031.drawIndirect(buffer1010, 0);
    render_pass_encoder1071.draw(3);
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1001.drawIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1071.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1035, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1060.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1001.drawIndirect(buffer109, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1070.drawIndirect(buffer1038, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndirect(buffer1042, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    device20.queue.submit([]);
    render_pass_encoder1050.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1001.drawIndirect(buffer1011, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndirect(buffer1024, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1036, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1002.drawIndirect(buffer1032, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1027, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1000.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20162, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20162, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1039, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1051.drawIndirect(buffer102, 0);
    render_pass_encoder1051.drawIndirect(buffer1034, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer103, command_buffer106, ]);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1001.drawIndirect(buffer107, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1030.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1051.drawIndirect(buffer105, 0);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1051.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.draw(3);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1041.drawIndirect(buffer1022, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1022.draw(3);
    render_pass_encoder1002.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1030, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1041.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1011.drawIndirect(buffer105, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1060.drawIndirect(buffer1016, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1031.draw(3);
    compute_pass_encoder2000.end();
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1022.drawIndirect(buffer1036, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1002.popDebugGroup();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer102, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1070.drawIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1020, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1029, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20163, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20163, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1038, 0);
    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20165,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2054);
    render_pass_encoder1021.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1070.popDebugGroup()
    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20167,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2055);
    render_pass_encoder1060.draw(3);
    compute_pass_encoder2001.end();
    render_pass_encoder1021.end();
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1071.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1071.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20169,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2056);
    render_pass_encoder1051.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1003.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndirect(buffer1011, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1071.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1040, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1022.drawIndirect(buffer1012, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    device20.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1043, 0);
    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20171 = device20.createBuffer({
        label: "buffer20171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20171,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2057);
    render_pass_encoder1021.drawIndirect(buffer109, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.drawIndirect(buffer108, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1002.drawIndirect(buffer1037, 0);
    render_pass_encoder1060.drawIndirect(buffer1024, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1051.drawIndirect(buffer1022, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1003.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1016, "uint16");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20172 = device20.createBuffer({
        label: "buffer20172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20172, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20172, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1040.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1071.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer108, 0);
    device20.queue.submit([]);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder1030.end();
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    const buffer20173 = device20.createBuffer({
        label: "buffer20173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20174 = device20.createBuffer({
        label: "buffer20174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20174,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2058);
    render_pass_encoder1030.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1023, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexed(3);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder1003.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    const buffer20175 = device20.createBuffer({
        label: "buffer20175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20176 = device20.createBuffer({
        label: "buffer20176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20176,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2059);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1012, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1050.end();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1031.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer109, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1036, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer104, command_buffer105, command_buffer106, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1031.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1043, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1031.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1002.drawIndirect(buffer1023, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.end();
    compute_pass_encoder2020.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1051.drawIndirect(buffer1032, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1000.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndirect(buffer1040, 0);
    render_pass_encoder1003.drawIndirect(buffer1031, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1070.popDebugGroup()
    const buffer20177 = device20.createBuffer({
        label: "buffer20177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20178 = device20.createBuffer({
        label: "buffer20178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20178,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2060);
    render_pass_encoder1003.drawIndirect(buffer1019, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1051.drawIndirect(buffer1018, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1039, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1002.setIndexBuffer(buffer1031, "uint16");
    compute_pass_encoder2001.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1022, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1050.drawIndirect(buffer1028, 0);
    render_pass_encoder1002.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1010, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20179 = device20.createBuffer({
        label: "buffer20179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20179, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20179, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndirect(buffer1036, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1071.draw(3);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1002.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1030.end();
    render_pass_encoder1022.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1031.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1043, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder1011.drawIndirect(buffer109, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1015, 0);
    render_pass_encoder1071.drawIndirect(buffer1013, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1032, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1043, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1026, 0);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1026, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1071.drawIndirect(buffer1022, 0);
    const buffer20180 = device20.createBuffer({
        label: "buffer20180",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20181 = device20.createBuffer({
        label: "buffer20181",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2061 = device20.createBindGroup({
        label: "bind_group2061",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20180,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20181,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2061);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1002.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndexed(3);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20182 = device20.createBuffer({
        label: "buffer20182",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20182, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20182, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1031.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1022.drawIndirect(buffer1021, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1022, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1022.end();
    render_pass_encoder1071.drawIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    device20.queue.submit([]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20183 = device20.createBuffer({
        label: "buffer20183",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20183, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20183, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1035, 0);
    const buffer20184 = device20.createBuffer({
        label: "buffer20184",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20185 = device20.createBuffer({
        label: "buffer20185",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2062 = device20.createBindGroup({
        label: "bind_group2062",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20184,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20185,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2062);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1029, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1022.drawIndirect(buffer1033, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.draw(3);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1021, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1030.end();
    const buffer20186 = device20.createBuffer({
        label: "buffer20186",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20187 = device20.createBuffer({
        label: "buffer20187",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2063 = device20.createBindGroup({
        label: "bind_group2063",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20186,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20187,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2063);
    render_pass_encoder1001.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1002.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1023, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1017, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20188 = device20.createBuffer({
        label: "buffer20188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20188, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20188, 0);
    render_pass_encoder1070.end();
    render_pass_encoder1021.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1003.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1050.drawIndirect(buffer106, 0);
    render_pass_encoder1051.drawIndexed(3);
    compute_pass_encoder2000.end();
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer105, command_buffer106, ]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    const buffer20189 = device20.createBuffer({
        label: "buffer20189",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20190 = device20.createBuffer({
        label: "buffer20190",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2064 = device20.createBindGroup({
        label: "bind_group2064",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20189,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20190,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2064);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer109, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1051.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1051.end();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1001.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.drawIndirect(buffer1035, 0);
    render_pass_encoder1071.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer108, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndirect(buffer100, 0);
    render_pass_encoder1060.drawIndirect(buffer1041, 0);
    render_pass_encoder1070.drawIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1051.draw(3);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20191 = device20.createBuffer({
        label: "buffer20191",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20191, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20191, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder1021.drawIndirect(buffer1041, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1000.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1002.drawIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.end();
    render_pass_encoder1001.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1020.end();
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer1038, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1020, 0);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1031.end();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1001.drawIndirect(buffer1024, 0);
    render_pass_encoder1060.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1051.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1002.drawIndirect(buffer1016, 0);
    render_pass_encoder1002.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.drawIndirect(buffer1015, 0);
    const buffer20192 = device20.createBuffer({
        label: "buffer20192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20193 = device20.createBuffer({
        label: "buffer20193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2065 = device20.createBindGroup({
        label: "bind_group2065",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20193,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2065);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndirect(buffer1025, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1029, 0);
    const buffer20194 = device20.createBuffer({
        label: "buffer20194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20195 = device20.createBuffer({
        label: "buffer20195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2066 = device20.createBindGroup({
        label: "bind_group2066",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20195,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2066);
    render_pass_encoder1011.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1002.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1051.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    const buffer20196 = device20.createBuffer({
        label: "buffer20196",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20197 = device20.createBuffer({
        label: "buffer20197",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2067 = device20.createBindGroup({
        label: "bind_group2067",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20196,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20197,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2067);
    render_pass_encoder1051.end();
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1002.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1002.drawIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndirect(buffer1023, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20198 = device20.createBuffer({
        label: "buffer20198",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20198, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20198, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1031.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20199 = device20.createBuffer({
        label: "buffer20199",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20199, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20199, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1001.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1002.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1002.setIndexBuffer(buffer1036, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1003.draw(3);
    render_pass_encoder1003.end();
    const buffer20200 = device20.createBuffer({
        label: "buffer20200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20201 = device20.createBuffer({
        label: "buffer20201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2068 = device20.createBindGroup({
        label: "bind_group2068",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20201,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2068);
    render_pass_encoder1001.draw(3);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1031.drawIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1024, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1041.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1071.draw(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1025, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1034, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder2001.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1003.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1050.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndirect(buffer1042, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1025, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1070.draw(3);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1022.drawIndirect(buffer103, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1000.end();
    render_pass_encoder1022.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1060.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1038, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1043, 0);
    render_pass_encoder1003.drawIndirect(buffer1038, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1032, 0);
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1071.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1041.drawIndirect(buffer1042, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1040.drawIndirect(buffer1022, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer100, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    render_pass_encoder1050.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder1020.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1021.drawIndirect(buffer1036, 0);
    render_pass_encoder1071.drawIndirect(buffer1035, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1040.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20202 = device20.createBuffer({
        label: "buffer20202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20202, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20202, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1042, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1020.draw(3);
    render_pass_encoder1051.end();
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1003.drawIndirect(buffer1025, 0);
    const buffer20203 = device20.createBuffer({
        label: "buffer20203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20204 = device20.createBuffer({
        label: "buffer20204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2069 = device20.createBindGroup({
        label: "bind_group2069",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20204,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2069);
    render_pass_encoder1070.end();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1000.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20205 = device20.createBuffer({
        label: "buffer20205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20205, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20205, 0);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1051.drawIndirect(buffer1011, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1020, 0);
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1003.end();
    render_pass_encoder1002.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.drawIndirect(buffer1033, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1010.drawIndirect(buffer1033, 0);
    render_pass_encoder1070.drawIndirect(buffer1040, 0);
    render_pass_encoder1071.popDebugGroup();
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1003.drawIndexedIndirect(buffer1033, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.end();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1024, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1003.drawIndirect(buffer108, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1020.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1044, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.end();
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1070.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1002.drawIndirect(buffer106, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1003.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1014, 0);
    render_pass_encoder1022.drawIndirect(buffer1027, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1030, 0);
    render_pass_encoder1002.drawIndirect(buffer1042, 0);
    device20.queue.submit([]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1041.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.end();
    render_pass_encoder1002.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1003.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1036, "uint16");
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer104, command_buffer105, command_buffer107, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20206 = device20.createBuffer({
        label: "buffer20206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20206, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20206, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1051.drawIndirect(buffer1036, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1040.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer107, 0);
    device10.queue.submit([]);
    render_pass_encoder1021.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.drawIndirect(buffer1041, 0);
    render_pass_encoder1003.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1041, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer1031, 0);
    render_pass_encoder1031.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1060.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1030.draw(3);
    device10.queue.submit([command_buffer100, command_buffer107, ]);
    render_pass_encoder1051.drawIndirect(buffer1027, 0);
    render_pass_encoder1070.draw(3);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1025, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20207 = device20.createBuffer({
        label: "buffer20207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20207, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20207, 0);
    device10.queue.submit([command_buffer104, command_buffer107, ]);
    render_pass_encoder1071.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer102, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1071.drawIndirect(buffer1019, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1021.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1000.end();
    render_pass_encoder1021.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1003.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20208 = device20.createBuffer({
        label: "buffer20208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20208, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1003.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1051.end();
    render_pass_encoder1051.setIndexBuffer(buffer1020, "uint16");
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1002.drawIndirect(buffer1022, 0);
    render_pass_encoder1000.drawIndirect(buffer1022, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer1023, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.drawIndirect(buffer1042, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1000.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1041.drawIndirect(buffer1037, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.drawIndirect(buffer1017, 0);
    render_pass_encoder1002.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1070.drawIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1071.end();
    render_pass_encoder1001.end();
    render_pass_encoder1060.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1041.drawIndirect(buffer1021, 0);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1070.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1040.drawIndirect(buffer1028, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1041.drawIndirect(buffer1038, 0);
    render_pass_encoder1003.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1001.draw(3);
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1030.drawIndirect(buffer1043, 0);
    render_pass_encoder1060.drawIndirect(buffer1026, 0);
    render_pass_encoder1002.drawIndirect(buffer105, 0);
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1028, "uint16");
    const buffer20209 = device20.createBuffer({
        label: "buffer20209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20210 = device20.createBuffer({
        label: "buffer20210",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2070 = device20.createBindGroup({
        label: "bind_group2070",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20210,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2070);
    render_pass_encoder1071.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1021.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20211 = device20.createBuffer({
        label: "buffer20211",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20211, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20211, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1071.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1000.drawIndexed(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1038, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer1041, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1010.end();
    render_pass_encoder1071.drawIndirect(buffer100, 0);
    render_pass_encoder1002.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1022.drawIndirect(buffer1041, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1070.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1071.drawIndirect(buffer1032, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1071.end();
    render_pass_encoder1030.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1070.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    const buffer20212 = device20.createBuffer({
        label: "buffer20212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20213 = device20.createBuffer({
        label: "buffer20213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2071 = device20.createBindGroup({
        label: "bind_group2071",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20213,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2071);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder1071.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1044, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1070.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.draw(3);
    render_pass_encoder1070.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    const buffer20214 = device20.createBuffer({
        label: "buffer20214",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20215 = device20.createBuffer({
        label: "buffer20215",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2072 = device20.createBindGroup({
        label: "bind_group2072",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20214,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20215,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2072);
    render_pass_encoder1040.end();
    render_pass_encoder1041.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1022.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1000.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.drawIndirect(buffer106, 0);
    render_pass_encoder1003.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1051.drawIndirect(buffer1026, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.draw(3);
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1019, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20216 = device20.createBuffer({
        label: "buffer20216",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20216, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20216, 0);
    render_pass_encoder1022.draw(3);
    const buffer20217 = device20.createBuffer({
        label: "buffer20217",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20218 = device20.createBuffer({
        label: "buffer20218",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2073 = device20.createBindGroup({
        label: "bind_group2073",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20217,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20218,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2073);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1002.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([]);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndirect(buffer1028, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder1060.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1037, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder1070.setIndexBuffer(buffer1018, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1071.end();
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1016, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20219 = device20.createBuffer({
        label: "buffer20219",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20219, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20219, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1003.drawIndirect(buffer1027, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1070.drawIndirect(buffer1035, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    device10.queue.submit([command_buffer105, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20220 = device20.createBuffer({
        label: "buffer20220",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20220, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20220, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20221 = device20.createBuffer({
        label: "buffer20221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20221, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20221, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1013, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer1042, 0);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1016, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1041.drawIndirect(buffer108, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1070.drawIndexedIndirect(buffer1044, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20222 = device20.createBuffer({
        label: "buffer20222",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20222, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20222, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1071.drawIndirect(buffer108, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1022.drawIndirect(buffer1038, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1071.drawIndexedIndirect(buffer1038, 0);
    render_pass_encoder1011.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1022.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1041.drawIndexed(3);
    device10.queue.submit([command_buffer106, command_buffer107, ]);
    render_pass_encoder1051.setIndexBuffer(buffer1010, "uint16");
    device10.queue.submit([command_buffer102, command_buffer107, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1043, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1060.drawIndirect(buffer1023, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1022.end();
    render_pass_encoder1002.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1051.draw(3);
    render_pass_encoder1071.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1002.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndirect(buffer1015, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20223 = device20.createBuffer({
        label: "buffer20223",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20223, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20223, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1003.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1011.drawIndirect(buffer1010, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1050.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1002.draw(3);
    const buffer20224 = device20.createBuffer({
        label: "buffer20224",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20225 = device20.createBuffer({
        label: "buffer20225",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2074 = device20.createBindGroup({
        label: "bind_group2074",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20224,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20225,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2074);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1021.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1051.drawIndirect(buffer1042, 0);
    render_pass_encoder1041.draw(3);
    device10.queue.submit([command_buffer106, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1035, 0);
    render_pass_encoder1022.drawIndirect(buffer1028, 0);
    render_pass_encoder1022.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1071.draw(3);
    render_pass_encoder1002.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1002.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1022.end();
    render_pass_encoder1031.drawIndirect(buffer101, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1003.drawIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1070.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1003.end();
    compute_pass_encoder1070.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1003.drawIndirect(buffer105, 0);
    render_pass_encoder1031.drawIndirect(buffer1019, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1035, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer106, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1070.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1003.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1071.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1002.drawIndirect(buffer1011, 0);
    render_pass_encoder1020.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1044, 0);
    const buffer20226 = device20.createBuffer({
        label: "buffer20226",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20227 = device20.createBuffer({
        label: "buffer20227",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2075 = device20.createBindGroup({
        label: "bind_group2075",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20226,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20227,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2075);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1003.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1022.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1042, 0);
    render_pass_encoder1021.drawIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1045, 0);
    const buffer20228 = device20.createBuffer({
        label: "buffer20228",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20229 = device20.createBuffer({
        label: "buffer20229",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2076 = device20.createBindGroup({
        label: "bind_group2076",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20228,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20229,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2076);
    render_pass_encoder1002.drawIndirect(buffer108, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1016, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1060.drawIndirect(buffer109, 0);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1022.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1002.drawIndirect(buffer1024, 0);
    render_pass_encoder1031.drawIndirect(buffer109, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1021.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexed(3);
    compute_pass_encoder1070.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer1042, 0);
    render_pass_encoder1002.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1022.draw(3);
    render_pass_encoder1020.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1041.drawIndirect(buffer1029, 0);
    render_pass_encoder1060.drawIndirect(buffer1022, 0);
    render_pass_encoder1021.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.drawIndirect(buffer1037, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1060.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.drawIndirect(buffer109, 0);
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1003.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer20230 = device20.createBuffer({
        label: "buffer20230",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20230, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer20230, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1002.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1003.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1001.drawIndirect(buffer101, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1003.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1000.end();
    render_pass_encoder1022.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1071.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1002.end();
    render_pass_encoder1021.end();
    render_pass_encoder1002.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1071.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1071.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1041.drawIndirect(buffer1039, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1002.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.drawIndirect(buffer1033, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1070.drawIndirect(buffer1045, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1003.setIndexBuffer(buffer1036, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder1020.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer101, 0);
    render_pass_encoder1022.drawIndirect(buffer1045, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1070.drawIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1039, 0);
    const buffer20231 = device20.createBuffer({
        label: "buffer20231",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20232 = device20.createBuffer({
        label: "buffer20232",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2077 = device20.createBindGroup({
        label: "bind_group2077",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20231,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20232,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2077);
    render_pass_encoder1003.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndirect(buffer1033, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1043, 0);
    render_pass_encoder1002.end();
    render_pass_encoder1051.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1002.drawIndexed(3);
    render_pass_encoder1002.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1001.draw(3);
    render_pass_encoder1071.drawIndirect(buffer1028, 0);
    render_pass_encoder1003.drawIndirect(buffer109, 0);
    render_pass_encoder1002.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1030.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1070.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1050.drawIndirect(buffer1017, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1002.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1071.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1003.drawIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer103, command_buffer107, ]);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1040.draw(3);
    render_pass_encoder1031.drawIndirect(buffer1037, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20233 = device20.createBuffer({
        label: "buffer20233",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20233, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20233, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1003.drawIndirect(buffer1044, 0);
    render_pass_encoder1020.drawIndirect(buffer1039, 0);
    render_pass_encoder1022.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1002.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1045, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1071.end();
    render_pass_encoder1060.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1014, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1002.drawIndirect(buffer1045, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1001.end();
    render_pass_encoder1071.end();
    render_pass_encoder1071.end();
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1031.end();
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder1030.drawIndirect(buffer1034, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1035, 0);
    render_pass_encoder1003.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1051.end();
    compute_pass_encoder2020.end();
    render_pass_encoder1021.drawIndirect(buffer102, 0);
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1002.end();
    render_pass_encoder1011.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1001.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer101, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1003.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1060.end();
    render_pass_encoder1070.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1021, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1022.drawIndirect(buffer1020, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1070.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder1041.draw(3);
    render_pass_encoder1001.drawIndirect(buffer1038, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1070.drawIndirect(buffer1041, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer103, 0);
}