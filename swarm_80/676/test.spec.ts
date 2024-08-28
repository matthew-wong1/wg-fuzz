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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.5, 0.0, 0.0, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.75, -1.0, -1.0, -0.75, -0.75, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.0, -0.5, -0.25, 1.0, -1.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.5, -0.5, 0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 0.5, 0.5, 0.25, 1.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.5, 0.25, -1.0, 0.25, -0.25, -0.5, 0.5, -1.0, 1.0, -0.75, 0.0, -0.5, 0.25, 0.25, -1.0, 0.5, 0.0, 0.25, 0.0, 1.0, -1.0, -1.0, 0.75, 0.5, -1.0, -0.5, -0.75, 1.0, 0.0, -0.25, -1.0, 0.75, -0.75, -1.0, 1.0, 0.25, 0.75, 1.0, 0.75, -0.5, -0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.75, 0.75, 0.25, -1.0, 1.0, 0.5, 0.0, -0.5, -1.0, -1.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.0, -0.5, -0.25, 0.75, -0.25, 0.0, 0.0, -1.0, -1.0, -1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, 1.0, -0.25, -1.0, 1.0, -0.75, -0.5, 1.0, 0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 1.0, -0.75, -1.0, 0.75, 0.5, 0.75, 1.0, -1.0, -0.5, 1.0, 0.0, -0.25, 1.0, -0.75, 0.5, 0.75, -0.75, 0.75, 0.25, -0.75, -0.75, -1.0, 0.5, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, -0.75, 0.75, -0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 1.0, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    
    texture201.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    device10.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device30.pushErrorScope("internal");
    texture000.destroy();
    query501.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.destroy();
    query000.destroy()
    texture202.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    texture200.destroy();
    const array2 = new Float32Array([0.25, -0.25, 0.75, 0.5, 1.0, 0.25, -0.5, 1.0, 1.0, 0.0, -0.75, -0.25, 0.0, 0.25, -0.75, -0.25, -0.5, 0.0, -0.5, 1.0, -0.25, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.5, 1.0, 1.0, -1.0, 1.0, -1.0, 0.0, 0.5, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.5, -0.25, 0.0, -0.75, -0.5, 0.5, -0.25, -0.75, 1.0, -0.5, 0.0, 1.0, 0.75, 1.0, -1.0, 0.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.75, 1.0, -0.75, -0.5, -0.25, 1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, -0.25, 0.0, -0.25, -1.0, 0.0, 1.0, -0.25, -0.75, -0.5, 0.75, -1.0, 1.0, ]);
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query001.destroy()
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
    
    
    buffer301.destroy()
    
    
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
    device00.destroy();
    
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
    
    device20.destroy();
    
    device30.pushErrorScope("validation");
    buffer300.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
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
    buffer302.destroy()
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    
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
    query300.destroy()
    device30.pushErrorScope("validation");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query300.destroy()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    query302.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    const array3 = new Float32Array([0.75, 0.75, 0.25, -0.5, -0.75, 0.25, -0.5, -0.5, -1.0, -0.75, 0.25, 0.0, 1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -0.75, 0.0, 1.0, -0.25, -0.75, 1.0, 0.75, 0.0, -1.0, 1.0, -0.5, -0.75, 0.75, 0.5, 0.5, 0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, -0.5, -0.25, -0.5, 0.75, 0.5, -1.0, -0.25, 1.0, 0.5, 0.5, 0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 0.75, -0.25, 0.5, -1.0, 0.0, 0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, -1.0, -1.0, -0.25, -0.75, -0.25, 0.75, -0.5, 1.0, -0.75, 1.0, 1.0, -0.75, -0.75, 0.25, -1.0, -0.5, 0.25, 0.25, -0.25, -0.25, -0.75, 1.0, 0.25, -0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 0.75, -0.5, -0.75, ]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query303.destroy()
    query304.destroy()
    query301.destroy()
    const array4 = new Float32Array([1.0, 0.0, 0.5, 0.75, 0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, 1.0, 0.75, -0.75, 0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.75, -0.5, 0.75, -0.75, -1.0, 0.5, 0.5, -0.75, -0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.5, 0.0, -1.0, -0.75, -0.5, -0.75, 0.5, -0.75, 0.0, 1.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.0, -0.25, 0.0, 1.0, 0.75, -0.5, 0.0, -0.5, 1.0, -0.25, -0.5, -0.75, 0.75, -0.5, -1.0, -0.25, -0.75, 0.75, -0.5, 1.0, -0.25, 0.75, -0.5, 1.0, 1.0, -0.75, 0.75, -1.0, -0.75, -0.75, -0.5, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, 0.5, 1.0, ]);
    query304.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    buffer800.destroy()
    
    
    
    const array5 = new Float32Array([0.75, -0.5, -0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.75, -0.25, -1.0, -0.25, 1.0, -0.75, 0.75, -0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, -0.5, 0.25, 0.75, 0.0, 0.75, 0.75, 1.0, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, 0.0, -1.0, 0.25, -0.75, 0.75, -1.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.25, 0.5, 0.25, -1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, 0.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, 0.0, -0.5, -0.75, -0.75, -0.75, 0.5, -0.5, 0.75, 0.25, -1.0, -0.5, -1.0, -0.25, -0.75, -1.0, ]);
    query301.destroy()
    
    query300.destroy()
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture801.destroy();
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    query303.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    query301.destroy()
    device80.destroy();
    device70.pushErrorScope("internal");
    query303.destroy()
    query300.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device30.pushErrorScope("internal");
    query304.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    query302.destroy()
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.destroy();
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query304.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    device60.pushErrorScope("out-of-memory");
    
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
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device90.pushErrorScope("out-of-memory");
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    
    
    query305.destroy()
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    query301.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
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
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    query302.destroy()
    
    const render_pipeline3015 = device30.createRenderPipeline({
        label: "render_pipeline3015",
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
    
    
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    query303.destroy()
    
    
    buffer303.destroy()
    
    texture600.destroy();
    query302.destroy()
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    query600.destroy()
    query301.destroy()
    
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
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    query305.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const render_pipeline3016 = device30.createRenderPipeline({
        label: "render_pipeline3016",
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
    
    texture302.destroy();
    const render_pipeline3017 = device30.createRenderPipeline({
        label: "render_pipeline3017",
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
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    const render_pipeline3018 = device30.createRenderPipeline({
        label: "render_pipeline3018",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.pushErrorScope("validation");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture300.destroy();
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device90.destroy();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device30.pushErrorScope("validation");
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline3019 = device30.createRenderPipeline({
        label: "render_pipeline3019",
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
    const render_pipeline3020 = device30.createRenderPipeline({
        label: "render_pipeline3020",
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
    
    
    
    const render_pipeline3021 = device30.createRenderPipeline({
        label: "render_pipeline3021",
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
    query302.destroy()
    const render_pipeline3022 = device30.createRenderPipeline({
        label: "render_pipeline3022",
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
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    
    const render_pipeline3023 = device30.createRenderPipeline({
        label: "render_pipeline3023",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline3024 = device30.createRenderPipeline({
        label: "render_pipeline3024",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    buffer304.destroy()
    
    
    const render_pipeline3025 = device30.createRenderPipeline({
        label: "render_pipeline3025",
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
    const render_pipeline3026 = device30.createRenderPipeline({
        label: "render_pipeline3026",
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
    
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    
    query306.destroy()
    query306.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    query300.destroy()
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    query304.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    query300.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query308.destroy()
    device30.pushErrorScope("out-of-memory");
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    buffer600.destroy()
    const render_pipeline3027 = device30.createRenderPipeline({
        label: "render_pipeline3027",
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
    query301.destroy()
    
    texture601.destroy();
    const render_pipeline3028 = device30.createRenderPipeline({
        label: "render_pipeline3028",
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
    
    
    const render_pipeline3029 = device30.createRenderPipeline({
        label: "render_pipeline3029",
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
    const render_pipeline3030 = device30.createRenderPipeline({
        label: "render_pipeline3030",
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline3031 = device30.createRenderPipeline({
        label: "render_pipeline3031",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    query600.destroy()
    texture602.destroy();
    query600.destroy()
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline3032 = device30.createRenderPipeline({
        label: "render_pipeline3032",
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
    
    
    const render_pipeline3033 = device30.createRenderPipeline({
        label: "render_pipeline3033",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    
    const array6 = new Float32Array([0.25, 0.25, 1.0, 0.25, 1.0, -0.75, -0.25, 0.75, 0.5, 0.5, -1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, 1.0, 0.5, -0.25, -0.25, 0.5, 0.5, -0.75, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.5, 0.75, -0.5, -1.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.25, -0.5, -1.0, 0.25, 1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.25, -0.25, -0.75, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -0.25, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.5, 1.0, 0.5, 0.5, -0.25, ]);
    query308.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    query301.destroy()
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query303.destroy()
    query300.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    query304.destroy()
    
    query303.destroy()
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    query303.destroy()
    query306.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    query306.destroy()
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    const array7 = new Float32Array([1.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, 0.5, 0.25, -1.0, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.0, 0.25, 0.5, -1.0, 1.0, -0.25, -0.5, 0.25, 0.0, 0.5, -0.25, -1.0, -0.25, -0.75, 0.5, -1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, 0.5, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, 0.25, -1.0, -0.5, -0.75, -0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 1.0, -0.5, 0.75, -1.0, -0.75, 0.75, 0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.0, 1.0, 0.25, 1.0, -0.5, 0.0, 0.25, 0.25, 0.25, -0.75, -1.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, 0.0, -0.25, 0.0, 1.0, ]);
    const render_pipeline3034 = device30.createRenderPipeline({
        label: "render_pipeline3034",
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
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    const render_pipeline3035 = device30.createRenderPipeline({
        label: "render_pipeline3035",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    device60.destroy();
    
    query303.destroy()
    query307.destroy()
    
    texture301.destroy();
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    buffer305.destroy()
    device30.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const array8 = new Float32Array([0.0, 1.0, -0.5, 1.0, -1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -0.75, 0.5, -0.25, -1.0, 1.0, 0.5, 0.5, -0.5, 0.5, -0.5, -1.0, -1.0, 0.0, -0.25, 0.5, 1.0, -0.25, 0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -0.5, 0.25, 0.0, 0.75, -0.5, -0.25, 0.25, -0.25, -0.25, 0.25, 0.25, 0.75, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.5, -0.5, -0.5, -0.75, 0.0, -1.0, -0.75, 0.25, -0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, -0.25, 1.0, 0.5, 0.5, 0.0, 0.0, -0.25, 0.25, 0.25, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, 0.0, 0.25, 0.75, 0.5, 0.5, 0.0, 0.5, -1.0, 1.0, 0.75, 0.25, 1.0, ]);
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device100.pushErrorScope("validation");
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.pushErrorScope("out-of-memory");
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([0.25, 1.0, -0.5, -0.25, 0.75, 0.0, -1.0, 1.0, 0.5, 0.0, -0.75, -0.25, 0.0, -0.25, 0.5, 0.0, 0.75, 1.0, -0.5, 0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, 0.0, -0.25, 0.5, 1.0, 1.0, -1.0, 0.5, 0.25, -1.0, -0.75, -0.75, -0.5, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, -0.5, 0.5, -0.25, 1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 1.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.25, 0.75, 0.0, -0.75, 0.0, 1.0, -0.75, -0.25, -1.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, 0.0, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, -1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.5, ]);
    const array10 = new Float32Array([0.75, 0.0, -1.0, 0.25, -0.5, 0.5, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 1.0, 0.0, -0.5, 1.0, -1.0, -0.75, -1.0, -0.5, -0.25, 0.75, 0.5, -0.5, 0.25, 0.25, 0.5, 0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.25, -0.5, 0.75, -0.25, -0.75, -0.5, -0.5, 0.5, -0.25, -0.5, -0.5, 0.0, -1.0, -1.0, -1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.75, 0.75, -1.0, -0.5, -1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.0, -0.25, -0.5, 1.0, 0.5, 0.5, 0.0, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 0.75, -0.25, -0.25, -1.0, ]);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    
    buffer1000.destroy()
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    device100.destroy();
    
    const array11 = new Float32Array([0.5, 0.5, 0.0, -0.75, 1.0, 0.5, -0.75, 0.0, 0.0, -1.0, -0.5, 0.75, 0.0, 0.75, -0.75, 0.75, 0.25, -0.25, -0.75, -1.0, -0.75, 0.75, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, 0.75, 1.0, -0.75, -0.5, 0.25, -0.75, -0.25, 0.0, 0.5, -0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, 0.25, 0.25, 0.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.0, -0.5, 0.0, 0.5, -0.25, -0.25, -0.75, 0.25, 0.75, 0.25, 0.75, 0.25, -1.0, 0.75, 0.0, -1.0, 0.75, 1.0, 0.25, 1.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.5, 0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 1.0, -0.75, -0.75, 1.0, ]);
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device110.destroy();
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
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
    device120.destroy();
    const array12 = new Float32Array([-0.25, -1.0, 0.0, 1.0, -1.0, 0.0, -0.5, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, -1.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -1.0, -0.75, -0.5, 1.0, -1.0, -0.5, -0.75, -0.5, -0.75, 1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.5, 0.25, -1.0, 0.25, -0.5, 1.0, 0.25, 0.5, 0.75, 0.25, 0.25, -0.75, -0.5, 1.0, 0.5, -0.25, 0.5, 0.25, 0.5, 0.25, -0.5, 0.25, -0.5, 0.0, 0.0, 0.75, -0.5, -1.0, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -0.25, -1.0, 0.75, 0.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, -1.0, -0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.25, -1.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.0, 0.25, 0.25, ]);
    
    
    
    const array13 = new Float32Array([-0.5, -1.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 1.0, 0.0, 0.0, -0.75, 1.0, -0.25, -0.75, 0.5, -0.75, 0.25, -0.75, -1.0, -0.75, -0.75, 0.0, -0.75, 0.5, -0.5, 0.0, 0.0, 0.75, 0.5, 1.0, 0.0, 0.5, 0.25, -0.75, 0.0, 0.5, 0.75, -0.5, 0.0, 0.75, 1.0, 0.75, 0.5, -0.75, -0.75, 0.25, 1.0, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.0, 0.25, 0.0, 0.75, -0.75, 0.0, 0.5, 0.75, -0.25, 0.25, 0.0, 0.5, -0.75, 0.25, -0.75, 0.0, 0.25, -0.5, 1.0, -0.75, -0.75, -1.0, 0.5, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, -1.0, -0.5, 0.0, 1.0, 0.75, -0.25, -0.75, 0.75, 0.25, -0.25, ]);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array14 = new Float32Array([0.5, -0.5, -0.5, -0.25, 0.5, 0.5, 1.0, 0.0, -0.75, -0.25, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, 1.0, -0.75, 0.25, 0.5, -0.25, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, 0.0, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, 0.75, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, -0.25, -0.75, 0.5, 0.0, -0.75, -1.0, 0.0, 1.0, -0.5, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, 0.25, -0.25, 0.0, 0.25, -1.0, 0.0, -0.5, -1.0, -0.5, -1.0, 0.75, 0.0, ]);
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    
    
    
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    
    texture1300.destroy();
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    
    device130.destroy();
    const array15 = new Float32Array([1.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 0.75, -1.0, -1.0, 0.25, -0.5, 0.0, -0.5, -1.0, 1.0, -1.0, -0.5, 0.25, 1.0, -0.5, 0.5, -1.0, -0.75, 0.0, -1.0, -0.25, 0.75, -0.25, -0.75, 0.25, 0.75, -1.0, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.25, -0.25, 0.0, -0.75, -0.5, -0.5, 0.5, 0.5, -0.5, -1.0, -1.0, 0.75, -0.25, 0.75, -1.0, 0.75, 0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, -0.75, 1.0, 0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, -0.5, 0.25, -0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -1.0, 1.0, 1.0, 0.75, 0.75, ]);
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device140.destroy();
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const array16 = new Float32Array([0.25, -0.5, -0.25, 0.5, 0.25, -0.5, -0.75, 0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 0.25, 0.75, -0.75, 0.0, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, -0.75, -1.0, 0.75, 0.25, 0.5, 0.25, 0.75, 0.5, -1.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.0, -0.5, -0.5, 0.75, 0.5, 0.75, 0.5, 1.0, 0.25, -0.25, -0.5, -1.0, -1.0, -0.75, -0.25, 0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -0.5, -0.25, -0.75, 0.25, 0.25, -0.75, -1.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.25, -0.5, 0.5, 0.25, 0.5, -0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 0.5, -0.25, 0.75, -0.25, 0.75, -0.5, 0.75, -0.5, -0.75, ]);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device160.destroy();
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    device150.pushErrorScope("out-of-memory");
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device150.queue.writeBuffer(buffer1500, 0, array15, 0, array15.length);
    
    
    
    const array17 = new Float32Array([-0.25, -1.0, -0.5, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, 0.75, -0.5, 1.0, 0.75, 1.0, 1.0, 0.5, 0.25, 0.25, 0.75, 0.0, 0.75, 0.5, 0.25, -0.75, 0.0, 1.0, 0.5, 1.0, 1.0, 0.5, -1.0, 0.5, 0.75, -1.0, -1.0, -1.0, 1.0, 0.0, -0.75, 1.0, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.5, 0.0, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.75, -0.25, -0.5, 0.75, 0.0, 1.0, -0.75, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, 0.75, -0.5, -0.25, -0.25, -0.25, -0.5, 0.0, -1.0, -0.5, -1.0, -0.25, -0.5, 0.25, -0.25, 0.75, 0.5, -0.5, 0.75, -0.5, -0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -0.75, 1.0, 1.0, 1.0, -0.5, 0.5, -0.75, 0.5, ]);
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device150.queue.writeBuffer(buffer1500, 0, array12, 0, array12.length);
    device150.queue.writeBuffer(buffer1500, 0, array2, 0, array2.length);
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array18 = new Float32Array([-0.5, -0.75, 1.0, -1.0, -0.25, -1.0, -0.25, 0.75, -0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.0, -0.75, 1.0, -0.5, -0.75, 1.0, 1.0, -0.75, -0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 0.5, 0.25, 0.5, 1.0, 0.5, 0.25, 0.25, -1.0, -0.25, -1.0, 0.75, -1.0, 0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.25, -0.25, 0.5, 0.75, 0.75, -0.25, -0.5, -0.5, 1.0, -0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 1.0, 0.5, -1.0, 1.0, -0.75, -0.75, 1.0, 1.0, -0.5, 0.25, -0.75, -0.5, 0.75, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, 0.0, -1.0, 0.5, 0.25, -0.5, -0.75, 1.0, -0.25, -0.25, -1.0, 1.0, 0.75, 1.0, -0.5, -0.5, 0.0, 0.5, -0.75, 0.25, 0.25, ]);
    device150.queue.writeBuffer(buffer1500, 0, array6, 0, array6.length);
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    device150.queue.writeBuffer(buffer1500, 0, array15, 0, array15.length);
    device150.queue.writeBuffer(buffer1500, 0, array4, 0, array4.length);
    const array19 = new Float32Array([0.5, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, 0.0, -0.25, -0.5, 0.75, 0.5, 0.25, -0.75, -0.25, -1.0, 0.25, -0.75, 1.0, -0.5, -0.25, -0.25, -1.0, -1.0, -1.0, -1.0, 0.0, -1.0, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -0.75, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, 0.5, 0.25, 0.25, 0.0, 0.5, -0.75, 0.0, -0.5, 0.0, -0.75, 0.75, -0.25, 0.75, -1.0, -0.5, -0.5, -0.25, 1.0, -1.0, 1.0, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, 0.75, -0.75, 0.25, -0.5, 0.0, -0.75, -0.75, -1.0, 0.25, -0.25, -0.75, -1.0, -0.5, 0.25, 1.0, 0.75, -0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.5, 0.5, 0.0, ]);
    device150.queue.writeBuffer(buffer1500, 0, array9, 0, array9.length);
    device150.queue.writeBuffer(buffer1500, 0, array2, 0, array2.length);
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}