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
    
    
    const array0 = new Float32Array([0.5, -0.75, 0.25, 0.75, -0.25, 0.25, -0.5, 0.25, -1.0, 0.5, -0.25, -0.5, 0.25, 1.0, 1.0, -0.5, -1.0, -0.25, 0.25, 0.25, -0.5, 0.75, 0.5, -0.5, 0.5, 0.75, -0.5, 0.25, -1.0, -1.0, 0.0, -0.5, -0.5, -1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -1.0, -0.5, 0.25, 0.0, -0.5, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, -0.25, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, 0.75, -0.5, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, 0.25, 0.0, 0.25, 1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 1.0, 0.75, -0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 0.0, -1.0, -1.0, 0.5, -1.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.5, 1.0, 1.0, ]);
    const array1 = new Float32Array([-0.25, 1.0, -0.75, 0.75, 1.0, 1.0, 1.0, -0.5, 0.0, 0.25, 0.25, -0.5, -0.25, -0.5, 1.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 1.0, -0.75, -0.75, 0.5, 0.5, -0.5, 1.0, 0.25, -0.25, 0.0, 1.0, 0.0, 0.5, 1.0, 1.0, 0.25, 0.75, 0.75, -0.5, 1.0, 0.5, -1.0, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, 0.0, -1.0, -0.75, 1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, 0.25, 0.0, 0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.75, -0.5, 0.5, -0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, 0.5, 0.25, -0.75, 0.5, -0.5, 0.5, 1.0, -1.0, -0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -0.75, -0.75, ]);
    const array2 = new Float32Array([-0.5, -1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.75, 0.25, 0.25, -1.0, 0.0, -0.5, 0.75, 1.0, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 1.0, -0.75, -0.75, -0.5, 0.25, -0.75, 0.75, 0.0, 0.25, -1.0, 0.0, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, -0.25, 1.0, 0.0, -0.75, 0.0, 0.75, -0.5, 0.5, 1.0, -0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.0, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.0, -0.75, 0.5, -0.25, 1.0, 0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.25, -0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.5, 0.5, 0.0, 1.0, 0.0, -0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, -0.5, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.25, -0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.75, 0.5, -0.25, 0.25, 1.0, 0.0, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.25, -0.5, 0.25, -1.0, 0.5, -1.0, 0.5, 0.0, -0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 1.0, -0.5, 0.5, -0.75, -1.0, -1.0, 0.75, 0.5, 0.75, 0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 0.5, 0.5, 0.0, 0.0, 1.0, 0.25, 0.5, 1.0, 1.0, -0.75, -0.75, -0.75, -0.75, -0.75, -0.75, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 1.0, 0.25, -0.5, -0.75, 0.5, 0.25, 0.5, 0.25, -1.0, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query100.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
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
    device10.pushErrorScope("internal");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    const array4 = new Float32Array([-0.75, 1.0, 0.0, -0.5, -0.25, 0.75, -0.25, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, 0.25, -1.0, 0.75, 0.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.25, -0.25, 1.0, 0.0, 1.0, -1.0, -1.0, -1.0, 1.0, 0.75, 0.25, 0.0, 0.5, 1.0, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, -0.25, -0.25, 0.25, -0.25, 1.0, -0.5, 1.0, 0.0, -1.0, 1.0, 0.25, -0.25, -0.75, 0.5, 0.0, 0.75, 0.5, 0.5, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 0.0, -0.75, 0.5, -0.5, 0.75, 1.0, -0.25, -0.25, 0.5, -0.25, 0.25, 0.5, 1.0, -0.5, -0.75, 0.25, 0.0, 0.75, -1.0, 0.0, -0.25, ]);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query100.destroy()
    
    const array5 = new Float32Array([0.0, -1.0, -0.5, -0.75, 0.75, 1.0, 0.25, 0.75, 0.5, 1.0, -0.25, -0.5, 1.0, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.25, -1.0, 0.75, -1.0, 0.0, -0.25, -0.5, 0.75, -1.0, -1.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.75, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, -1.0, -0.25, 0.0, 0.25, -0.5, 0.75, -0.5, 0.5, -1.0, 0.75, -0.5, -0.25, 0.0, 0.0, 0.75, 0.0, 0.5, -0.75, 0.25, -0.75, -0.25, 0.5, -0.25, 0.25, -1.0, 0.0, 0.25, 0.5, -0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 0.5, 0.5, 0.5, 0.25, -0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.0, 0.75, -0.75, ]);
    query100.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer200.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device30.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    buffer100.destroy()
    
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.destroy();
    
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder200.setPipeline(render_pipeline202);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
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
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
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
    
    texture200.destroy();
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    texture400.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer202.destroy()
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    buffer201.destroy()
    device20.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const array6 = new Float32Array([-0.5, 0.25, -0.75, -1.0, -0.5, -0.5, 1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.25, 1.0, 0.0, 0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.5, -0.5, 0.75, -0.25, 0.0, 0.5, 0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 1.0, -0.75, -0.75, 0.5, -0.25, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, -0.75, -0.5, 0.25, 0.25, 0.75, -0.75, -1.0, 0.5, 0.5, 0.25, -0.25, 1.0, -0.25, 0.5, 0.25, -1.0, 0.25, 0.25, 0.25, -0.5, 1.0, 0.5, -1.0, -0.75, -0.5, 1.0, 1.0, -0.75, -0.75, -1.0, 0.0, -0.5, -0.75, 0.5, -0.5, 0.0, -0.75, -0.75, 1.0, -1.0, -0.5, -1.0, 0.0, -0.25, 1.0, 0.25, 0.0, ]);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer300.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_buffer300 = command_encoder300.finish();
    buffer301.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    query300.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.executeBundles([])
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer303.destroy()
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setStencilReference(1);
    buffer500.destroy()
    
    
    render_bundle_encoder400.popDebugGroup();
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
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const command_buffer401 = command_encoder401.finish();
    buffer203.destroy()
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_pass_encoder3020.executeBundles([])
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device40.pushErrorScope("internal");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture300.destroy();
    const array7 = new Float32Array([0.75, 1.0, 0.75, -1.0, -1.0, -0.25, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, 0.75, -0.75, -1.0, 0.0, -0.75, 0.5, 0.0, -0.25, -0.5, -1.0, 1.0, 0.0, 0.0, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, -0.25, 0.75, -1.0, 1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, 0.5, -0.75, -1.0, -1.0, 0.0, 0.25, -0.75, 0.0, -0.75, 0.25, 0.75, 0.75, -1.0, -0.5, -0.25, 0.0, 0.5, -1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.5, -0.75, -0.5, -0.25, 0.5, -0.75, 0.75, 0.5, 0.75, -0.75, 0.0, -0.75, 0.0, -1.0, 1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, 1.0, 0.0, 0.5, -1.0, -0.75, ]);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder3020.executeBundles([])
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    texture301.destroy();
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array8 = new Float32Array([0.5, 0.25, -0.5, 1.0, -0.5, 0.0, 0.75, -1.0, 0.5, 0.5, 0.0, -1.0, 1.0, 0.5, 1.0, -0.5, 0.5, -0.5, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, -0.5, 0.25, 0.25, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, -0.25, 0.25, -0.25, -0.5, -0.75, 0.25, 0.5, -0.75, 0.0, -0.25, 1.0, -1.0, -0.5, 0.5, 0.5, 0.0, 0.75, -1.0, 1.0, -1.0, 1.0, 0.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -0.5, -1.0, 0.5, 0.75, -0.5, -0.25, -0.5, -0.25, 1.0, 0.5, 0.5, -0.5, 0.25, -0.5, 1.0, 0.25, 0.25, -0.75, 1.0, 0.5, -0.25, -0.75, -0.5, -0.25, -1.0, 0.5, -0.75, -0.5, ]);
    
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
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query400.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    buffer204.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    query300.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.5, -0.75, 0.0, 0.75, 0.75, 0.25, 1.0, -0.5, 1.0, 0.5, -0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, -0.25, -1.0, -1.0, 0.25, -0.5, -1.0, -1.0, 0.5, 1.0, -0.5, -0.75, -0.75, -0.5, -0.75, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.25, 1.0, 0.75, -1.0, 0.0, -0.25, 1.0, -0.5, 0.0, -0.25, -1.0, -1.0, 0.0, -0.5, -0.25, 0.0, -0.25, -1.0, -0.5, 0.0, -0.75, -1.0, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 1.0, -0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.25, 0.0, 0.25, 0.75, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.0, 0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, 0.75, 0.0, ]);
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    buffer400.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array10 = new Float32Array([0.5, 0.0, 0.5, 0.0, -0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.75, -0.75, -0.75, -0.5, 0.25, 0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -0.75, 0.25, -1.0, -0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.5, -0.5, 0.75, 0.5, -0.5, 1.0, -0.5, -0.75, 0.25, 0.5, 1.0, -0.5, 0.5, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.75, 0.5, -1.0, 0.25, -0.5, -1.0, 0.0, -0.5, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, -1.0, -0.75, -0.75, -1.0, 0.25, -0.5, 0.5, -0.25, 0.5, -0.5, 1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -1.0, -0.25, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device50.destroy();
    
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
    buffer401.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.popDebugGroup();
    command_encoder403.insertDebugMarker("mymarker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture302.destroy();
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
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
    buffer402.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
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
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    texture401.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    render_pass_encoder3010.executeBundles([])
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
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
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    render_pass_encoder3030.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder4030.setPipeline(render_pipeline400);
    render_bundle_encoder402.setPipeline(render_pipeline402);
    render_pass_encoder3010.setStencilReference(1);
    
    
    render_pass_encoder3030.setStencilReference(1);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder404.insertDebugMarker("mymarker");
    render_pass_encoder3010.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder400.popDebugGroup();
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
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
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder4030.popDebugGroup();
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.setPipeline(render_pipeline403);
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    render_pass_encoder4030.insertDebugMarker("marker");
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4030.setStencilReference(1);
    const command_buffer404 = command_encoder404.finish();
    buffer302.destroy()
    render_bundle_encoder400.setPipeline(render_pipeline402);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.setPipeline(render_pipeline302);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.setStencilReference(1);
    
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setStencilReference(1);
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
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
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3020.setPipeline(render_pipeline302);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture403.destroy();
    texture402.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    device40.queue.submit([command_buffer404, ]);
    buffer403.destroy()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder3020.setStencilReference(1);
    query600.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder3030.setPipeline(render_pipeline300);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group300);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
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
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_pass_encoder4030.setBindGroup(0, bind_group401);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    buffer406.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("validation");
    render_pass_encoder4030.insertDebugMarker("marker");
    render_bundle_encoder402.setVertexBuffer(0, buffer401);
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group402);
    compute_pass_encoder6000.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group600);
    compute_pass_encoder4020.dispatchWorkgroups(100);
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
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline401.getBindGroupLayout(0),
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

    compute_pass_encoder4000.setBindGroup(0, bind_group403);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer604, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer604, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder3020.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.setVertexBuffer(0, buffer401);
    render_pass_encoder3010.setPipeline(render_pipeline301);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group302);
    compute_pass_encoder6000.end();
    render_pass_encoder4030.draw(3);
    compute_pass_encoder4000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.popDebugGroup();
    compute_pass_encoder4020.end();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder4030.end();
    render_pass_encoder3010.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer402 = command_encoder402.finish();
    const command_buffer403 = command_encoder403.finish();
    device40.queue.submit([command_buffer403, ]);
    compute_pass_encoder4000.end();
    device60.queue.submit([command_buffer600, ]);
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, command_buffer402, ]);
}