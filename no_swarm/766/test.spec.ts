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
    
    const array0 = new Float32Array([1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.75, -0.25, 0.25, 0.5, 0.75, 0.75, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -1.0, -0.5, -0.5, -1.0, -1.0, 0.25, 0.25, -0.25, -0.5, -0.5, -1.0, 0.5, 0.75, -0.5, -1.0, 0.25, 0.25, -0.25, -0.75, -0.5, 0.75, 1.0, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, -0.25, 0.5, -0.25, -0.75, 0.25, 0.75, 0.0, 1.0, -0.75, 0.0, -0.25, -0.75, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, -0.25, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, -1.0, 0.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, 0.0, 0.25, -1.0, 1.0, 0.25, -0.25, -0.5, -1.0, ]);
    
    const array1 = new Float32Array([0.0, -0.75, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -1.0, 0.25, 0.5, -0.75, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, -0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -1.0, 1.0, 0.5, 0.0, -0.75, -0.25, -0.75, -0.5, -0.25, 0.25, -0.25, -0.5, -0.25, 0.75, 0.25, -1.0, -0.75, 0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.5, -0.5, -1.0, -0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 1.0, -0.5, 0.5, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.75, -1.0, 0.0, -0.75, 0.75, -0.75, 0.0, -0.25, -1.0, -0.75, -0.75, 0.5, 1.0, 0.75, 0.0, ]);
    const array2 = new Float32Array([0.75, -0.5, -0.25, 0.5, 0.75, 0.75, 0.75, 0.75, -0.25, 0.75, 0.75, 0.75, -1.0, -0.5, -0.75, -1.0, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, -0.5, -1.0, -0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, 0.0, 0.0, 0.5, 0.0, 1.0, 0.5, -0.25, -1.0, 0.5, 1.0, -0.5, 0.0, -1.0, 0.25, 1.0, -0.25, -0.75, -0.25, -0.75, -0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -0.75, 0.25, -0.5, 0.25, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, 0.75, -0.5, -0.25, 1.0, 0.25, 0.5, 0.25, -1.0, 0.75, -1.0, 0.25, 1.0, 0.75, -0.75, -0.75, 0.5, -0.25, 0.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    const command_buffer000 = command_encoder000.finish();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.pushErrorScope("validation");
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.submit([command_buffer000, ]);
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder002.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const array3 = new Float32Array([-1.0, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, -0.75, 0.5, 0.25, -0.5, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, -0.5, 1.0, -0.5, 0.0, 0.5, -0.75, 1.0, 0.5, 0.75, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, 0.25, 0.0, 0.75, 0.25, -1.0, 0.0, 0.25, 0.5, 0.5, -0.25, 0.5, -0.25, 1.0, -1.0, 0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, -0.75, 0.5, -1.0, 1.0, 0.0, -1.0, 0.0, 1.0, -0.25, -1.0, 0.25, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, -1.0, 0.0, -1.0, -0.5, -0.5, 0.5, -0.25, 0.75, 0.5, 0.75, -0.5, 0.5, -0.75, -1.0, -0.5, -0.75, 0.75, 0.75, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.0, 0.25, 0.5, 1.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    const array4 = new Float32Array([0.5, -0.25, 1.0, -0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -1.0, 0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, -0.5, 1.0, 0.25, -0.25, -0.5, 0.0, -0.5, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, -1.0, 0.5, -0.5, 0.25, 0.5, 1.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.75, 0.25, -0.5, -0.25, 0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -0.5, 0.0, -1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, -1.0, 0.25, -0.75, -0.25, 0.75, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.5, -0.25, -0.75, -0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 0.75, 0.5, -0.5, 1.0, -0.5, 0.75, 0.5, -0.25, 0.25, -0.5, -0.5, 1.0, 0.75, -0.5, -0.5, 0.25, ]);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer003 = command_encoder003.finish();
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
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
    device10.pushErrorScope("validation");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    query103.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.destroy();
    buffer100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query100.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer001.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    
    
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout003]
    });
    query103.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_pass_encoder1010.setPipeline(render_pipeline103);
    compute_pass_encoder1000.insertDebugMarker("marker")
    query101.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    texture100.destroy();
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
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
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer002.destroy()
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.setPipeline(render_pipeline103);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder0040.setPipeline(render_pipeline002);
    
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer104.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    render_pass_encoder1020.setPipeline(render_pipeline101);
    buffer101.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    compute_pass_encoder0010.setPipeline(compute_pipeline008);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    buffer102.destroy()
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query104.destroy()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    buffer103.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.popDebugGroup();
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_pass_encoder0040.popDebugGroup();
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    query103.destroy()
    query102.destroy()
    render_pass_encoder0050.setPipeline(render_pipeline001);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder000.popDebugGroup();
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
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
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    buffer000.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder0060.setPipeline(render_pipeline0010);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    buffer003.destroy()
    buffer108.destroy()
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    const array5 = new Float32Array([0.75, 0.5, -0.25, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, -0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 0.75, 0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 0.5, 1.0, 0.25, 0.0, -1.0, 0.0, -1.0, -0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.75, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -0.5, -0.25, -1.0, 0.5, -1.0, -1.0, -0.75, 1.0, -0.25, 0.5, 0.75, 0.25, -1.0, 0.25, -1.0, 0.75, 0.25, 0.75, -1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.25, 0.5, 0.5, 0.75, -0.75, 0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, -0.75, -0.75, 0.75, -1.0, -0.75, -0.25, 0.0, ]);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query102.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query104.destroy()
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer105.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    render_bundle_encoder102.popDebugGroup();
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder007.copyBufferToBuffer(
        buffer005,
        0,
        buffer006,
        0,
        400
    );
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    texture000.destroy();
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder007.clearBuffer(buffer006);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder007.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    texture003.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    query103.destroy()
    buffer109.destroy()
    command_encoder007.clearBuffer(buffer007);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture103.destroy();
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0070.setPipeline(render_pipeline007);
    render_pass_encoder0050.setStencilReference(1);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    buffer107.destroy()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group003);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    {
        await buffer007.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer007.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer007.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array5, 0, array5.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    buffer0012.destroy()
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0014, 0);
    render_pass_encoder1020.popDebugGroup();
    const command_buffer008 = command_encoder008.finish();
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group005);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder1010.popDebugGroup();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    compute_pass_encoder0010.popDebugGroup()
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group007);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder1000.end();
    const command_buffer001 = command_encoder001.finish();
    const command_buffer100 = command_encoder100.finish();
    device00.queue.submit([command_buffer001, ]);
    device10.queue.submit([command_buffer100, ]);
}