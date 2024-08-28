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
    const array0 = new Float32Array([-0.75, -1.0, 0.0, -1.0, 0.75, 0.0, 0.0, -0.75, -0.75, -0.5, 0.25, -1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.5, -0.75, 0.25, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, -0.25, 1.0, -0.5, -0.75, -0.25, 0.0, -1.0, -1.0, -1.0, -0.75, 0.25, -0.75, -0.5, 0.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.25, -1.0, 0.0, -0.5, 0.5, 0.0, -0.25, -0.75, -0.25, -0.25, -0.75, 0.5, -0.25, 0.75, 1.0, -0.75, 0.5, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, -0.5, 0.5, -0.5, 0.0, 0.75, -0.75, 0.0, 0.0, 0.75, 0.0, -1.0, -0.5, -1.0, -0.25, 0.75, -0.5, -1.0, 0.75, 0.25, -0.25, 0.5, 0.25, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, ]);
    
    const array1 = new Float32Array([1.0, -0.75, -0.5, 0.75, 0.0, -0.75, 0.25, -0.25, 0.5, -1.0, 1.0, 1.0, 0.25, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, 1.0, 1.0, -0.75, -0.5, -1.0, -1.0, -0.25, -0.5, 0.25, 0.0, 0.5, -0.75, 0.25, -0.25, 0.5, -0.5, 0.75, -0.25, 0.75, 0.5, 0.75, -1.0, 0.25, 0.0, -0.75, 0.0, 0.5, 0.0, 0.25, -0.5, 0.5, -0.25, 0.75, 0.25, -0.5, 0.0, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, 1.0, 0.75, 0.75, -0.75, 1.0, -0.25, -0.5, -0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.5, -0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 0.0, 0.0, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, -1.0, 0.25, 0.5, 0.5, 0.5, -0.25, -0.5, -0.75, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.75, 0.25, 0.5, 0.0, 0.25, 0.5, 1.0, -0.5, -0.75, -0.75, 0.0, 1.0, 0.5, -0.25, 0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.75, 0.5, -0.5, -0.75, 0.75, 0.0, 0.0, -0.5, 0.5, -0.75, -0.5, 0.75, -0.5, -0.25, 0.0, 0.25, -0.5, 0.25, -0.75, -0.25, -0.75, 1.0, 0.5, -0.75, -0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.25, 1.0, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, 0.0, -0.25, -0.25, -0.25, -0.75, 0.75, 0.25, 0.25, 1.0, -0.75, -1.0, -0.75, 0.0, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, -0.75, 0.75, -0.5, 0.0, -0.75, -1.0, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, 0.75, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.popDebugGroup();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    texture000.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    command_encoder001.popDebugGroup()
    const array3 = new Float32Array([-0.5, -0.5, -0.25, 0.5, -1.0, 0.0, -0.5, 0.75, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -0.25, -0.25, -0.25, 0.75, 0.0, -0.75, 1.0, -1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.75, 0.0, 0.75, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, -0.5, -0.75, -0.5, 0.25, 0.0, 0.25, 1.0, -0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.0, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, -0.75, 0.0, -0.5, 0.75, 1.0, -0.5, 1.0, -0.5, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.25, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, 1.0, -1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.5, 0.25, -1.0, 0.5, 0.25, -0.5, 0.75, 0.75, ]);
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    texture001.destroy();
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.5, 1.0, 0.25, 0.75, -0.25, 1.0, 0.25, -1.0, -0.25, 0.5, -0.25, -0.5, 0.25, 0.5, -0.25, -0.25, 1.0, 0.5, -0.5, 0.25, 1.0, 0.25, 0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, -0.5, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, -0.25, -1.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -0.25, -0.25, 1.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 0.75, -0.5, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -0.5, -0.25, -0.5, 0.5, -0.75, -0.25, 1.0, 0.5, -0.25, -0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.75, 0.0, ]);
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query000.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0000.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    
    query002.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0000.setPipeline(render_pipeline002);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0010.setPipeline(render_pipeline003);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.pushErrorScope("validation");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array5 = new Float32Array([-0.75, -1.0, 1.0, 1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 0.0, 1.0, 0.25, 0.75, -0.75, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, -0.5, -0.75, -0.25, 0.5, -0.5, 0.75, 1.0, -0.75, -0.5, 1.0, 0.25, 0.75, -0.25, -1.0, -1.0, 0.5, 1.0, -0.25, 0.5, 1.0, -0.25, 0.75, 0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, 0.75, 1.0, 0.75, 0.25, 0.75, -0.5, 0.75, 0.0, 0.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 0.5, -0.5, -1.0, 0.5, 0.25, -1.0, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, -1.0, 0.5, -1.0, -0.25, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0010.setStencilReference(1);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline004);
    device10.destroy();
    
    query201.destroy()
    
    
    render_pass_encoder0010.popDebugGroup();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_pass_encoder0000.insertDebugMarker("marker");
    buffer001.destroy()
    
    
    query002.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    texture400.destroy();
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.insertDebugMarker("marker");
    query400.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer004.destroy()
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    device20.destroy();
    
    buffer002.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    device40.pushErrorScope("out-of-memory");
    
    
    buffer000.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query002.destroy()
    
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    query300.destroy()
    render_bundle_encoder000.popDebugGroup();
    query300.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    render_pass_encoder0020.setPipeline(render_pipeline004);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    query302.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.pushErrorScope("validation");
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer003.destroy()
    
    device30.destroy();
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.25, 0.25, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -0.75, 0.0, 0.0, -0.5, -0.25, 0.75, -1.0, 0.5, 1.0, 1.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.25, -1.0, 1.0, 0.75, -1.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 1.0, -1.0, -0.75, 1.0, 0.0, 0.5, -0.75, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, -0.5, -1.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.5, 0.25, 0.0, -0.75, -0.5, -0.75, 0.0, -0.75, 0.5, 0.75, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.5, -0.5, -0.25, 0.0, -1.0, 0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.75, -0.25, ]);
    
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    
    
    query000.destroy()
    render_pass_encoder0010.popDebugGroup();
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    query002.destroy()
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    texture401.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    buffer400.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
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
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder002.popDebugGroup();
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    
    
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    const array7 = new Float32Array([0.75, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, -0.25, -0.5, 0.0, 0.5, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.75, -0.25, -0.5, -1.0, -1.0, 0.75, -0.5, -0.5, 1.0, 0.75, -0.75, -1.0, 0.75, 0.75, -0.5, 0.25, -0.25, -1.0, 0.5, 1.0, 0.5, 0.75, 1.0, 0.25, -0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, 0.25, 0.25, 0.5, 0.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, -1.0, 0.0, 0.5, -0.25, -1.0, 0.0, -0.75, -1.0, -0.75, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 1.0, -0.75, -1.0, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, -0.5, 0.25, -0.5, 0.25, -0.5, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture002.destroy();
    
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0000.setStencilReference(1);
    command_encoder004.insertDebugMarker("mymarker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    query001.destroy()
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    buffer007.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline002);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    command_encoder402.insertDebugMarker("mymarker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setStencilReference(1);
    query401.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    
    render_pass_encoder0050.setPipeline(render_pipeline005);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group004);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
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
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer0010.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0030.insertDebugMarker("marker");
    
    
    buffer006.destroy()
    render_pass_encoder0030.popDebugGroup();
    
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    buffer402.destroy()
    render_pass_encoder0050.setStencilReference(1);
    
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query001.destroy()
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    command_encoder401.popDebugGroup()
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    
    
    
    
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([-0.25, 1.0, -0.75, 0.5, 0.5, -1.0, 0.5, 0.75, -0.5, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 1.0, 0.75, 0.25, -1.0, 0.5, 1.0, 1.0, 0.5, -0.75, 0.5, -1.0, -1.0, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, -1.0, 0.0, 1.0, 0.75, -0.25, -0.5, -1.0, 1.0, -1.0, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.25, 0.75, 0.75, 0.5, -0.25, 0.25, -0.25, 0.5, -1.0, 1.0, 0.25, 0.75, -0.75, 0.25, 1.0, 0.0, 1.0, -0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, -0.75, -1.0, -0.25, -0.25, 0.0, 0.5, 0.5, -0.25, 0.75, 0.25, 0.25, 0.5, 0.0, 0.25, ]);
    compute_pass_encoder4020.setPipeline(compute_pipeline402);
    
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer401.destroy()
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    buffer008.destroy()
    
    
    
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    texture402.destroy();
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.setPipeline(render_pipeline403);
    render_pass_encoder0040.popDebugGroup();
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
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline403.getBindGroupLayout(0),
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

    render_pass_encoder4010.setBindGroup(0, bind_group402);
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
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group007);
    render_pass_encoder0010.popDebugGroup();
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0020.popDebugGroup();
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    compute_pass_encoder4000.popDebugGroup()
    const uint32_4020 = new Uint32Array(3);

    uint32_4020[0] = 100;
    uint32_4020[1] = 1;
    uint32_4020[2] = 1;

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4011, 0, uint32_4020, 0, uint32_4020.length);

    compute_pass_encoder4020.dispatchWorkgroupsIndirect(buffer4011, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder4020.end();
    compute_pass_encoder4000.end();
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    command_encoder400.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
}