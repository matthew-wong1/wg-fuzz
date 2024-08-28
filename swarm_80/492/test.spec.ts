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
    
    const array0 = new Float32Array([-0.5, -1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, -1.0, -0.75, -1.0, 1.0, -1.0, 0.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.75, -0.5, -0.5, 0.0, 0.75, 0.5, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, 0.5, -0.75, 0.5, 0.75, 0.0, 0.5, -0.75, -1.0, -1.0, -1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.0, 0.0, -1.0, 0.25, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 0.25, -1.0, 1.0, -1.0, 0.75, 1.0, -0.5, 0.5, -0.5, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, 1.0, 1.0, -0.5, 0.25, -0.25, 0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.25, ]);
    const array1 = new Float32Array([0.5, 0.25, 0.0, 0.75, -0.5, 0.25, 0.0, 0.25, -0.25, -1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.5, 0.25, 1.0, -0.75, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.25, 0.0, 1.0, 0.0, -0.75, -0.5, 0.5, -0.75, -1.0, -0.75, 0.25, -0.5, 0.25, 1.0, 0.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 0.5, -0.75, -0.25, -0.5, 0.5, -0.5, -0.75, -1.0, 0.25, -0.25, -0.25, -1.0, 1.0, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, 0.0, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 0.75, 0.0, -0.25, -1.0, 1.0, 0.0, 0.25, 1.0, 0.0, -1.0, -0.25, -0.25, -0.75, ]);
    const array2 = new Float32Array([-1.0, 0.5, -0.5, 1.0, 1.0, -0.75, -0.75, 0.25, -0.5, 0.0, -0.25, -0.75, -0.5, 0.25, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.75, -0.25, 1.0, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 1.0, 0.75, 0.5, 0.25, -1.0, -1.0, -1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.25, -1.0, 0.75, 0.0, 0.5, 0.25, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.75, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, -0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 0.75, 0.5, 0.75, 0.5, 0.25, -0.75, 0.0, 0.0, -0.5, 0.25, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, 0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
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
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device10.destroy();
    
    query000.destroy()
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
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
    texture000.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
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
    
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    device00.pushErrorScope("internal");
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture001.destroy();
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    query002.destroy()
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
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
    texture300.destroy();
    
    query003.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query003.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query001.destroy()
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    texture003.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query301.destroy()
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    device20.pushErrorScope("internal");
    query301.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query200.destroy()
    query301.destroy()
    texture002.destroy();
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    query001.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture004.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query003.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    device00.destroy();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    
    query200.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.pushErrorScope("out-of-memory");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([0.25, 0.0, -0.75, 0.75, -0.25, 0.75, 0.0, 1.0, 1.0, -1.0, -0.25, -1.0, 0.0, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.0, -1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, 0.75, 0.75, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, 0.75, 1.0, 0.25, -1.0, 0.25, 0.0, 1.0, -0.25, -0.25, -0.25, -0.5, -1.0, -1.0, 0.75, 0.25, -1.0, 0.75, 0.0, 0.5, 1.0, 0.25, 0.5, 0.75, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 0.75, -0.5, -0.5, -0.25, 0.5, 1.0, -0.25, 0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 0.75, 0.0, 0.25, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, 0.75, -1.0, -0.5, -0.5, 1.0, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("out-of-memory");
    device80.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array4 = new Float32Array([-0.75, 0.5, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -0.75, 0.25, 0.5, -0.25, 0.25, 1.0, -1.0, -1.0, 0.0, 1.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.5, 0.75, -0.5, 0.75, 0.0, 0.5, 0.75, 0.0, 0.75, 0.5, -0.25, 0.75, 1.0, -0.5, 0.25, -1.0, 0.75, -0.75, -0.25, 0.25, 0.0, -1.0, -0.75, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, -1.0, -0.25, -1.0, -0.75, 0.75, 1.0, -0.25, -0.75, 0.0, -0.5, 0.5, 0.0, 0.25, 1.0, 0.5, 1.0, 1.0, 0.0, -0.5, 0.25, -0.5, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, 0.75, 0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, -0.25, ]);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    device50.pushErrorScope("out-of-memory");
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    device40.destroy();
    texture600.destroy();
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
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
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    texture601.destroy();
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.pushErrorScope("internal");
    
    
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    texture901.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([1.0, 1.0, 0.0, 0.0, 0.75, -0.25, -0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, -0.5, -0.25, -0.75, -0.5, -0.5, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, 0.75, -0.5, 0.0, 1.0, 1.0, 0.0, 0.25, 0.75, 0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 1.0, 0.75, 0.0, -0.75, 1.0, -1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -1.0, 1.0, -0.75, 0.25, -0.5, 0.5, 0.5, -0.5, 1.0, 0.5, -0.75, 0.0, 0.75, -0.75, 0.75, 0.0, -0.5, -0.5, 0.0, 0.25, 0.5, 1.0, -0.25, 1.0, 1.0, -0.5, -0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.25, 0.75, 0.25, 0.25, -0.5, 0.5, -0.25, 0.5, 0.0, -0.5, 0.5, ]);
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    
    query900.destroy()
    
    
    
    device90.pushErrorScope("out-of-memory");
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    query603.destroy()
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device60.destroy();
    query901.destroy()
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout904 = device90.createBindGroupLayout({ 
        label: "bind_group_layout904",
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
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1102.insertDebugMarker("marker");
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    query702.destroy()
    render_bundle_encoder1001.insertDebugMarker("marker");
    device100.destroy();
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query901.destroy()
    device110.destroy();
    device90.queue.writeTexture({ texture: texture900 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture900.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    
    
    
    
    
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.0, 1.0, 1.0, 0.75, -0.75, -0.5, -0.25, 0.0, -0.75, -0.75, 0.5, 1.0, -0.5, 0.25, -0.75, 0.0, -0.25, -1.0, -1.0, 1.0, -0.75, -0.75, 0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, -0.75, -0.75, -1.0, -0.5, 1.0, -0.25, 0.25, -0.25, -0.5, 1.0, 0.25, -0.25, 1.0, -0.75, -0.25, 0.5, 0.5, 0.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.25, 0.25, 0.0, 0.75, 0.5, -0.25, -0.75, 1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -1.0, 0.75, -1.0, 0.5, 0.5, 0.0, -0.25, -0.25, 1.0, 1.0, 0.0, 0.0, 0.5, -1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -0.5, 0.75, ]);
    
    const array7 = new Float32Array([0.5, -0.5, 0.0, -0.75, -0.5, 0.25, 1.0, 0.25, 0.0, -1.0, 1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, -1.0, 0.75, -0.25, 0.5, -0.5, 0.0, 0.0, 0.0, -0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -0.75, -0.25, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.25, -0.5, 0.25, -0.25, 1.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.25, 0.25, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.0, 0.5, 0.0, 0.0, 1.0, -0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 0.25, -0.75, -0.25, 0.25, 1.0, -0.75, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -0.75, -0.25, -0.25, ]);
    const array8 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.25, -0.25, 0.5, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 1.0, -0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 0.0, -1.0, 0.0, 1.0, -1.0, 0.75, -0.75, -0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.75, 0.5, -1.0, -0.75, 1.0, 0.25, -0.5, -0.75, 1.0, 1.0, -0.5, 0.0, 0.25, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, 0.5, 0.0, 0.0, 0.5, 0.25, 1.0, 0.0, -0.25, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.5, -0.75, -0.25, 0.5, 0.25, 0.5, -0.5, -1.0, -0.25, -0.25, ]);
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout905 = device90.createBindGroupLayout({ 
        label: "bind_group_layout905",
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
    texture902.destroy();
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/shader_module904.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    texture1200.destroy();
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    
    
    
    device120.pushErrorScope("validation");
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    device90.destroy();
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    query1200.destroy()
    
    query1201.destroy()
    
    
    
    
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    
    
    device120.destroy();
    
    
    
    
    
    const array9 = new Float32Array([0.0, 0.0, -0.25, -0.75, 0.75, 1.0, 0.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.5, 0.0, -0.75, 1.0, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.25, -1.0, 1.0, 0.0, 0.5, -0.5, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 1.0, -1.0, -1.0, 1.0, -0.75, 0.25, 0.0, 1.0, 0.5, -0.25, 1.0, -0.25, 0.75, 0.5, -0.25, 0.5, 0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 0.25, -0.25, -1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.75, 0.5, -0.25, -1.0, -0.5, -0.25, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, -0.25, 1.0, -1.0, 0.75, 0.5, -0.5, -1.0, -1.0, -0.25, ]);
    
    
    
    
    
    
    const array10 = new Float32Array([0.0, 1.0, 0.0, 0.75, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, -0.25, 0.25, -0.75, 1.0, 1.0, -0.5, -0.75, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, 0.5, 1.0, 0.75, 1.0, -0.75, 1.0, -0.25, -0.25, -0.25, -0.75, -0.5, -0.25, -0.5, -0.25, 0.25, 0.75, 0.0, 0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 1.0, 1.0, -1.0, -0.75, -0.5, 1.0, -0.25, -0.5, -0.25, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.75, -0.5, -1.0, 0.0, 0.5, -0.5, -0.5, 0.75, 1.0, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, 0.0, 0.75, 1.0, 0.25, -0.25, 0.5, -1.0, 0.5, ]);
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.5, -1.0, 0.0, -1.0, -0.75, -0.25, 0.0, -0.25, 0.0, -1.0, -0.5, 0.5, -0.25, -0.5, -0.5, 1.0, -1.0, 0.5, -0.5, -0.25, -0.5, 0.0, -0.75, 0.0, -0.5, -0.75, -0.5, 0.5, 0.0, 0.75, -1.0, -0.25, 0.5, 1.0, 1.0, 1.0, 1.0, -1.0, 1.0, -0.25, -0.5, 1.0, -0.75, -0.5, 0.5, 0.75, 0.25, 0.0, -0.5, -0.75, -0.75, -0.75, 0.0, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, -0.25, -0.25, -0.25, 0.5, 0.0, -0.25, -0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 1.0, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, -1.0, -1.0, 0.25, -1.0, 0.75, -0.25, -0.75, 0.25, 0.75, 0.75, 1.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.25, -1.0, ]);
    const array12 = new Float32Array([0.25, 1.0, 0.75, 0.0, 0.5, 1.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 0.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 0.25, 1.0, -0.5, -0.75, 1.0, 0.25, -0.25, 0.25, 0.75, 1.0, 1.0, -0.75, 1.0, -0.75, 0.25, -0.25, -1.0, 0.75, 0.25, 0.75, 0.0, 0.0, 0.25, 1.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -0.75, -0.5, -0.25, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.25, -1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.75, -0.5, -0.75, 0.25, 0.5, -0.25, 0.0, 0.75, 0.25, 1.0, -1.0, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, 0.75, -1.0, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, 0.75, ]);
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array13 = new Float32Array([0.75, 0.0, -0.25, -0.25, 0.25, -1.0, 0.25, 0.75, 1.0, -0.5, 0.25, -0.25, 0.75, 0.25, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, 1.0, -1.0, 0.25, -0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 0.75, -1.0, -1.0, -0.75, -0.25, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, -1.0, 1.0, 0.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.25, 1.0, 0.75, -0.75, 0.25, -1.0, -0.75, -1.0, 0.75, 0.0, -0.5, 0.75, -0.5, 0.5, 1.0, -0.5, -0.5, -1.0, 0.75, 0.0, -0.25, -0.75, 0.25, 0.25, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, -0.75, 1.0, 1.0, 0.75, 0.75, 0.25, -0.5, -1.0, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, -0.5, 1.0, -0.75, -0.5, -0.75, 0.75, -1.0, 0.0, ]);
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device140.queue.writeTexture({ texture: texture1400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeTexture({ texture: texture1400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeTexture({ texture: texture1400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device140.queue.writeTexture({ texture: texture1400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device140.queue.writeTexture({ texture: texture1400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1400.destroy();
    
    
    
    
    const array14 = new Float32Array([-0.25, -1.0, 1.0, 0.25, -1.0, 0.0, 0.0, 1.0, 0.75, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 0.75, 0.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.75, 0.75, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, -0.5, -0.25, -0.5, 0.0, 0.0, -0.5, 0.5, -0.75, 0.0, 0.5, 0.0, 0.5, -1.0, -0.5, -1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 0.25, 1.0, -1.0, 0.25, 0.0, 0.5, -0.75, -0.25, -0.25, 0.25, 1.0, 0.0, 0.25, 1.0, 0.25, -1.0, 0.25, -1.0, -0.5, 0.0, -1.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.75, -0.75, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.0, 0.5, 0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 0.5, -0.25, 0.75, 0.75, ]);
    
    device140.destroy();
    
    
    
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
}