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
    
    
    
    const array0 = new Float32Array([0.5, 0.5, 1.0, -0.75, -0.75, -0.5, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, 0.25, -0.5, 0.0, -0.75, -0.75, 0.25, 0.75, -0.25, 0.75, 0.5, 0.0, 0.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, 0.5, 1.0, -1.0, -0.75, -0.5, 0.0, -0.5, 0.5, -0.5, -0.25, -1.0, -1.0, 0.0, -0.5, -0.5, 0.5, -0.5, -0.75, -0.5, -0.75, 0.25, 1.0, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.0, -0.25, -1.0, -0.75, 0.5, 0.0, -0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, 0.25, 0.25, -0.5, 0.25, 0.25, -0.25, -1.0, -0.75, 1.0, 0.75, 1.0, 1.0, -0.25, 0.25, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.0, 0.75, 0.25, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const array1 = new Float32Array([0.25, -0.25, 1.0, 0.75, 0.25, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, -0.5, 0.0, 0.5, -1.0, -0.25, 0.25, -0.75, 0.75, -0.75, -0.75, -0.5, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, -1.0, 0.0, 0.0, -0.75, 0.25, 0.75, -0.25, 0.25, -0.25, 0.25, 0.25, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, 0.25, -0.5, -0.25, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.25, -1.0, 0.75, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.5, 1.0, -1.0, -0.75, -0.5, 0.5, -1.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.75, ]);
    const array2 = new Float32Array([-0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, 0.5, -0.25, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, 0.25, -1.0, -0.5, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.75, -0.75, 0.25, 1.0, 0.5, -0.5, 0.75, 0.5, 0.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.0, -1.0, 0.5, -1.0, 0.0, 0.5, 0.5, -1.0, -1.0, -0.75, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.75, -0.75, -1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.5, 0.0, 1.0, -1.0, 0.5, 0.75, 0.75, -0.5, -0.25, -0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.25, -0.75, -0.75, 0.25, 1.0, -0.5, 0.75, 0.75, -0.75, -1.0, -0.75, 1.0, -0.75, 0.5, ]);
    
    
    
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    
    
    
    texture200.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    query200.destroy()
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query200.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array3 = new Float32Array([-0.75, 1.0, 0.0, 0.75, 0.5, 1.0, -1.0, -0.5, -0.25, 1.0, 1.0, 0.75, -0.5, -1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.5, -0.75, -0.75, 1.0, -0.25, -0.75, 0.0, 0.5, -0.25, -0.5, -0.5, 0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 0.0, -0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.5, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -1.0, -0.5, -0.5, 0.25, -0.5, -0.5, 0.5, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, -0.5, 0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -0.5, 0.0, 0.5, -1.0, 0.75, 1.0, -0.75, 0.5, 0.0, -0.5, 0.5, 0.5, -0.5, -0.25, -0.25, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.destroy();
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder700.insertDebugMarker("mymarker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    command_encoder700.popDebugGroup()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.75, 0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.0, -0.25, 0.0, 0.0, -1.0, 1.0, 0.5, -0.25, 0.25, 0.25, 0.0, -1.0, 0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, -0.25, 0.0, 0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.0, 0.0, 0.75, -0.25, 0.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.5, 0.5, -0.5, -0.25, 0.5, -0.75, 0.75, 0.0, -1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.75, 0.25, 0.5, 0.75, 0.5, -0.75, -0.25, 0.75, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, -0.75, 0.0, 0.0, 0.75, 0.25, 0.5, -0.5, -1.0, 0.75, 1.0, 0.5, -1.0, 0.5, -0.75, -1.0, -0.75, ]);
    const command_buffer700 = command_encoder700.finish();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query700.destroy()
    
    
    query201.destroy()
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device90.pushErrorScope("out-of-memory");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    query700.destroy()
    
    
    
    query700.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    render_bundle_encoder201.popDebugGroup();
    
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
    device90.destroy();
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query701.destroy()
    render_bundle_encoder200.popDebugGroup();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    buffer701.destroy()
    
    const array5 = new Float32Array([0.25, -0.25, 0.75, -1.0, -0.75, -0.75, 1.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.0, -0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -0.25, 0.0, -0.75, -0.75, 0.25, 0.0, 0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 1.0, 0.0, 1.0, 0.0, 0.5, -0.5, -0.5, 0.5, 0.75, 0.25, -0.25, 0.5, -0.5, -0.25, 1.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -0.25, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, 0.0, 0.5, 1.0, 0.75, -0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 0.25, 0.75, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, -0.5, 0.25, 0.5, -1.0, -0.75, -0.25, 0.25, 0.0, -0.75, 0.5, -1.0, 0.5, 1.0, ]);
    
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
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
    buffer203.destroy()
    
    render_bundle_encoder202.setPipeline(render_pipeline203);
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer700.destroy()
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const array6 = new Float32Array([1.0, -0.5, -1.0, -1.0, -0.75, -0.5, 0.75, 0.5, 0.75, 0.75, 0.0, -0.25, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, -0.75, -1.0, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 1.0, 0.0, -0.75, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, 0.0, -0.25, 0.5, -0.25, -0.25, 0.25, -0.5, 0.5, -0.75, 0.75, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, -0.25, -0.75, 0.75, -1.0, 1.0, -0.5, -0.75, 0.0, 0.25, 1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, 0.0, 0.75, 1.0, -0.25, -0.5, -1.0, 1.0, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 0.5, -0.75, -0.5, -0.5, 0.75, 1.0, 0.25, ]);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer204.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder201.popDebugGroup();
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const command_buffer701 = command_encoder701.finish();
    buffer202.destroy()
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
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
    render_bundle_encoder202.popDebugGroup();
    query700.destroy()
    device20.destroy();
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.pushErrorScope("internal");
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    device100.destroy();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    command_encoder702.popDebugGroup()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    query700.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/shader_module705.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    
    query701.destroy()
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
        powerPreference: "high-performance"
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout703,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    query701.destroy()
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7030.setPipeline(compute_pipeline705);
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout701]
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline705.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    compute_pass_encoder7030.setBindGroup(0, bind_group700);
    
    buffer702.destroy()
    device70.pushErrorScope("out-of-memory");
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout706,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const query705 = device70.createQuerySet({
        label: "query705",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout706,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query706 = device70.createQuerySet({
        label: "query706",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder702.pushDebugGroup("mygroupmarker")
    device70.queue.writeTexture({ texture: texture700 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout701,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.75, -0.5, -0.75, -1.0, 0.5, 0.0, -0.75, 0.5, 1.0, -0.75, -0.75, -1.0, 0.25, 0.5, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, -1.0, 0.75, -0.75, 0.25, 0.0, 0.5, 0.5, -0.75, -1.0, 0.5, 1.0, 0.0, -0.25, -0.5, 0.0, 0.25, 0.75, 0.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.5, -0.25, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, 0.5, 0.0, 0.75, -0.5, 0.5, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, -0.75, -0.5, -1.0, 0.5, 0.5, -0.25, 0.25, -1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 0.5, -0.75, 1.0, -1.0, 0.0, -1.0, 0.75, 0.75, 0.5, -0.25, 0.75, 0.75, 0.0, 0.0, -0.75, ]);
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout702]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer703.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture700.destroy();
    device50.pushErrorScope("internal");
    query700.destroy()
    
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    query702.destroy()
    const query707 = device70.createQuerySet({
        label: "query707",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const command_buffer500 = command_encoder500.finish();
    command_encoder702.popDebugGroup()
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout701,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const query708 = device70.createQuerySet({
        label: "query708",
        type: "occlusion",
        count: 32,
    });
    query706.destroy()
    const compute_pass_encoder7040 = command_encoder704.beginComputePass({ label: "compute_pass_encoder7040" });
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder7040.setPipeline(compute_pipeline7022);
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout704,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
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
    
    buffer500.destroy()
    
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout708,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    
    command_encoder702.insertDebugMarker("mymarker");
    
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout707,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    
    
    
    query704.destroy()
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
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    compute_pass_encoder7020.setPipeline(compute_pipeline7028);
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline7022.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer707,
                },
            },
        ],
    });

    compute_pass_encoder7040.setBindGroup(0, bind_group701);
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7040.insertDebugMarker("marker")
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7040.pushDebugGroup("group_marker")
    
    
    const array8 = new Float32Array([-1.0, 0.5, 0.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, 0.25, 1.0, 0.75, -0.75, -0.25, 0.25, 0.25, 0.75, 0.0, 0.75, 0.0, 0.25, -0.25, 0.5, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, -0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 0.0, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 0.5, 0.25, -1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 0.25, -0.25, 0.75, 0.5, 0.25, -1.0, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -1.0, ]);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout706,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const uint32_7040 = new Uint32Array(3);

    uint32_7040[0] = 100;
    uint32_7040[1] = 1;
    uint32_7040[2] = 1;

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer708, 0, uint32_7040, 0, uint32_7040.length);

    compute_pass_encoder7040.dispatchWorkgroupsIndirect(buffer708, 0);
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const query709 = device70.createQuerySet({
        label: "query709",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query701.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout706,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    query500.destroy()
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7020.popDebugGroup()
    render_bundle_encoder700.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer704.destroy()
    
    
    query709.destroy()
    device70.queue.writeBuffer(buffer708, 0, array5, 0, array5.length);
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout708,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    query705.destroy()
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    
    device70.queue.writeBuffer(buffer708, 0, array5, 0, array5.length);
    query707.destroy()
    query500.destroy()
    
    query701.destroy()
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout703,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const render_pipeline706 = device70.createRenderPipeline({
        label: "render_pipeline706",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout702,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    query707.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    const render_pipeline707 = device70.createRenderPipeline({
        label: "render_pipeline707",
        vertex: {
            module: shader_module706,
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
            module: shader_module706,
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
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout707,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout700,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    device50.pushErrorScope("out-of-memory");
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7030.insertDebugMarker("marker")
    
    
    
    const array9 = new Float32Array([1.0, -0.5, 1.0, 0.0, 0.0, -0.75, -0.75, -0.75, -1.0, -0.25, -0.5, 0.25, -0.5, -1.0, 0.75, 0.0, -0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -0.25, 0.25, -1.0, 0.5, -0.25, -0.25, -0.5, 0.5, 1.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, 0.0, 0.75, 0.0, -1.0, -0.5, 0.75, -0.25, 0.0, -0.5, 0.75, 0.75, 1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, 1.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, 0.75, -0.25, -1.0, 1.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.5, -0.75, 0.25, -0.75, 0.75, -0.5, 0.5, -1.0, 0.75, -0.25, -0.25, -0.5, -0.5, -1.0, -0.25, 0.0, 1.0, ]);
    
    device70.queue.writeBuffer(buffer708, 0, array8, 0, array8.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    compute_pass_encoder7030.dispatchWorkgroups(100);
    buffer709.destroy()
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout708,
        compute: {
            module: shader_module705,
            entryPoint: "main"
        }
    });
    
    query703.destroy()
    
    compute_pass_encoder7030.pushDebugGroup("group_marker")
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder705 = device70.createCommandEncoder({ label: "command_encoder705" });
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    device70.queue.writeBuffer(buffer708, 0, array3, 0, array3.length);
    
    device50.pushErrorScope("validation");
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const command_encoder706 = device70.createCommandEncoder({ label: "command_encoder706" });
    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline7028.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7011,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group702);
    const command_buffer706 = command_encoder706.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const command_buffer705 = command_encoder705.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7040.popDebugGroup()
    compute_pass_encoder7040.end();
    device70.queue.submit([command_buffer706, ]);
    compute_pass_encoder7020.end();
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder7030.popDebugGroup()
    compute_pass_encoder7030.end();
    const command_buffer704 = command_encoder704.finish();
    const command_buffer703 = command_encoder703.finish();
    device70.queue.submit([command_buffer702, command_buffer704, command_buffer705, ]);
    device70.queue.submit([command_buffer703, ]);
}