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
    const array0 = new Float32Array([0.75, 0.5, 0.0, 0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -1.0, 0.0, -0.75, -0.75, -0.25, 0.25, -0.25, 1.0, 0.0, -0.5, -1.0, -0.5, -1.0, -0.25, -0.25, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, 0.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.5, 0.0, 0.75, 0.75, 0.5, 0.0, 1.0, -1.0, -1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, 1.0, -0.5, -1.0, -1.0, 0.25, -0.5, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, -0.75, 0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.5, -0.25, 0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.5, -0.75, -0.5, -0.25, 0.75, 0.25, 0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.0, 0.5, -0.25, -0.25, 1.0, 0.0, -1.0, 0.5, 0.5, 0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -0.5, -0.75, -0.5, -0.25, 0.75, 0.5, 0.5, -1.0, 0.25, 0.0, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, -0.25, -0.75, -0.5, 1.0, -0.5, 0.5, 0.75, 0.25, -0.25, -0.75, 0.25, 0.75, -0.75, -1.0, 0.0, 0.75, -0.75, 0.75, -0.75, 0.75, -1.0, -0.75, -0.25, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, 0.25, -0.75, 0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.5, -1.0, -0.25, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array2 = new Float32Array([0.25, -1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.25, 0.75, -0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 0.0, 1.0, 0.25, -1.0, -1.0, 0.25, -1.0, 0.5, 0.5, 0.75, 0.75, -0.5, -0.25, -0.25, -1.0, -0.25, 0.25, 1.0, -1.0, 0.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.0, -0.75, 0.75, 0.5, 0.75, 0.25, -0.25, 0.5, -0.5, -1.0, 0.75, 0.75, -0.25, -1.0, -0.5, 0.75, -0.5, 0.5, -1.0, -0.75, 0.75, 0.75, -1.0, 0.0, -0.5, -0.25, 0.75, 1.0, -1.0, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, -0.25, -1.0, -0.25, -1.0, 0.25, -0.75, 0.75, -0.25, 1.0, 0.75, 0.0, 0.0, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, 0.0, -0.5, -0.25, 0.75, -0.25, 0.0, 0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture000.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    compute_pass_encoder1000.popDebugGroup()
    device10.pushErrorScope("out-of-memory");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture002.destroy();
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder102.pushDebugGroup("mygroupmarker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
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
    buffer100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_buffer101 = command_encoder101.finish();
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    buffer000.destroy()
    texture003.destroy();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    command_encoder000.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    query001.destroy()
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    render_bundle_encoder101.popDebugGroup();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.submit([command_buffer101, ]);
    
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
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    buffer101.destroy()
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_pass_encoder0000.setPipeline(render_pipeline001);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([0.75, 0.0, -1.0, -0.5, 0.25, 0.75, 0.0, 1.0, 1.0, 1.0, 0.25, 0.5, 0.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.0, 1.0, 0.25, 1.0, 1.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, 0.5, -0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.0, 0.25, 0.25, 0.5, -0.25, 1.0, 0.25, 0.75, -1.0, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 0.5, 0.0, -0.5, -0.5, 1.0, -0.25, -1.0, -0.5, -0.75, -0.25, -0.75, 0.75, -0.75, -1.0, 0.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, -1.0, -1.0, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const array4 = new Float32Array([-0.5, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -0.5, 0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.25, -0.25, 0.25, -0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.75, -1.0, 0.75, 0.0, -0.75, 0.25, 0.75, 0.25, 0.75, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, -1.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.75, 0.25, -0.25, -0.25, -1.0, -1.0, -1.0, 0.5, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, 0.5, -1.0, -0.75, 0.75, -0.75, 0.5, 0.25, 0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 0.5, 0.0, -0.5, 1.0, -1.0, 1.0, 0.25, 0.25, 0.0, 0.75, 0.5, 0.5, -0.75, 0.0, 1.0, -0.75, 0.0, 0.0, -0.25, 0.0, 0.5, -0.5, 0.25, 0.75, 0.25, ]);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query002.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const array5 = new Float32Array([-0.25, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, -0.75, -0.25, 0.75, 0.0, 0.5, -0.25, 1.0, 0.0, -0.75, 1.0, -1.0, 1.0, 1.0, 0.75, 0.75, -0.75, 1.0, -0.5, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 0.0, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.25, -1.0, 0.25, -0.75, 0.25, 1.0, 0.0, -1.0, 1.0, -0.25, -0.75, 1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -0.5, 1.0, -0.5, 1.0, 0.5, 0.75, 0.5, 0.25, 0.25, -0.5, 0.0, -0.25, -0.5, -0.25, 0.0, -0.5, -0.75, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, 1.0, ]);
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group000);
    compute_pass_encoder1020.popDebugGroup()
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    query002.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    query100.destroy()
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0010.setStencilReference(1);
    device10.pushErrorScope("out-of-memory");
    texture001.destroy();
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    device30.destroy();
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array6 = new Float32Array([1.0, 1.0, 0.75, 1.0, 0.5, 0.0, 0.5, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, 0.5, 1.0, 0.25, 0.25, 0.75, -1.0, 0.5, 0.5, -0.75, 0.75, 0.5, 1.0, -0.75, -0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, -1.0, -0.75, 0.25, 1.0, -0.75, -0.75, -0.75, -0.75, 0.25, -1.0, -0.5, 0.75, -0.75, 0.25, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 0.0, 1.0, -1.0, -0.75, -0.25, 0.25, 1.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -0.75, 0.0, 0.25, 0.25, 0.75, -0.5, -0.25, -0.75, 1.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, -0.75, 0.0, 1.0, -1.0, 0.75, 0.0, -1.0, 0.0, 0.25, ]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder105.insertDebugMarker("mymarker");
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1020.popDebugGroup()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1030.setPipeline(compute_pipeline102);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query000.destroy()
    device10.queue.submit([command_buffer105, ]);
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
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
    texture101.destroy();
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
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
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
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
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    
    render_pass_encoder0000.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer107, 0);
    
    buffer102.destroy()
    texture100.destroy();
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline005);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1030.popDebugGroup()
    query003.destroy()
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    render_pass_encoder0000.popDebugGroup();
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline104);
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline105);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query002.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group002);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    render_bundle_encoder002.setPipeline(render_pipeline001);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    
    buffer002.destroy()
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    query002.destroy()
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setStencilReference(1);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    query100.destroy()
    buffer003.destroy()
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query002.destroy()
    buffer103.destroy()
    
    render_bundle_encoder101.popDebugGroup();
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.setStencilReference(1);
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group004);
    
    buffer104.destroy()
    buffer004.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    buffer008.destroy()
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    query100.destroy()
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
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
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    buffer109.destroy()
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
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

    render_bundle_encoder101.setBindGroup(0, bind_group103);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    query100.destroy()
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0010.setStencilReference(1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    buffer006.destroy()
    texture004.destroy();
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder106.clearBuffer(buffer107);
    query004.destroy()
    
    
    buffer107.destroy()
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.pushErrorScope("internal");
    render_pass_encoder0000.popDebugGroup();
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module107,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module107,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    buffer105.destroy()
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    compute_pass_encoder1030.popDebugGroup()
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout107,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([1.0, 0.25, -0.75, 1.0, -0.5, -1.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.5, -0.75, -0.25, 0.75, 0.5, -0.75, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.25, -0.5, -1.0, 1.0, 0.0, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 1.0, -0.5, 0.5, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, 0.75, 0.75, -0.5, 0.5, -0.25, 0.75, -0.75, -1.0, -1.0, -1.0, -0.75, -0.5, -0.25, 0.5, -0.5, 0.0, 0.25, -0.25, 0.0, -0.5, 1.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, -1.0, -0.25, 1.0, 1.0, 0.75, -1.0, 0.75, -0.25, 0.25, 0.5, -0.25, -0.25, -0.75, -0.75, -0.75, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    const command_buffer107 = command_encoder107.finish();
    render_pass_encoder0000.setVertexBuffer(0, buffer0011);
    compute_pass_encoder1040.end();
    render_pass_encoder0020.draw(3);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
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
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer107, ]);
    render_pass_encoder0020.popDebugGroup();
    command_encoder104.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    compute_pass_encoder1030.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer103, ]);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group005);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer000, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    command_encoder100.popDebugGroup()
    render_pass_encoder0030.end();
    command_encoder000.popDebugGroup()
    const command_buffer002 = command_encoder002.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer104, ]);
    const command_buffer000 = command_encoder000.finish();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder0010.end();
    const command_buffer003 = command_encoder003.finish();
    const command_buffer001 = command_encoder001.finish();
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group106);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device10.queue.submit([command_buffer106, ]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1020, 0);
    compute_pass_encoder1020.end();
    command_encoder102.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
}