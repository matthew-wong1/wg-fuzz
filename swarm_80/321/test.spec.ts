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
    
    const array0 = new Float32Array([0.0, -1.0, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, -0.75, 0.75, -0.25, 0.25, -1.0, -0.5, 0.0, 0.0, -1.0, 0.75, -1.0, 0.5, -1.0, 0.5, -0.25, 1.0, 1.0, 0.25, 0.75, -0.75, -1.0, 0.25, -0.75, -1.0, 1.0, 0.0, 0.5, 0.5, -1.0, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.75, 0.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.5, -0.5, -1.0, -1.0, -1.0, -0.75, 1.0, 0.25, -0.75, 0.75, 0.25, 0.25, -0.25, 0.25, -1.0, -0.25, 0.25, 0.25, 0.5, -0.5, 1.0, 0.75, 0.0, -1.0, 0.0, 0.5, -0.5, 0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 0.0, 0.75, 0.5, 0.0, 0.0, -0.5, 0.5, 0.25, -1.0, 0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.5, -0.25, -1.0, -0.5, -0.75, 0.25, 0.5, 0.0, 0.25, -0.25, 0.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.5, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.5, -0.25, -1.0, 1.0, -1.0, 0.75, 0.5, 0.5, -1.0, -0.75, -0.5, -1.0, 0.5, -1.0, 0.5, 0.5, -0.75, 1.0, 0.5, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 1.0, 0.5, 1.0, 0.5, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, 1.0, 1.0, -0.25, -1.0, 1.0, -0.25, 0.25, -0.75, -0.25, ]);
    const array2 = new Float32Array([-1.0, 0.5, -0.25, -1.0, 0.5, -0.5, 0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 0.75, 0.25, 0.25, -0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.0, -1.0, -0.75, -0.25, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, -1.0, -1.0, -0.75, -0.75, 0.5, -0.75, 0.0, 0.75, -0.25, 0.25, 0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 0.0, 0.5, -1.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.25, 0.0, -1.0, -0.75, 1.0, -0.75, -0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.5, 0.25, 1.0, 0.5, -0.25, 0.0, -0.5, 0.75, 0.0, 1.0, -1.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 0.25, -0.75, 0.75, -1.0, 0.5, 1.0, 1.0, ]);
    const array3 = new Float32Array([0.5, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 0.25, -0.25, -1.0, 1.0, -0.75, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, -0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -1.0, 1.0, 0.75, -0.75, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 1.0, 0.0, -0.5, -0.25, -0.25, 1.0, 0.25, -0.75, 0.75, 0.0, -0.5, 0.0, 0.0, 0.75, -1.0, 1.0, -0.75, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.25, 0.5, -0.5, ]);
    const array4 = new Float32Array([0.25, -0.5, -0.25, 1.0, 0.25, 0.0, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 0.25, -0.75, 1.0, 0.25, -0.5, -0.25, -0.25, -0.25, -1.0, -0.5, 0.25, 0.0, 0.5, -0.25, -1.0, -1.0, -0.5, 1.0, 0.25, 0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -0.5, -0.5, 0.75, 1.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.25, 0.25, -0.75, -0.5, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, 1.0, -0.75, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, -0.5, -0.75, -0.25, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, -1.0, 0.0, 0.0, -0.25, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const array5 = new Float32Array([0.0, 0.0, 1.0, -0.75, 0.25, -1.0, -0.75, 1.0, -0.5, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.0, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 0.75, 1.0, 0.75, -0.5, 0.0, 1.0, -0.75, 0.5, -0.75, 0.75, -1.0, 0.25, 1.0, 0.0, -1.0, -0.75, 0.0, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, 0.75, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, 1.0, -0.75, -0.25, 1.0, -0.25, 0.75, -0.25, -0.5, -0.75, 1.0, -0.25, -1.0, -0.5, -0.75, 1.0, 1.0, -1.0, 0.25, -0.25, -1.0, -0.75, 0.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.75, 0.0, 0.5, 0.25, 0.0, 0.25, -1.0, -0.75, -0.25, ]);
    query101.destroy()
    device10.pushErrorScope("out-of-memory");
    command_encoder100.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer100 = command_encoder100.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer100.destroy()
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.75, 0.5, 0.25, 0.75, 1.0, -1.0, 1.0, -0.5, 0.25, 1.0, 0.0, 0.75, -0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.25, 0.5, 0.0, 1.0, -0.75, 1.0, 1.0, -0.25, -1.0, -0.75, 0.25, -0.75, 0.25, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 1.0, -0.5, 1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.0, 1.0, 0.5, -1.0, 0.0, -0.75, -0.75, 0.0, -0.25, -0.75, 0.5, -0.25, -0.5, -1.0, -0.25, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.25, 0.0, 0.75, -1.0, 1.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 1.0, -1.0, -0.25, 0.5, 0.5, 0.5, 1.0, ]);
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    device40.destroy();
    
    buffer200.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1010.executeBundles([])
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder1010.setStencilReference(1);
    
    device20.destroy();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    command_encoder300.insertDebugMarker("mymarker");
    
    query300.destroy()
    
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer300.destroy()
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query101.destroy()
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query301.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const array7 = new Float32Array([-0.25, -0.75, -1.0, -0.5, 1.0, -0.5, 0.75, 0.75, 1.0, -0.5, 0.75, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 0.25, 0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, -0.25, 1.0, 0.75, -0.75, 0.75, 1.0, -0.5, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -0.25, -1.0, -1.0, 0.25, -1.0, 0.75, 1.0, -0.75, 0.25, 0.75, -1.0, -0.25, 0.25, 0.5, 0.25, 1.0, 0.75, -0.25, 0.75, -0.25, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, -0.5, -0.75, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, 0.0, -0.25, -0.75, 0.75, 0.25, 0.25, -0.5, ]);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.executeBundles([])
    
    
    
    query301.destroy()
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    command_encoder300.popDebugGroup()
    
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const array8 = new Float32Array([0.0, 0.0, -0.5, 1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.25, -0.75, 1.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 0.0, 0.0, -0.75, 0.5, -1.0, 0.5, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, -0.25, 0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, -1.0, -0.25, 0.75, 0.75, 0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -1.0, -0.75, 0.75, -0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -0.75, 0.25, 0.25, 1.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, -0.25, 0.0, -1.0, 0.0, 0.5, -0.75, 1.0, -0.25, -0.5, ]);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device30.pushErrorScope("validation");
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    query100.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    device50.destroy();
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
        occlusionQuerySet: query102
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    query101.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer102.destroy()
    
    device10.pushErrorScope("out-of-memory");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3000.setStencilReference(1);
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    buffer101.destroy()
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    render_pass_encoder3030.setStencilReference(1);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3010.executeBundles([])
    
    query300.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3020.setStencilReference(1);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    query100.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder3030.executeBundles([])
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array9 = new Float32Array([0.0, -0.75, -0.75, -0.75, -0.5, -0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.25, 0.25, 0.5, 0.25, -1.0, 0.75, 0.5, -0.5, -0.25, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, -0.75, 0.0, 0.75, 0.5, 1.0, 0.5, 0.25, -0.75, 0.5, -0.5, 0.0, -1.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 1.0, 0.75, -0.75, 0.25, 0.25, -1.0, 0.25, -0.5, -1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, -0.5, -0.75, -0.75, 0.25, -0.75, -0.5, -1.0, 1.0, -1.0, 1.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.25, -0.75, 0.25, 0.0, 0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.75, 1.0, 0.75, 0.25, 0.5, 0.0, 0.0, -0.5, 0.0, ]);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    buffer301.destroy()
    render_bundle_encoder100.popDebugGroup();
    const array10 = new Float32Array([-0.25, -0.5, 0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -0.25, 0.5, -0.75, 0.5, -0.5, 0.25, -1.0, -1.0, 0.0, -0.25, -1.0, 0.25, -0.75, 0.0, 0.0, 0.0, -0.25, -1.0, 0.5, 0.75, 0.25, -1.0, -1.0, -0.5, 1.0, -0.25, 0.25, 0.0, 1.0, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 0.75, 1.0, 0.25, 0.5, 0.75, -1.0, 1.0, 0.0, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, 0.25, -0.5, -0.75, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, 0.25, -0.75, 0.5, -0.25, -1.0, 0.75, 1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -0.25, -1.0, -0.25, -0.5, 0.75, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setStencilReference(1);
    const texture_view3014 = texture301.createView({ label: "texture_view3014" });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const array11 = new Float32Array([0.75, 0.5, -0.75, -0.75, 0.5, 0.75, -0.5, -0.5, 0.5, 0.75, 1.0, -0.25, -0.5, -0.75, -0.25, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, -0.75, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 0.5, 0.75, 0.5, -0.5, -0.25, -0.75, -0.75, 0.5, 0.0, 0.75, -0.5, 1.0, 0.25, -0.75, 0.5, 0.25, 0.25, -0.25, -0.5, -0.25, -0.25, -1.0, 0.5, 1.0, 0.5, 0.25, -0.75, 0.25, 1.0, -0.25, -1.0, 0.0, -0.75, 0.5, -0.5, -1.0, 0.0, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, 1.0, -0.5, -0.25, 0.0, -0.5, -1.0, 0.75, -0.75, -1.0, 1.0, 0.75, 0.25, -1.0, -0.75, 0.75, 0.25, 0.75, -0.5, 0.0, -0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.75, 0.5, ]);
    const array12 = new Float32Array([-1.0, -1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.75, 0.0, 1.0, -1.0, -0.25, 0.5, -0.75, 1.0, 0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, 0.25, 1.0, 1.0, -0.25, -0.25, -0.5, 0.5, -1.0, -0.75, 0.25, -1.0, 1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.75, 0.25, 0.25, 0.0, -0.5, 1.0, -1.0, -1.0, -0.5, 0.25, 0.5, 0.5, -1.0, -0.75, 0.75, 0.0, 0.75, 0.75, 0.0, -0.25, -1.0, -1.0, -0.5, 1.0, -0.25, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, 0.75, -0.25, 0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, 1.0, -1.0, 0.25, 0.25, -1.0, -0.25, 0.5, ]);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query102.destroy()
    
    const texture_view3015 = texture301.createView({ label: "texture_view3015" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        occlusionQuerySet: query100
    });
    
    device10.pushErrorScope("validation");
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.insertDebugMarker("marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view3043 = texture304.createView({ label: "texture_view3043" });
    render_bundle_encoder101.popDebugGroup();
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3020.executeBundles([])
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder3010.executeBundles([])
    
    render_pass_encoder1040.setStencilReference(1);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder301.popDebugGroup();
    const texture_view3016 = texture301.createView({ label: "texture_view3016" });
    
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.executeBundles([])
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3016,
            },
        ],
        occlusionQuerySet: query302
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3016,
            },
        ],
        occlusionQuerySet: query302
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder1040.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer103.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder3030.setStencilReference(1);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder1030.setStencilReference(1);
    
    
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder1040.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    render_pass_encoder3000.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    query302.destroy()
    render_pass_encoder3040.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query102.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    render_pass_encoder3050.insertDebugMarker("marker");
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder3040.setStencilReference(1);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array13 = new Float32Array([0.5, -0.25, -1.0, 0.75, 0.5, 0.5, -0.5, -0.5, -0.25, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, 0.5, -0.5, -0.25, 0.25, -0.5, 1.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.75, -1.0, 0.25, 0.0, 0.25, -0.25, 1.0, -0.5, -1.0, 0.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -0.75, 0.5, -0.75, 0.0, -1.0, 0.25, 1.0, 0.0, 0.0, -0.75, 1.0, -0.5, 0.0, 0.75, -0.75, -1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.75, 0.5, -0.75, 1.0, -1.0, 1.0, -1.0, -1.0, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, 0.25, 0.75, 0.5, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, 0.5, -0.25, -0.5, 1.0, -0.5, -0.75, 0.5, 0.25, -0.75, 1.0, 0.5, ]);
    render_pass_encoder3020.executeBundles([])
    
    render_pass_encoder3030.insertDebugMarker("marker");
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    buffer104.destroy()
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3000.insertDebugMarker("marker");
    device60.destroy();
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    
    const command_buffer306 = command_encoder306.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}