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
    const array0 = new Float32Array([0.25, -1.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.25, 0.75, -0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 1.0, -0.25, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, -0.75, -0.25, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.75, -0.75, 0.0, -0.5, 0.5, -0.5, -0.75, 0.0, 0.75, -0.5, 1.0, 0.25, 0.5, -0.25, -0.75, 0.0, 0.0, 0.5, 0.75, 0.75, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.75, 1.0, -1.0, -0.5, -1.0, -1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.25, ]);
    
    const array1 = new Float32Array([-0.25, 1.0, 0.0, 0.25, 0.5, 0.75, 1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 0.25, 1.0, 1.0, 0.75, 0.5, -0.75, -0.5, -0.5, 0.25, 1.0, -0.25, -0.25, 0.5, 0.75, -1.0, 0.75, 0.75, 0.5, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, -0.25, 1.0, 1.0, -0.5, -0.25, -0.75, -0.75, 0.25, -0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 0.0, 0.75, 0.25, 1.0, 0.5, 0.5, 0.0, 0.75, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, -0.25, 0.75, -0.25, -0.25, 0.25, -1.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, -1.0, -0.75, -0.75, 0.25, 0.75, -0.25, -0.25, -0.5, 0.75, 0.0, 0.25, 0.25, -0.5, -0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.75, 0.5, -0.5, -0.5, -0.5, -0.75, 0.5, 0.0, -0.5, 0.5, 0.5, -0.5, 0.25, -0.5, -0.25, 0.5, -0.75, 1.0, 1.0, -0.75, 1.0, 0.75, -1.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.25, -1.0, -0.75, 0.5, -1.0, 0.5, -1.0, -0.25, -0.25, 0.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.5, -0.5, 0.5, -1.0, -0.25, 0.25, -0.75, 0.5, -1.0, -1.0, 0.25, 1.0, -0.75, 0.5, 0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 0.25, -0.75, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 0.5, -0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.0, 0.25, 1.0, -0.25, 0.0, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([-0.5, 0.75, -1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.5, 0.5, -0.5, 1.0, -0.5, 0.25, 0.0, 0.5, 1.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 0.0, -1.0, -1.0, -0.25, -1.0, 0.75, 0.5, -0.75, -1.0, -1.0, -0.5, 0.25, 1.0, 0.5, 0.25, 0.5, -0.5, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -0.5, -1.0, -1.0, 1.0, 0.0, -0.75, 0.25, 0.0, -0.25, -1.0, 0.5, 0.75, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, 1.0, -0.25, 0.75, 0.0, -0.25, -0.25, 0.25, 0.0, -0.25, 0.75, -0.25, 0.0, 0.25, -0.25, 0.25, -0.25, 0.0, -0.5, -1.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.5, -1.0, -1.0, -1.0, 0.5, ]);
    
    
    
    const array4 = new Float32Array([0.25, -0.5, 0.25, -0.5, -0.25, 0.25, -0.75, 0.5, -1.0, -0.5, -0.75, -0.75, -0.25, 1.0, -1.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.5, -0.25, -0.25, -0.25, -0.25, -0.25, -0.5, -0.75, 0.75, -0.25, -0.25, -0.5, -1.0, 0.0, -1.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.25, 0.25, 0.0, -0.75, 0.75, 0.5, 1.0, 0.0, 1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.75, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.0, 0.25, -0.75, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.75, 0.0, -0.75, -0.25, 0.75, 0.25, 1.0, 0.0, -1.0, -0.25, 0.75, 1.0, -1.0, 0.5, 1.0, -0.25, -0.25, -1.0, 0.25, -0.5, -0.5, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer100.destroy()
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
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer200.destroy()
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const array5 = new Float32Array([0.75, 0.25, 0.0, 1.0, 0.75, -0.25, 0.75, 0.25, 0.0, 0.0, -1.0, 0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, 1.0, 1.0, -0.75, 1.0, 1.0, -1.0, -0.75, 0.0, 0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.25, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 0.0, 0.75, 0.0, 0.75, 0.75, -0.5, 0.5, 0.25, -0.5, 0.75, -0.75, -0.25, 0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.75, 0.25, -1.0, 1.0, 0.0, 1.0, -0.25, 0.5, 0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 1.0, -0.5, 1.0, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, -0.75, 1.0, 0.75, -1.0, 0.75, 0.25, 0.0, 0.75, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    render_bundle_encoder201.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.pushErrorScope("validation");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 1.0, -1.0, -0.5, 1.0, 0.5, 1.0, 1.0, 0.0, 0.5, -1.0, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.25, 1.0, -1.0, 0.25, -0.75, 1.0, -1.0, -0.5, -0.25, -1.0, -1.0, -0.5, 1.0, -0.25, -0.25, 0.25, 0.5, -0.75, 0.75, 0.25, -1.0, 0.25, 0.5, -0.5, -0.75, -0.5, 0.5, 1.0, 0.0, 0.0, -0.25, -1.0, -0.25, -0.75, 1.0, 0.0, -1.0, 0.25, 0.5, 0.0, 0.5, -0.75, -1.0, -1.0, 0.75, -1.0, 0.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.5, 0.5, 1.0, -0.75, -0.5, 1.0, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, 0.75, -0.25, -1.0, 0.0, -0.75, 0.75, -1.0, -0.25, -0.25, -0.75, 0.25, -0.75, 0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_bundle_encoder400.popDebugGroup();
    device40.pushErrorScope("internal");
    
    compute_pass_encoder4000.popDebugGroup()
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device40.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    command_encoder401.clearBuffer(buffer400);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    buffer401.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array7 = new Float32Array([0.75, 0.25, 1.0, -1.0, 0.25, 0.5, -0.25, -0.75, 0.5, 1.0, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, -1.0, 0.75, 0.25, -0.75, -0.5, 0.5, 0.25, 1.0, -0.75, 0.25, -0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.75, -1.0, -0.5, 1.0, -1.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 0.75, -0.25, -0.75, -0.25, 0.5, 0.0, 0.5, 0.0, 0.75, 0.0, 0.5, 0.0, -1.0, 1.0, 0.5, 0.25, -0.5, 0.25, 1.0, -1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.25, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.25, -0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.0, -0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.25, 1.0, ]);
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer500 = command_encoder500.finish();
    render_bundle_encoder400.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    command_encoder401.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder402.clearBuffer(buffer400);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    buffer500.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    
    buffer501.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    render_bundle_encoder501.popDebugGroup();
    
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder400.popDebugGroup();
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    command_encoder402.popDebugGroup()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    compute_pass_encoder4000.popDebugGroup()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    query400.destroy()
    
    
    device50.queue.submit([command_buffer500, ]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    compute_pass_encoder4010.popDebugGroup()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    
    
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture400.destroy();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    texture501.destroy();
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module406,
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
            module: shader_module406,
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
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    texture500.destroy();
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    buffer400.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    render_pass_encoder4020.popDebugGroup();
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer405, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer405, 0);
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query400.destroy()
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    buffer404.destroy()
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer405, 0, array5, 0, array5.length);
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer408, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer408, 0);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query701.destroy()
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer405.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device40.queue.writeBuffer(buffer408, 0, array3, 0, array3.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder4020.setStencilReference(1);
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const command_buffer700 = command_encoder700.finish();
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer409, 0, array1, 0, array1.length);
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    device40.queue.writeBuffer(buffer409, 0, array0, 0, array0.length);
    compute_pass_encoder4010.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder700.setPipeline(render_pipeline701);
    device40.queue.writeBuffer(buffer409, 0, array1, 0, array1.length);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    
    
    buffer503.destroy()
    const array8 = new Float32Array([-1.0, 0.25, 0.75, 0.5, 0.5, -0.75, -0.5, -0.75, 0.5, 0.25, -1.0, -0.75, -1.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, -0.25, 0.75, -0.75, -1.0, -0.5, 1.0, 0.5, -0.5, 1.0, 0.0, -0.25, -0.25, 0.25, 0.5, 0.5, -1.0, 0.25, -0.75, 0.0, -0.25, -0.75, 0.25, 0.0, -0.75, 0.5, 0.75, 0.75, -1.0, -1.0, -0.75, -0.5, 0.25, -0.5, 0.0, 0.0, -0.75, -0.75, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -1.0, -1.0, 0.5, 0.25, -0.75, 0.0, -0.75, -0.75, -0.5, -0.75, 0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, 0.75, 0.75, -0.5, -0.5, -0.5, ]);
    
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    buffer502.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device80.pushErrorScope("out-of-memory");
    render_pass_encoder4020.setPipeline(render_pipeline400);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    texture503.destroy();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer409, 0, array1, 0, array1.length);
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    device70.queue.submit([command_buffer700, ]);
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder800.popDebugGroup();
    device80.pushErrorScope("out-of-memory");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    query700.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    device40.queue.writeBuffer(buffer408, 0, array7, 0, array7.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer408, 0, array2, 0, array2.length);
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    render_bundle_encoder502.insertDebugMarker("marker");
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer409.destroy()
    
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder700.setVertexBuffer(0, buffer703);
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer408, 0, array8, 0, array8.length);
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder402.setPipeline(render_pipeline405);
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder401.setPipeline(render_pipeline404);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const array9 = new Float32Array([0.5, 0.5, 0.25, 0.0, 0.0, 0.75, 0.25, -1.0, 1.0, 0.0, -0.75, 0.0, -0.75, 0.75, 1.0, 1.0, -0.75, -0.5, -1.0, 0.0, 0.0, -0.25, 1.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.25, -0.25, 0.5, 1.0, -0.25, -0.75, -0.25, 0.75, 0.0, -0.5, 0.0, -0.75, 0.25, -0.5, -1.0, -0.75, 0.25, 0.5, -0.75, 0.5, -1.0, 1.0, 0.0, 0.75, -0.75, -0.5, -0.25, -1.0, -0.75, -0.25, -1.0, -0.75, 0.5, -0.75, 1.0, 0.5, -0.25, 0.5, -0.25, 0.5, 1.0, 1.0, 0.5, 0.5, -0.5, 0.75, 0.75, 0.5, 0.0, 0.5, 0.25, -0.5, 0.75, 0.5, 1.0, -1.0, -1.0, ]);
    device40.queue.writeBuffer(buffer408, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer408, 0, array6, 0, array6.length);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    buffer506.destroy()
    buffer403.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder701.setPipeline(render_pipeline702);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device40.pushErrorScope("internal");
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer505.destroy()
    device50.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer408, 0, array9, 0, array9.length);
    compute_pass_encoder4010.popDebugGroup()
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    
    buffer408.destroy()
    buffer407.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder702.setPipeline(render_pipeline702);
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    
    texture700.destroy();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer4010.destroy()
    buffer702.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    buffer703.destroy()
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    {
        await buffer4012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer4012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer4012.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer4012, 0, array5, 0, array5.length);
    render_pass_encoder4030.setPipeline(render_pipeline406);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group403);
    render_pass_encoder4020.popDebugGroup();
    compute_pass_encoder4010.end();
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.setVertexBuffer(0, buffer4013);
    command_encoder401.popDebugGroup()
    render_pass_encoder4030.drawIndirect(buffer408, 0);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.end();
    compute_pass_encoder4000.end();
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group404);
    const command_buffer401 = command_encoder401.finish();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4020.setVertexBuffer(0, buffer4013);
    render_pass_encoder4020.drawIndirect(buffer402, 0);
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer403, ]);
    render_pass_encoder4020.end();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
}