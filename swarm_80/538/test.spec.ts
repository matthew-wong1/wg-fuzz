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
    const array0 = new Float32Array([-0.75, -1.0, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.75, 0.75, 0.0, 1.0, 1.0, 1.0, 0.75, 0.5, -0.5, -1.0, 0.5, -1.0, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, 0.5, -0.25, 1.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.25, -0.75, 0.25, 0.75, -1.0, 0.75, -0.5, -0.25, 0.5, 0.75, -1.0, -0.5, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, -0.75, 1.0, 0.0, -0.5, 1.0, -0.75, -0.25, -1.0, -0.25, -0.5, 0.0, ]);
    const array1 = new Float32Array([-0.75, -0.75, 0.5, -0.75, 0.25, 0.75, 0.0, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -0.5, -0.25, 0.75, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 0.75, 0.25, 0.5, -0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 1.0, 0.25, -0.75, -0.75, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 1.0, 0.5, 0.75, 1.0, 0.25, 1.0, -0.75, -0.5, -0.25, -1.0, -0.25, -1.0, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.5, -1.0, 0.5, -0.25, 0.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.75, 0.25, -1.0, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.0, 0.25, 0.75, 0.0, 1.0, -1.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.0, 0.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.5, 0.5, 0.5, 0.5, -0.75, 0.75, -1.0, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, 0.25, 1.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.5, 0.25, 0.0, 0.5, 0.5, 1.0, -0.5, -0.75, -0.75, -0.25, 0.0, 0.75, 0.75, 0.75, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 0.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.5, -0.5, 0.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.0, 0.0, -0.5, 0.0, -0.25, -0.5, -0.75, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -0.75, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, -1.0, -1.0, -0.5, -0.75, -1.0, 0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const array3 = new Float32Array([-1.0, -1.0, 0.75, 0.25, -0.5, -0.5, 0.5, 0.25, 0.0, 1.0, -1.0, 0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, -0.75, -0.75, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.0, 0.0, 0.25, -1.0, 1.0, 0.0, 0.75, -1.0, -0.25, -0.5, 0.5, 1.0, 1.0, -0.5, 0.5, -1.0, -0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -1.0, 0.75, 0.5, -0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.25, 0.5, 0.0, -0.5, -0.75, -0.75, 0.75, 0.75, 1.0, 0.5, 0.25, -0.75, -1.0, 1.0, -0.75, 0.25, -1.0, 1.0, -0.25, ]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array4 = new Float32Array([-0.75, -0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, 0.5, -0.75, 0.75, 0.75, 0.25, 0.75, -1.0, -0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 0.75, -0.75, -0.25, -0.25, 0.5, 1.0, 1.0, -0.25, -0.25, -0.25, 0.5, -0.5, -0.25, -0.5, 0.25, -1.0, 0.0, 0.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.75, 0.0, -0.5, 0.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.5, -0.25, -0.5, 0.5, -0.75, 0.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, -0.5, -0.25, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, -1.0, 1.0, 0.25, 0.0, -1.0, 0.25, 1.0, -0.75, 0.25, -0.75, -1.0, 0.25, -0.5, -0.25, -0.5, 0.75, -0.25, 0.5, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, 1.0, ]);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    device20.pushErrorScope("internal");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
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
    const array5 = new Float32Array([1.0, -1.0, 0.25, 0.25, 0.0, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.5, 0.0, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 0.25, -0.75, 0.75, 0.0, 0.25, -0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -1.0, -1.0, -0.75, 0.25, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, 0.75, -1.0, 0.0, 0.75, -0.75, -0.5, -0.5, -0.5, 0.25, 1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 0.75, 0.0, 0.0, -0.75, 0.25, -1.0, -1.0, 1.0, 0.75, 0.0, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 0.5, 0.5, -0.75, 0.25, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const array6 = new Float32Array([-0.5, 1.0, 0.5, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, 0.0, 1.0, -0.75, 0.5, -0.75, 0.75, -0.5, 0.5, -0.5, -0.75, 1.0, 0.25, 0.25, -0.5, 0.5, 0.5, -0.25, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -0.25, -0.75, 0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.75, 1.0, 0.0, -0.25, 0.5, 0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, 0.5, -1.0, -1.0, 0.75, -0.5, 1.0, -0.25, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 0.0, -0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, -1.0, 0.75, 0.25, -0.75, -0.25, -0.25, -0.25, 1.0, 0.0, -1.0, 0.0, 0.75, 1.0, 0.75, -0.25, 0.5, -1.0, -0.25, 0.25, -0.75, ]);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
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
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    command_encoder200.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.75, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, -0.75, 0.75, 0.75, 0.5, 1.0, -0.5, 0.0, -0.75, -0.5, 0.75, -0.5, -0.25, -1.0, 1.0, -0.75, -0.75, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, -1.0, 0.75, 0.75, -1.0, -0.25, 1.0, 0.0, 0.25, -0.5, -0.75, 0.25, -1.0, -0.25, -1.0, 0.0, 0.75, -0.75, 1.0, 0.0, -0.75, 1.0, -0.5, 0.75, -0.5, -0.75, -0.75, -1.0, 0.75, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.0, -0.75, -0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, -0.25, -1.0, 0.25, -0.25, 0.25, 0.75, 0.5, -1.0, 0.5, 0.75, -0.5, 1.0, -0.5, ]);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    command_encoder200.insertDebugMarker("mymarker");
    
    
    
    query201.destroy()
    
    const command_buffer201 = command_encoder201.finish();
    
    
    query101.destroy()
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    const command_buffer100 = command_encoder100.finish();
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    device10.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    query204.destroy()
    
    query101.destroy()
    
    
    
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    query101.destroy()
    query204.destroy()
    
    query201.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    render_bundle_encoder201.setVertexBuffer(0, buffer208);
    
    
    query102.destroy()
    query100.destroy()
    const array8 = new Float32Array([-0.75, 0.25, -0.25, 1.0, 0.75, -0.5, -0.5, 0.0, 0.0, -0.5, 0.25, 1.0, -1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 1.0, 0.25, -1.0, 1.0, -0.25, 0.0, -0.75, 0.5, 0.0, 0.25, 0.0, 1.0, -0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -0.75, 0.25, 0.0, -0.25, -0.75, 0.0, 0.5, 0.25, -0.75, -0.5, -0.25, 1.0, 0.25, 0.25, -0.75, 0.75, -1.0, -1.0, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, 0.75, 0.0, -0.75, 0.25, -1.0, -1.0, -0.5, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, -1.0, 0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.0, 0.75, 0.5, ]);
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    render_bundle_encoder201.draw(3);
    
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_buffer202 = command_encoder202.finish();
    const command_buffer203 = command_encoder203.finish();
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_bundle_encoder202.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
    
    query103.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    query101.destroy()
    query101.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    query103.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query205.destroy()
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    
    
    query100.destroy()
    
    
    query201.destroy()
    query100.destroy()
    query200.destroy()
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    command_encoder204.pushDebugGroup("mygroupmarker")
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    
    query203.destroy()
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder101.insertDebugMarker("mymarker");
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query207.destroy()
    
    
    
    
    
    device20.queue.submit([command_buffer202, ]);
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
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    
    
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
    
    
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    query102.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query208.destroy()
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query209 = device20.createQuerySet({
        label: "query209",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_bundle_encoder200.setVertexBuffer(0, buffer208);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.setIndexBuffer(buffer2012, "uint16");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    query207.destroy()
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    query104.destroy()
    command_encoder205.insertDebugMarker("mymarker");
    
    const render_pipeline2017 = device20.createRenderPipeline({
        label: "render_pipeline2017",
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
    render_bundle_encoder200.setIndexBuffer(buffer2012, "uint16");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    query204.destroy()
    query205.destroy()
    query200.destroy()
    command_encoder206.pushDebugGroup("mygroupmarker")
    
    device10.queue.submit([command_buffer100, ]);
    
    const render_pipeline2018 = device20.createRenderPipeline({
        label: "render_pipeline2018",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const query2010 = device20.createQuerySet({
        label: "query2010",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.drawIndexed(3);
    
    
    
    
    
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_pipeline2019 = device20.createRenderPipeline({
        label: "render_pipeline2019",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    query100.destroy()
    
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
    
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query2010.destroy()
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder205.insertDebugMarker("mymarker");
    const render_pipeline2020 = device20.createRenderPipeline({
        label: "render_pipeline2020",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    query200.destroy()
    
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const render_pipeline2021 = device20.createRenderPipeline({
        label: "render_pipeline2021",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const array9 = new Float32Array([0.5, 0.25, 0.0, -1.0, 0.5, 1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, -0.5, -0.5, -0.75, 0.5, 0.25, 0.75, 0.75, -0.5, 0.75, 0.0, 0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 0.75, -0.5, -1.0, -0.5, -1.0, -0.5, -0.5, 1.0, 0.75, -0.75, -0.75, 0.5, 0.75, -0.75, 0.75, 0.5, 0.75, 0.5, 1.0, -0.25, -0.75, 0.75, 0.75, -1.0, 0.75, 0.5, 1.0, 0.5, 1.0, 1.0, -0.75, 0.0, 0.5, -1.0, 0.0, -0.75, -1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 0.75, -0.75, -0.25, -0.5, -0.5, -0.25, -0.5, -0.5, 0.0, -1.0, 0.5, 1.0, -0.25, 0.0, -0.25, 0.0, -0.25, -0.5, -0.5, -1.0, 1.0, -0.5, 0.25, 0.5, 0.75, 0.0, 1.0, 0.5, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const render_pipeline2022 = device20.createRenderPipeline({
        label: "render_pipeline2022",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    command_encoder101.insertDebugMarker("mymarker");
    
    const render_pipeline2023 = device20.createRenderPipeline({
        label: "render_pipeline2023",
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
    
    const render_pipeline2024 = device20.createRenderPipeline({
        label: "render_pipeline2024",
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
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    query100.destroy()
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    
    
    
    query102.destroy()
    query101.destroy()
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    const render_pipeline2025 = device20.createRenderPipeline({
        label: "render_pipeline2025",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query208.destroy()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    
    
    
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
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    
    query208.destroy()
    query209.destroy()
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const render_pipeline2026 = device20.createRenderPipeline({
        label: "render_pipeline2026",
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
    
    
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const command_buffer207 = command_encoder207.finish();
    device20.queue.submit([command_buffer207, ]);
}