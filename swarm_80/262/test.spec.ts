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
    const array0 = new Float32Array([-1.0, 0.5, -0.25, 1.0, 0.75, 0.0, -0.5, 0.0, 1.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.25, 0.5, 0.75, 1.0, 0.0, -1.0, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, -0.5, 0.5, -0.25, 0.75, 0.75, -0.25, -0.25, -0.75, 0.75, -0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 0.0, -0.5, -0.5, -0.25, 0.75, -0.25, 0.75, -0.25, 0.25, -0.25, -0.25, 1.0, 0.0, 0.0, -0.5, 1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, 0.0, -1.0, -0.25, 0.5, 1.0, -0.75, -0.75, 1.0, 1.0, -0.25, -0.25, -0.25, 0.25, 0.0, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, 0.75, -0.75, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const array1 = new Float32Array([0.25, -1.0, 0.0, -0.75, 0.75, 1.0, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, -0.25, -0.75, -0.5, 0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.75, -0.25, -1.0, -0.25, -1.0, -0.75, -1.0, -0.75, -0.75, 0.25, -1.0, 0.0, -0.25, -0.75, 1.0, -0.25, -0.25, -0.25, 0.5, 0.5, 0.75, -1.0, -0.25, -1.0, 1.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -0.25, -0.5, 0.0, 0.25, 0.5, 0.25, -1.0, -0.5, -0.5, 0.5, -0.25, -1.0, 1.0, -0.5, 0.25, 0.25, 0.5, 1.0, 0.75, 0.25, -1.0, 1.0, -0.25, -1.0, 1.0, -0.75, 0.75, 1.0, -0.75, 0.5, -0.75, 0.0, -0.75, 0.5, 0.25, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.destroy();
    
    const array2 = new Float32Array([-0.75, 0.0, -0.75, 0.0, 0.0, 0.25, 1.0, -0.75, 1.0, -0.5, 0.0, 0.25, 0.0, -0.5, -1.0, 0.5, 0.75, 0.0, -0.25, -1.0, -0.5, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, -0.75, -0.75, -0.25, -0.25, -0.75, -0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.25, 0.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.0, -0.75, 1.0, -1.0, -0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.25, 0.75, 0.75, 0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -1.0, 0.25, -0.25, -0.75, -0.75, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, -1.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.5, -0.5, 0.75, 0.25, -0.25, -0.75, -0.75, -0.5, 0.75, 0.0, -0.25, 0.0, 0.25, -0.5, 0.5, 1.0, -0.5, -0.25, ]);
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([0.25, 1.0, 0.0, 0.25, 0.5, 0.0, 1.0, 0.75, 0.25, -1.0, 0.5, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, 0.0, -1.0, -0.75, 0.5, 0.0, 0.0, -0.75, -1.0, -0.25, -1.0, -0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -0.25, 1.0, 1.0, -0.25, -1.0, 0.75, 0.75, -0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 0.75, 0.5, -1.0, 0.75, 0.0, -0.25, 0.75, 1.0, 0.5, 0.5, -0.25, -0.5, 0.25, 0.0, -1.0, 0.0, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, 0.5, 0.25, 1.0, 0.5, 1.0, -0.5, -1.0, 0.0, 1.0, 0.5, -1.0, 0.75, 0.0, -0.75, 1.0, 0.75, -0.25, -0.25, 0.5, 0.0, -1.0, 0.5, -0.75, 0.5, -0.75, -0.75, 0.25, 1.0, -0.5, -0.25, -0.5, 1.0, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array4 = new Float32Array([-0.75, 0.25, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, 0.5, -0.5, 0.5, -0.5, -0.75, -0.5, 0.0, -0.25, -0.5, -0.5, 0.0, -0.25, -0.5, -1.0, 0.25, -1.0, 0.0, 0.25, -0.75, 0.0, 0.5, 0.75, -0.75, -0.25, 0.5, -0.75, 0.5, 0.75, 0.75, 0.75, 0.75, 0.75, -0.75, 0.5, 0.0, 0.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 1.0, 0.0, 0.75, 1.0, -0.25, -1.0, -1.0, -0.75, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.0, -1.0, 1.0, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, -0.75, 0.5, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, -1.0, -0.5, -0.25, 0.0, 0.5, -0.75, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const array5 = new Float32Array([0.25, 0.5, -0.5, -0.5, -1.0, 0.0, 0.75, 0.75, -0.5, -0.75, 1.0, 0.5, 0.0, -1.0, 0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.75, -0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 0.0, 0.75, 0.25, -1.0, -0.5, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -1.0, 0.25, 1.0, 1.0, 0.5, 0.0, 0.0, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, -0.25, 0.25, -0.75, -0.5, 0.75, -0.25, -0.25, 0.0, 1.0, 0.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.75, -0.75, 0.25, -0.75, 0.5, 1.0, -0.25, 0.0, 0.0, 1.0, 0.5, 0.0, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
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
    device10.destroy();
    query000.destroy()
    query300.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    const array6 = new Float32Array([0.0, -1.0, 0.0, 1.0, 0.5, -1.0, 0.5, -0.25, 0.75, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.25, -0.5, 1.0, -0.5, 0.0, 0.25, 0.25, -0.25, 0.25, -1.0, -0.75, -0.5, -0.75, 1.0, 0.5, 0.75, -1.0, -0.75, -0.75, 0.25, -1.0, -0.25, 0.5, -0.25, -0.75, 0.75, 0.0, 1.0, -0.5, 0.25, -0.75, 0.0, 0.75, 0.75, -0.25, -0.75, 0.25, -0.25, 0.75, 0.25, 0.25, 0.75, -0.75, -0.5, 1.0, 1.0, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, 0.75, -0.5, -0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 0.0, -0.25, -0.5, -1.0, 0.25, 1.0, -1.0, 1.0, 0.75, -0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.25, -0.25, 0.0, -0.5, 0.25, -0.5, ]);
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
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query001.destroy()
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer301.destroy()
    texture300.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.destroy();
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    query004.destroy()
    
    query301.destroy()
    texture301.destroy();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    buffer600.destroy()
    
    query002.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    device60.destroy();
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query302.destroy()
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
        occlusionQuerySet: query302
    });
    render_pass_encoder3000.setStencilReference(1);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    query302.destroy()
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder3000.setPipeline(render_pipeline302);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    render_pass_encoder3000.setStencilReference(1);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    command_encoder700.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query300.destroy()
    buffer302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
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
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    buffer700.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    query301.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer701.destroy()
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
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
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    query303.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const array7 = new Float32Array([1.0, -0.25, 0.75, 1.0, 0.25, -0.75, -0.75, 0.5, -1.0, 0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.75, -1.0, -0.25, 0.75, -0.25, -1.0, -0.25, 0.5, 1.0, 0.75, 0.25, 0.75, -1.0, 0.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.5, 0.25, 0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.5, 0.75, 0.5, 1.0, -0.5, -0.5, -0.5, 0.0, 0.0, 0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 0.0, -0.5, -0.25, -0.25, 0.75, -0.75, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 0.25, 0.25, 1.0, -0.75, -0.75, -0.5, -0.25, 0.25, 1.0, -0.25, -0.5, 1.0, 0.5, 0.75, -0.75, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 1.0, -0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -0.75, -0.5, -0.75, ]);
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    device80.destroy();
    render_pass_encoder3000.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
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
    query301.destroy()
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3000.setStencilReference(1);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    command_encoder702.insertDebugMarker("mymarker");
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
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const render_pass_encoder7020 = command_encoder702.beginRenderPass({
        label: "render_pass_encoder7020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query701
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    buffer703.destroy()
    render_pass_encoder3000.setStencilReference(1);
    compute_pass_encoder7000.insertDebugMarker("marker")
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    texture701.destroy();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    texture302.destroy();
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7020.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture305 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const array8 = new Float32Array([1.0, 0.25, 0.25, -0.5, 0.25, 0.0, 0.25, 0.5, 0.5, 0.5, -0.75, -0.75, 0.0, -0.5, 0.0, 0.75, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, -0.25, -0.75, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 0.25, -0.75, -0.25, -0.5, 0.5, 0.25, -0.75, -1.0, -1.0, 0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.25, 0.0, -0.75, -1.0, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, 0.75, -0.5, 1.0, 0.0, 0.5, -0.5, 0.75, 0.25, -0.75, -1.0, 0.25, -0.5, 0.0, 1.0, -1.0, 0.75, 0.5, -0.25, -0.25, -1.0, 0.75, 1.0, ]);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query302.destroy()
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    render_pass_encoder7020.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array9 = new Float32Array([-0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 0.0, -0.5, 0.25, 1.0, 0.75, -0.5, 0.75, 0.75, 0.25, -1.0, 0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 0.25, -0.5, 0.0, 1.0, -0.5, 0.5, 0.75, 1.0, -0.25, 1.0, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, 0.25, -0.75, 1.0, -0.5, 0.0, -1.0, -0.25, -0.5, 0.5, 0.5, 0.25, -1.0, -0.75, -0.5, 0.25, 0.0, 0.5, 0.5, 1.0, -1.0, -1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.75, 0.75, -1.0, -0.25, 0.75, -0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 1.0, 0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.25, -0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -1.0, 0.25, -0.75, 0.5, 0.25, 0.75, 1.0, -0.75, 0.5, -0.5, ]);
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.popDebugGroup()
    device30.queue.writeTexture({ texture: texture305 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeTexture({ texture: texture305 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeTexture({ texture: texture305 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    query900.destroy()
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder7020.setStencilReference(1);
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture500.destroy();
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
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
    command_encoder900.pushDebugGroup("mygroupmarker")
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    render_pass_encoder7020.pushDebugGroup("group_marker");
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    command_encoder500.insertDebugMarker("mymarker");
    
    const compute_pass_encoder9010 = command_encoder901.beginComputePass({ label: "compute_pass_encoder9010" });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder7020.beginOcclusionQuery(0)
    compute_pass_encoder9010.insertDebugMarker("marker")
    texture305.destroy();
    buffer501.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    render_pass_encoder7030.setPipeline(render_pipeline700);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([0.25, -1.0, -0.5, -1.0, 1.0, 0.5, -0.75, -0.25, 0.75, 0.75, -0.25, -0.25, 1.0, -0.75, 0.75, -1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -0.25, 0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -1.0, -0.25, 1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 0.75, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 1.0, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -0.75, 0.0, -0.25, -0.75, 0.75, -0.75, 0.5, 1.0, -1.0, 1.0, -0.5, -0.75, 1.0, -1.0, 0.5, 0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, ]);
    const render_pass_encoder7040 = command_encoder704.beginRenderPass({
        label: "render_pass_encoder7040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder7040.setPipeline(render_pipeline700);
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    render_pass_encoder7020.setPipeline(render_pipeline702);
    
    render_pass_encoder7020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder7040.insertDebugMarker("marker");
    
    command_encoder900.insertDebugMarker("mymarker");
    buffer704.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    compute_pass_encoder7000.insertDebugMarker("marker")
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    render_pass_encoder7020.popDebugGroup();
    
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    query700.destroy()
    
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    compute_pass_encoder9010.insertDebugMarker("marker")
    render_pass_encoder7040.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const array11 = new Float32Array([0.0, 0.0, -0.75, -1.0, -0.5, 0.0, 0.75, 0.25, 0.5, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, 0.75, 1.0, -0.5, -0.5, 0.75, -1.0, -0.75, 0.5, 0.75, 0.25, -0.5, -0.75, 0.25, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, -0.25, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 0.75, -0.75, 0.5, 1.0, -0.5, -0.25, -0.5, 1.0, 1.0, 0.25, 1.0, -0.5, -1.0, 0.25, -0.5, -0.25, -0.25, 0.75, -0.25, -0.25, 0.5, 0.0, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, 0.25, -1.0, -0.25, 0.0, -0.25, 0.5, 0.75, -1.0, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.75, -0.25, -0.25, -0.5, 0.25, -0.25, ]);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_pass_encoder3000.setStencilReference(1);
    
    render_pass_encoder7020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture702.destroy();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
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
    
    buffer300.destroy()
    
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    render_pass_encoder3000.setStencilReference(1);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    render_pass_encoder7020.endOcclusionQuery()
    render_pass_encoder7030.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setStencilReference(1);
    texture303.destroy();
    query700.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
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
    render_pass_encoder7040.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture900.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_pass_encoder3010.setPipeline(render_pipeline304);
    render_pass_encoder7040.setStencilReference(1);
    buffer706.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder7040.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    
    render_pass_encoder7030.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder3010.setStencilReference(1);
    buffer707.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout306]
    });
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_pass_encoder7030.insertDebugMarker("marker");
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    
    texture304.destroy();
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    query700.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    buffer705.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    buffer702.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7010.dispatchWorkgroups(100);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device70.queue.writeTexture({ texture: texture703 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder7020.pushDebugGroup("group_marker");
    device70.queue.writeTexture({ texture: texture703 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7010.insertDebugMarker("marker")
    device70.queue.writeTexture({ texture: texture703 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    device70.queue.writeTexture({ texture: texture703 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    render_pass_encoder7030.setBindGroup(0, bind_group702);
    const render_pass_encoder7050 = command_encoder705.beginRenderPass({
        label: "render_pass_encoder7050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    query701.destroy()
    
    device70.queue.writeTexture({ texture: texture703 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    render_pass_encoder7050.setPipeline(render_pipeline701);
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    
    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7012,
                },
            },
        ],
    });

    render_pass_encoder7050.setBindGroup(0, bind_group703);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7010.end();
    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7014 = device70.createBuffer({
        label: "buffer7014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7014,
                },
            },
        ],
    });

    render_pass_encoder7040.setBindGroup(0, bind_group704);
    const buffer7015 = device70.createBuffer({
        label: "buffer7015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group705 = device70.createBindGroup({
        label: "bind_group705",
        layout: render_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7016,
                },
            },
        ],
    });

    render_pass_encoder7020.setBindGroup(0, bind_group705);
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder7020.popDebugGroup();
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7000.end();
}