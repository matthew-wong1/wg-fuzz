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
    
    const array0 = new Float32Array([1.0, -0.5, -1.0, 0.5, 0.25, 0.25, -1.0, -0.75, 0.75, -1.0, -1.0, -1.0, 0.5, -1.0, 0.75, -0.75, 0.0, 0.5, -0.75, 0.0, 0.0, 0.5, -0.25, -0.75, -1.0, 0.75, 0.75, -0.75, 0.5, -0.25, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, -0.25, 1.0, -0.25, 1.0, 0.75, 0.5, -0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.5, 0.0, 0.75, -1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 0.0, 0.75, 0.75, 0.25, 0.5, -1.0, 1.0, -0.75, 0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.25, 0.5, 0.0, 0.5, 0.0, -0.75, 0.5, -1.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.75, -0.25, 0.25, -0.25, -0.75, 0.25, 1.0, 0.0, ]);
    
    const array1 = new Float32Array([1.0, 0.25, -0.5, 0.5, -1.0, 1.0, 0.75, 0.75, -1.0, 0.75, 0.75, -0.5, 0.5, 1.0, 1.0, 1.0, -0.5, 0.5, -0.75, -0.5, 0.5, 0.5, -0.25, 1.0, 1.0, -0.5, -0.75, -0.5, 0.0, 1.0, 0.25, 0.25, -0.75, 0.5, 1.0, 0.75, 0.25, 0.75, 0.5, 0.5, 0.0, 0.5, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, 1.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 1.0, 0.5, 0.0, -0.5, 0.0, 0.0, -1.0, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 1.0, 0.75, 1.0, -0.25, 0.5, 1.0, 0.0, -1.0, -0.25, 0.0, 0.75, -0.75, 0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 1.0, 1.0, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    buffer100.destroy()
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array2 = new Float32Array([-0.25, -0.25, 0.5, 1.0, 0.0, 0.0, 0.25, -0.75, -0.5, 0.25, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.5, 0.0, 0.0, -0.5, 0.0, -0.75, 0.75, -0.75, 0.5, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, -0.5, -0.5, 0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 0.5, -0.75, 0.75, -0.5, -1.0, 0.75, -0.25, 0.75, 1.0, 0.5, 0.75, 0.0, -0.5, -0.25, 1.0, 0.75, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, -1.0, 1.0, 0.25, 0.25, -0.5, 0.25, -1.0, -0.5, -0.5, 0.5, -0.75, 0.25, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, 0.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.75, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 0.75, 0.0, 0.75, 0.75, -1.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const array3 = new Float32Array([-0.75, -0.75, -0.25, 0.0, -0.5, 0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.5, 0.25, 0.0, -0.25, -0.5, 0.0, 1.0, 1.0, -0.25, 0.25, -0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.0, 1.0, -0.25, 1.0, 0.0, 0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.0, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.75, 0.5, -0.5, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, -0.75, 0.75, 0.5, -1.0, -0.25, -0.5, 1.0, -0.5, -0.25, 0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, 1.0, 0.25, 0.0, -1.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.75, 0.75, 0.25, -0.25, 0.0, -0.75, -1.0, 0.75, 0.0, 0.0, ]);
    
    
    device00.destroy();
    
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query102.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const array4 = new Float32Array([-0.25, -0.25, -0.5, -1.0, 0.0, -1.0, -0.5, -1.0, -1.0, -0.75, -1.0, -1.0, 0.0, 1.0, 0.0, 0.0, -1.0, -0.75, 0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, -0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 0.5, 0.75, -0.75, -1.0, -0.25, 0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.25, 1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, -0.5, 0.25, -0.25, 0.5, 0.75, -0.25, 0.25, 0.25, 0.0, 0.0, -0.25, 1.0, 1.0, -1.0, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, 0.25, 1.0, -0.5, -0.5, 0.5, -0.25, -0.25, -1.0, -0.5, ]);
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    texture100.destroy();
    
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder101.insertDebugMarker("mymarker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device10.pushErrorScope("validation");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([0.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 0.5, 1.0, -1.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.5, -0.25, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.25, 0.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, 0.25, -0.25, 0.75, -0.25, -0.75, 0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 0.75, -0.75, 0.75, -0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, -0.75, -1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.75, 0.0, -0.5, -0.75, 0.5, -1.0, 0.0, 0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 0.75, 1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 0.25, 0.0, -0.5, ]);
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    
    
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer102.destroy()
    texture101.destroy();
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    
    command_encoder101.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder100.setPipeline(render_pipeline104);
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.clearBuffer(buffer105);
    query100.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    buffer103.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer104.destroy()
    const array6 = new Float32Array([-0.75, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, -0.75, -0.25, 1.0, 0.25, 0.0, -0.75, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -0.25, 0.5, -0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -0.75, 0.0, 0.5, -1.0, 0.25, -0.25, -0.5, 1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 0.0, -0.5, 0.25, 0.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.25, -0.75, 0.0, -0.25, -0.5, -1.0, 0.5, -0.75, -0.75, -0.25, -0.25, -0.75, -0.75, -0.25, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.0, -0.25, -1.0, -0.25, 0.25, -0.25, -0.25, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer105.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    query103.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    buffer101.destroy()
    texture103.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture102.destroy();
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
    query103.destroy()
    device30.pushErrorScope("validation");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    query101.destroy()
    buffer107.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer108.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    query105.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
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
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    query100.destroy()
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    buffer109.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    buffer106.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    query102.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture300.destroy();
    device30.destroy();
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1014, 0);
    device10.queue.writeBuffer(buffer1014, 0, array0, 0, array0.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
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
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer1014, 0, array4, 0, array4.length);
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const array7 = new Float32Array([-0.5, -0.5, 0.25, 1.0, 1.0, 0.75, 0.0, 0.25, 0.5, -0.75, 0.75, 0.75, 0.5, -0.5, 0.0, 0.0, 0.25, -0.25, 0.5, -0.25, 0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, 0.75, -1.0, -1.0, -0.25, -0.25, 1.0, -1.0, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.5, -1.0, 0.75, -0.25, -0.5, 0.0, 0.75, 0.25, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, 0.75, 0.0, 0.5, -1.0, 0.0, -0.25, -0.5, 1.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, -1.0, -0.25, 0.75, 0.0, 0.25, 0.5, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder101.setVertexBuffer(0, buffer1015);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer1014.destroy()
    compute_pass_encoder1030.setPipeline(compute_pipeline108);
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout109,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer1015.destroy()
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query106.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline108.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout108,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1019, 0);
    
    device10.queue.writeTexture({ texture: texture105 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query106.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture104.destroy();
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder1040.setPipeline(compute_pipeline103);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    query102.destroy()
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer1019.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer1013.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
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
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query103.destroy()
    
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group106);
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    buffer1011.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.draw(3);
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout106,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1030.popDebugGroup()
    query101.destroy()
    
    
    compute_pass_encoder1030.end();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1050.setPipeline(render_pipeline106);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer1015);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    render_bundle_encoder102.setPipeline(render_pipeline109);
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    query103.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.draw(3);
    
    device10.queue.writeTexture({ texture: texture105 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1012.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    query102.destroy()
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    command_encoder103.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1040.popDebugGroup()
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1050.setScissorRect(0, 0, texture106.width / 2, texture106.height / 2);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer1010.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query105.destroy()
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1061,
            },
        ],
        occlusionQuerySet: query105
    });
    
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1030.executeBundles([])
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout105]
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setPipeline(render_pipeline105);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer1017.destroy()
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.end();
    query101.destroy()
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder1050.setViewport(0, 0, texture106.width / 2, texture106.height / 2, 0, 1);
    
    
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    query105.destroy()
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer102,
        0
    )
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    texture106.destroy();
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1061,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    buffer1022.destroy()
    
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout109,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline106);
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
        vertex: {
            module: shader_module1010,
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
            module: shader_module1010,
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
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout1023,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query102
    });
    texture200.destroy();
    render_pass_encoder1060.setPipeline(render_pipeline100);
    query102.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group107);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group108);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1027, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1060.setVertexBuffer(0, buffer1015);
    render_pass_encoder1060.drawIndirect(buffer1019, 0);
    render_pass_encoder1060.end();
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group109);
    command_encoder101.popDebugGroup()
    render_pass_encoder1030.setVertexBuffer(0, buffer1015);
    const command_buffer106 = command_encoder106.finish();
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    compute_pass_encoder1020.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    const command_buffer102 = command_encoder102.finish();
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1010);
    render_pass_encoder1000.setVertexBuffer(0, buffer1015);
    render_pass_encoder1000.drawIndirect(buffer1027, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1050.setVertexBuffer(0, buffer1015);
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1014, 0);
    command_encoder100.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1050.end();
    render_pass_encoder1030.end();
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
}