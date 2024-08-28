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
    
    const array0 = new Float32Array([-0.25, 0.0, 0.5, 1.0, -0.25, 0.25, 0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -0.25, -0.75, 0.0, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 0.75, -0.75, 1.0, 0.5, 0.5, 1.0, -0.5, -0.75, 0.5, -0.25, 1.0, -0.5, 1.0, -0.75, 0.5, 0.5, 0.0, 0.75, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, 0.0, 0.0, 1.0, -0.25, -0.5, -1.0, -0.75, -1.0, 0.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.5, -1.0, -0.25, 0.75, -0.25, 1.0, 1.0, 0.75, -1.0, -1.0, 1.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -0.75, -0.25, 0.75, 0.0, -0.5, -1.0, -0.5, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, ]);
    
    const array1 = new Float32Array([0.25, -1.0, -1.0, 0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.25, 1.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.25, -0.25, 1.0, -0.25, 0.75, 0.75, 1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 0.75, 0.0, 0.25, 1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.75, 1.0, -1.0, 1.0, -0.75, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, -1.0, -0.25, -1.0, 0.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.75, 0.25, 0.75, 0.25, -1.0, 0.75, 0.25, -0.75, -0.25, -0.5, 0.75, 0.25, -0.5, -0.75, -0.5, -0.5, -0.25, -1.0, -0.5, -0.25, 0.0, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32uint",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    device00.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    
    
    texture300.destroy();
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    device30.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
        layout: render_pipeline100.getBindGroupLayout(0),
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer200.destroy()
    
    
    device20.pushErrorScope("validation");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.destroy();
    const array2 = new Float32Array([0.25, 0.0, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.0, 1.0, -0.25, 0.25, -1.0, -0.25, -0.75, -0.5, 1.0, -0.75, -0.25, -0.75, -0.5, -0.25, 1.0, -0.5, -0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 0.25, 0.0, 1.0, 0.0, -0.75, -1.0, 1.0, -0.5, -0.75, 0.5, 0.75, 0.25, 0.25, 0.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.75, 0.5, -0.25, 0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 0.0, 0.5, 1.0, 0.75, 0.0, -1.0, 0.0, -0.75, -0.75, -1.0, -0.5, -0.75, -0.75, 1.0, -0.5, 0.25, -0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 0.5, -0.75, -1.0, -1.0, -0.25, 0.25, 1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 0.0, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const command_buffer200 = command_encoder200.finish();
    texture201.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    render_bundle_encoder201.setPipeline(render_pipeline202);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
    
    
    const array3 = new Float32Array([0.5, -1.0, -0.75, 0.0, 0.25, -0.25, -0.5, -0.25, -0.75, -0.25, 0.75, 0.25, 0.75, 0.25, 0.0, -1.0, -0.75, 0.0, 0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.25, -0.75, -0.25, 0.5, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, -0.25, -1.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.75, -0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 0.5, 0.75, -0.25, 0.75, -0.75, -0.75, -0.5, -1.0, -0.25, -0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.5, 0.75, 0.25, 0.25, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 0.25, -0.75, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer201.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device20.pushErrorScope("out-of-memory");
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, ]);
    
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    texture200.destroy();
    const array4 = new Float32Array([-0.25, 0.75, -0.75, 0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.5, -0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 0.75, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, -0.25, -0.75, 0.75, 0.0, -1.0, 0.25, 0.75, -0.5, 0.0, -1.0, 1.0, 0.5, -0.25, -0.5, 0.75, 0.5, -0.25, 0.25, 1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -1.0, 1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.5, 0.75, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, -0.25, -0.75, -1.0, 1.0, 0.25, -0.5, -0.25, 0.25, -1.0, 1.0, -0.5, -0.5, -1.0, 0.5, -0.75, 0.25, -1.0, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -1.0, ]);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
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
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    buffer401.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device40.destroy();
    
    
    const array5 = new Float32Array([0.75, 0.5, 0.0, -0.5, -0.75, 0.25, 1.0, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 0.25, -0.5, 0.25, -1.0, -0.5, 0.25, 0.25, -0.5, 0.25, 0.75, 1.0, -0.25, 0.5, 1.0, 0.5, -1.0, 0.25, -0.75, -1.0, -0.25, 0.5, 0.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.5, 0.75, -0.5, -0.75, 0.25, 0.75, -1.0, -0.25, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, 1.0, 1.0, 0.0, 0.75, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, 0.75, -1.0, -0.25, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, 0.5, 0.5, -0.75, -0.5, -0.25, 1.0, 0.25, 0.0, -0.25, ]);
    query200.destroy()
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    command_encoder201.clearBuffer(buffer204);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    command_encoder201.clearBuffer(buffer204);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer205.destroy()
    
    const array6 = new Float32Array([-0.5, 0.5, 0.0, -1.0, 0.75, -0.75, 0.0, -0.5, 0.75, 1.0, -0.25, 0.0, -0.75, 1.0, 0.25, 0.75, 1.0, -0.75, 0.75, 1.0, -0.5, 0.25, -1.0, -1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 0.0, 0.0, 0.25, -0.5, 0.5, 0.5, -0.5, -0.75, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.5, 0.0, -0.25, 0.25, 0.0, -0.25, 1.0, -0.5, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, -0.5, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.75, 0.0, -0.75, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.0, 0.75, 0.5, 0.25, 1.0, 0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 0.5, -0.25, -0.25, 0.0, 1.0, -0.5, 0.0, 0.5, 0.75, 0.5, ]);
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_bundle_encoder201.popDebugGroup();
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const array7 = new Float32Array([-0.5, 0.0, -0.5, -0.75, 0.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 0.0, -0.25, -0.25, -0.25, 1.0, -0.25, 0.25, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 1.0, 0.75, 0.0, 0.25, 1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.5, 0.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.5, -0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, 0.75, -0.5, 0.25, 0.25, -0.5, -0.25, -0.25, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, 0.75, 0.5, 0.75, -1.0, -0.75, 1.0, -0.75, -0.5, 0.25, -0.25, 0.0, -0.75, 1.0, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array8 = new Float32Array([0.0, 0.75, -1.0, -0.25, 0.5, 1.0, -0.5, -0.75, 1.0, -0.75, -1.0, 0.25, -0.25, -1.0, -0.5, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, -1.0, 0.0, -1.0, 0.75, -0.25, -0.5, -0.75, 0.0, -0.5, -0.5, -0.25, 0.5, -0.5, -0.75, 0.25, 0.5, -0.25, -0.25, -0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -1.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.0, 0.75, 0.75, -0.5, 0.0, 0.25, -0.5, -0.75, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 1.0, 0.25, 0.75, 1.0, 0.75, -0.75, -1.0, 0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    query500.destroy()
    
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    buffer202.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
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
    query500.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    
    
    
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    device50.pushErrorScope("internal");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    command_encoder203.pushDebugGroup("mygroupmarker")
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    query200.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
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
    const command_buffer202 = command_encoder202.finish();
    
    render_pass_encoder2030.setPipeline(render_pipeline2010);
    
    
    
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    
    buffer207.destroy()
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.popDebugGroup();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    
    
    query501.destroy()
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout202,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer501,
        0
    )
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline2010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    const command_buffer501 = command_encoder501.finish();
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout207,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query202.destroy()
    buffer501.destroy()
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
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
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder502.setPipeline(render_pipeline500);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query201.destroy()
    query500.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
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
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    
    
    
    buffer2011.destroy()
    buffer208.destroy()
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/shader_module2011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout200,
        compute: {
            module: shader_module2011,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    
    
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout201]
    });
    query203.destroy()
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.setVertexBuffer(0, buffer502);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
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
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
    texture203.destroy();
    command_encoder502.popDebugGroup()
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
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2030.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder5000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer204 = command_encoder204.finish();
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer501, ]);
}