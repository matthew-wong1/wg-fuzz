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
    
    const array0 = new Float32Array([0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -0.5, -1.0, 0.0, -0.75, 0.75, 0.5, 0.75, -1.0, 0.5, -0.5, 0.0, 1.0, -0.5, 0.5, 0.0, 0.75, -1.0, 0.5, -1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 0.25, 1.0, -0.75, 0.5, 1.0, -1.0, -1.0, 0.25, 0.75, -0.25, 0.0, 0.75, 0.5, 0.5, -0.75, 0.75, -0.25, 0.75, 0.75, -0.25, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, -0.25, 0.0, 0.5, 0.25, 0.75, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.75, 0.0, -1.0, 0.25, 0.25, -0.75, 0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.0, ]);
    const array1 = new Float32Array([1.0, -0.5, -0.75, -0.75, 0.0, 0.5, -1.0, 0.25, -0.5, -0.5, 0.75, 0.75, -1.0, 1.0, 0.75, -0.25, 0.5, 0.25, -1.0, 0.5, 1.0, 0.0, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, -0.25, -1.0, 0.5, -0.25, 0.0, 0.5, 1.0, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 0.75, 0.25, -1.0, 0.5, 0.5, -0.5, 0.5, 1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 1.0, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, 0.25, 0.25, -1.0, -1.0, 1.0, 1.0, 0.5, 1.0, 0.25, 0.0, -0.5, 0.75, 0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, 0.0, 0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.5, 0.75, 0.5, 0.75, 0.25, -1.0, 0.75, 0.75, 0.5, 0.75, 0.75, -1.0, ]);
    const array2 = new Float32Array([0.5, -0.5, 1.0, -0.5, -0.75, 1.0, 0.75, 0.25, 0.75, 0.75, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.25, -0.25, 0.5, 0.75, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.5, 1.0, 0.25, -1.0, 0.0, 0.5, 1.0, 0.25, -0.25, 0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.75, -0.25, -0.5, 0.75, -0.75, 0.25, 0.5, -0.25, 0.0, 1.0, -1.0, -0.25, 0.0, 0.75, -0.75, -0.75, -0.5, -0.25, -0.5, -0.5, 0.75, -0.5, -0.25, -0.25, -0.75, 1.0, -0.5, 1.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.25, 0.75, 0.5, 1.0, -1.0, 0.5, 1.0, -0.5, -1.0, 0.75, 1.0, 1.0, 1.0, 0.5, 0.5, 0.0, ]);
    
    const array3 = new Float32Array([0.5, -0.25, 0.0, -0.5, 0.5, -0.5, 0.5, -1.0, -1.0, 0.5, -1.0, -0.5, 0.25, -0.5, -0.75, -0.75, -0.25, 0.0, 1.0, 0.75, -0.75, -0.75, -0.5, 0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -0.5, -1.0, 0.0, -1.0, 0.5, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, 0.75, -0.25, 1.0, 0.75, 0.5, -0.75, 0.5, -0.5, -0.25, -0.25, 0.75, 1.0, 0.5, -0.75, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, -0.75, -0.5, -0.5, 1.0, 1.0, 0.5, -0.25, -1.0, 0.0, 0.75, -0.75, 0.5, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, -0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.5, 0.0, 0.75, 0.75, -0.75, 1.0, 1.0, 0.75, 0.25, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array4 = new Float32Array([0.25, 0.25, 1.0, -1.0, 1.0, -0.5, 1.0, 1.0, 0.0, -0.5, 0.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.0, -1.0, -1.0, 0.5, -0.5, -0.25, 0.75, 0.25, 0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 1.0, -1.0, 0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 1.0, 0.0, 0.75, -0.5, 0.5, -0.75, 0.5, 0.0, 0.5, -1.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.5, 0.25, 0.25, 0.0, -0.75, 0.75, 1.0, -0.75, 0.0, 0.75, -1.0, 0.25, 1.0, 0.5, -0.5, -0.5, 0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, -0.75, 0.0, 0.75, -0.75, 1.0, -0.25, -0.25, -0.5, 0.0, -0.5, 1.0, 0.5, -0.5, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
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
    device00.pushErrorScope("out-of-memory");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    command_encoder001.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    command_encoder001.popDebugGroup()
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture001.destroy();
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array5 = new Float32Array([1.0, 0.75, 0.5, 0.0, -1.0, -0.75, 0.5, -1.0, 0.0, 0.5, 0.75, 0.75, 0.25, 0.0, -0.5, 0.75, 1.0, -0.75, -1.0, 0.0, 1.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -1.0, -0.75, 0.5, 0.25, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, 1.0, -1.0, 0.25, -0.5, -0.5, 0.5, 0.0, -0.75, 0.5, -1.0, 0.25, 0.25, -0.75, -0.25, -0.25, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, -1.0, -0.75, -0.5, 0.25, -1.0, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 0.75, 1.0, 0.0, 0.75, -0.5, -0.25, 0.5, -0.75, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, -0.5, 0.75, ]);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    texture000.destroy();
    
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder003.insertDebugMarker("mymarker");
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    command_encoder004.insertDebugMarker("mymarker");
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group000);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    buffer001.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder004.insertDebugMarker("mymarker");
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
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0030.setPipeline(compute_pipeline003);
    render_bundle_encoder000.setPipeline(render_pipeline007);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.pushErrorScope("out-of-memory");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    const array6 = new Float32Array([-1.0, 0.0, -0.5, 0.5, -1.0, -0.5, 0.25, -0.75, -0.75, -1.0, -0.5, 0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -0.75, -0.5, 0.75, -0.5, -0.5, 0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, -0.5, -0.5, -1.0, -0.5, -0.5, -1.0, 0.75, 0.0, 0.5, 1.0, 0.0, 0.5, -1.0, -0.5, 0.0, -0.75, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, -0.25, -1.0, -0.5, -0.75, 1.0, -0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 0.5, 0.25, 0.0, 1.0, 0.0, -1.0, -1.0, 0.0, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, -0.5, -0.25, 0.75, 0.25, 0.5, -0.5, 0.75, 0.25, ]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder004.popDebugGroup()
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    buffer003.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_buffer004 = command_encoder004.finish();
    
    
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    buffer000.destroy()
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
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0050.setPipeline(compute_pipeline001);
    query000.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.setPipeline(render_pipeline0011);
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    compute_pass_encoder0020.popDebugGroup()
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    texture003.destroy();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
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
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0060.setPipeline(render_pipeline0016);
    buffer002.destroy()
    
    compute_pass_encoder0020.end();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.executeBundles([])
    const array7 = new Float32Array([-1.0, -0.25, 0.75, 0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 0.0, -0.75, -0.75, 1.0, -1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.25, 0.75, -0.5, -1.0, 1.0, -1.0, -0.25, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, 0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 1.0, -1.0, 0.25, 0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.75, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, -0.75, -0.5, -0.75, -1.0, -1.0, -0.75, 0.75, 0.5, -0.5, -1.0, 0.75, 0.5, -0.25, -1.0, -0.5, 1.0, 1.0, -0.25, 0.25, -1.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, -0.25, -1.0, 0.0, -1.0, -0.75, 0.25, -1.0, -0.75, 0.75, 0.0, 0.75, 0.25, 1.0, -0.5, ]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group003);
    render_pass_encoder0020.setPipeline(render_pipeline0011);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder0060.insertDebugMarker("marker");
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
        layout: render_pipeline0011.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
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
    buffer006.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.setStencilReference(1);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group005);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.end();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    buffer0013.destroy()
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
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
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    buffer005.destroy()
    render_pass_encoder0060.insertDebugMarker("marker");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout009,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline0016);
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0017, 0);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array2, 0, array2.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline0016);
    
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    device00.queue.writeBuffer(buffer0017, 0, array1, 0, array1.length);
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0017, 0, array3, 0, array3.length);
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0024 = device00.createRenderPipeline({
        label: "render_pipeline0024",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const render_pipeline0025 = device00.createRenderPipeline({
        label: "render_pipeline0025",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const render_pipeline0026 = device00.createRenderPipeline({
        label: "render_pipeline0026",
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
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer0017, 0, array4, 0, array4.length);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline0016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group006);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline0011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group007);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    buffer007.destroy()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0022, 0);
    buffer0020.destroy()
    render_pass_encoder0060.setStencilReference(1);
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    
    
    device00.pushErrorScope("validation");
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline0016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group008);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const render_pipeline0027 = device00.createRenderPipeline({
        label: "render_pipeline0027",
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer0022, 0, array4, 0, array4.length);
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0022, 0, array1, 0, array1.length);
    texture004.destroy();
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    
    
    device00.queue.writeBuffer(buffer0017, 0, array5, 0, array5.length);
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer0022, 0, array5, 0, array5.length);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0022, 0, array7, 0, array7.length);
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout006,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture002.destroy();
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer0015.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0022, 0, array5, 0, array5.length);
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout008,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    query002.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const render_pipeline0028 = device00.createRenderPipeline({
        label: "render_pipeline0028",
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
    device00.queue.writeBuffer(buffer009, 0, array5, 0, array5.length);
    
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout008,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout005]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    buffer0019.destroy()
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array5, 0, array5.length);
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    query005.destroy()
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.end();
    query005.destroy()
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline0016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group009);
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    
    buffer0011.destroy()
    device00.queue.writeBuffer(buffer0022, 0, array6, 0, array6.length);
    
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer0017, 0, array4, 0, array4.length);
    const compute_pipeline0095 = device00.createComputePipeline({
        label: "compute_pipeline0095",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0096 = device00.createComputePipeline({
        label: "compute_pipeline0096",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0097 = device00.createComputePipeline({
        label: "compute_pipeline0097",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0098 = device00.createComputePipeline({
        label: "compute_pipeline0098",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0099 = device00.createComputePipeline({
        label: "compute_pipeline0099",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array5, 0, array5.length);
    const compute_pipeline00100 = device00.createComputePipeline({
        label: "compute_pipeline00100",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00101 = device00.createComputePipeline({
        label: "compute_pipeline00101",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0050.setPipeline(render_pipeline0020);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0060,
            },
        ],
        occlusionQuerySet: query003
    });
    
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0060.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0070.setPipeline(render_pipeline007);
    const compute_pipeline00102 = device00.createComputePipeline({
        label: "compute_pipeline00102",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline00103 = device00.createComputePipeline({
        label: "compute_pipeline00103",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    device00.queue.writeBuffer(buffer0017, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer0017, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    compute_pass_encoder0030.end();
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group0010);
    command_encoder008.popDebugGroup()
    command_encoder003.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline0020.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0011);
    const command_buffer003 = command_encoder003.finish();
    device00.queue.submit([command_buffer004, ]);
    const command_buffer008 = command_encoder008.finish();
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, command_buffer008, ]);
}