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
    
    const array0 = new Float32Array([-1.0, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.75, 0.0, -1.0, -0.5, -1.0, 0.0, 0.0, -0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 0.75, -0.5, 0.75, 0.5, 1.0, -0.25, 0.25, 1.0, 0.5, -0.5, -0.25, 0.0, 0.5, 0.75, 1.0, -1.0, 0.25, 0.0, 0.5, 1.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.0, 0.0, -0.75, 0.25, -0.75, 0.75, 0.25, -0.5, -1.0, -1.0, -1.0, 0.0, -0.25, 0.5, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, -0.75, 0.25, 0.5, 0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -1.0, 1.0, -1.0, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.5, -0.75, 0.0, -0.25, 0.5, -0.25, -0.25, 0.0, 0.0, -1.0, -1.0, 0.75, -1.0, 1.0, 0.75, -0.75, -1.0, 0.5, 1.0, -0.25, -0.75, 0.75, 0.25, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, 0.25, -1.0, -0.25, -0.75, 0.25, 1.0, -0.25, -0.75, 0.0, -1.0, -0.25, -0.75, 0.5, 0.0, 0.5, -0.25, -1.0, -0.5, 0.5, 0.5, -0.75, -0.75, 0.5, 0.25, -0.75, -0.5, 0.75, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, 1.0, -1.0, -0.5, 1.0, -1.0, 0.25, -0.75, -0.75, 0.0, 0.25, 0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 1.0, 1.0, 0.25, 0.5, -0.75, 0.5, 0.75, 0.75, -0.5, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, 0.25, 0.5, 0.25, -0.75, 0.75, 0.5, 0.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.25, -0.5, -0.25, -1.0, 1.0, -1.0, -0.25, -0.75, 0.5, -1.0, 0.0, -0.25, 0.5, 0.5, 0.0, -0.25, 1.0, 0.5, 1.0, 1.0, 0.5, 0.5, -1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 0.0, 1.0, 0.5, 0.5, -0.5, -0.5, -0.25, 1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.75, 0.0, 0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, 1.0, 0.25, -0.25, -0.75, 0.25, -1.0, -0.25, -0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.25, -0.25, -0.5, -0.25, -0.25, 0.0, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, 0.0, 0.75, -0.75, -0.25, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    device00.pushErrorScope("validation");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder101.popDebugGroup();
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
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.destroy();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const array3 = new Float32Array([0.0, -1.0, 0.25, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, -0.75, -0.25, 1.0, 0.0, 1.0, 1.0, 0.75, 0.75, -0.5, -0.5, -0.25, -0.5, 0.5, -0.5, 1.0, -0.25, 1.0, -1.0, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, 0.25, 0.25, 1.0, -0.5, 0.0, 0.5, -0.25, -0.75, 0.0, -0.25, -0.5, 0.5, 0.25, -0.5, -1.0, -0.5, 0.5, 1.0, 1.0, 0.5, 0.5, -0.25, 0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.0, 0.0, 1.0, -1.0, 0.75, 0.25, -0.75, -1.0, 0.0, -0.25, -0.5, -0.25, 0.75, 1.0, -0.75, -0.25, -0.75, -1.0, -0.75, -0.25, 0.75, -0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 0.0, 0.5, ]);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const array4 = new Float32Array([0.5, -0.5, 1.0, 1.0, -0.5, 0.25, 0.0, 0.0, 1.0, 0.5, 1.0, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -0.5, 0.5, 0.0, 0.25, 1.0, -0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 0.0, 1.0, 0.5, 0.25, 0.25, -0.25, 0.75, -0.75, 0.0, 0.75, 0.0, -0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.5, 0.25, -1.0, 0.5, -0.75, 1.0, 0.0, -1.0, -0.75, -0.25, 0.25, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, 0.75, 0.25, -0.5, 0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -1.0, 0.0, 0.25, 0.75, -0.25, -0.25, -1.0, -0.25, 0.0, -1.0, 0.5, 1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.25, -1.0, -0.75, 0.25, 0.0, -0.5, 0.25, ]);
    const command_buffer000 = command_encoder000.finish();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    query101.destroy()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
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
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    
    device00.queue.submit([command_buffer000, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    
    
    query101.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    texture101.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    query101.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query100.destroy()
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.executeBundles([])
    query102.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query102.destroy()
    
    
    render_bundle_encoder100.draw(3);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder000.popDebugGroup();
    device10.pushErrorScope("internal");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout004]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder100.popDebugGroup();
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    query000.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.finish();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    buffer101.destroy()
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    const array5 = new Float32Array([0.0, 0.0, 0.25, 0.5, 0.5, -0.5, -0.5, 1.0, 1.0, -0.5, -0.25, 0.0, 0.75, 0.0, 0.25, 0.5, 0.25, 0.75, 1.0, 1.0, 0.0, -1.0, 0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 1.0, 1.0, 0.5, 0.0, -1.0, 0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 0.75, -0.25, 0.5, -1.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.5, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, -0.5, 0.25, -0.75, 0.5, -0.75, 0.0, 0.0, 0.0, 0.75, -0.75, -1.0, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.75, -0.25, 0.25, 0.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, 0.0, 0.75, 0.5, -0.5, 0.75, -0.5, 0.0, 0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.75, 0.5, -0.25, 1.0, ]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device30.destroy();
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    const array6 = new Float32Array([-0.75, 1.0, 0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.5, 0.25, -1.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.5, 0.25, 0.25, 1.0, -0.75, -0.25, 1.0, -0.25, 0.5, 0.75, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, 0.5, -1.0, -1.0, 1.0, -0.5, -0.5, 0.25, -0.5, 1.0, 0.0, 0.5, -0.25, -0.75, 0.0, 1.0, -0.75, -0.75, 0.25, 0.75, 0.25, -0.75, 0.75, -0.5, 0.0, 0.75, 1.0, -0.75, 0.5, 0.5, 0.25, -0.25, 0.75, 0.75, 1.0, 1.0, 0.75, 0.5, 1.0, 0.5, 0.5, -0.5, 1.0, -0.25, -0.75, 0.75, 0.0, -0.25, 0.5, -0.75, 0.75, 0.75, -0.25, 0.0, 0.5, 0.5, 1.0, -0.25, -0.75, ]);
    const command_buffer400 = command_encoder400.finish();
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_buffer001 = command_encoder001.finish();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    device00.pushErrorScope("validation");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([-0.5, 0.25, 0.0, -0.75, 0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -0.25, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 0.75, -0.5, 0.25, 0.5, 0.0, 0.25, -0.75, 0.0, 0.25, 1.0, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -0.5, -0.75, 0.0, 0.75, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, 0.25, 0.0, -0.25, 0.5, 1.0, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.5, -0.75, 0.5, -1.0, 0.75, 0.75, -1.0, -0.5, -0.25, 1.0, -0.75, 0.0, 0.25, 0.75, 0.75, 0.75, -0.5, -0.75, -0.75, 0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, 0.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.5, 0.25, 1.0, -0.25, -0.25, 0.75, 0.75, 0.25, -0.25, -0.5, ]);
    command_encoder002.insertDebugMarker("mymarker");
    texture103.destroy();
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1010.setStencilReference(1);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer100, ]);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer102.destroy()
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    command_encoder002.popDebugGroup()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_pass_encoder1010.popDebugGroup();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    query104.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture104.destroy();
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer400.destroy()
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer103.destroy()
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
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
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.25, 0.25, -0.5, -0.75, -0.5, 0.0, -0.75, -1.0, 0.5, -0.75, 0.75, -0.25, -0.5, 0.25, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, -1.0, -0.75, 0.75, -1.0, 0.0, 0.25, -0.75, -0.25, -0.5, -0.75, 0.0, -0.25, -0.5, -0.5, 0.0, 0.5, -0.75, -0.5, 0.25, 0.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.75, -0.25, 1.0, -0.5, 0.0, 1.0, 0.75, -0.25, -0.5, -0.75, -0.5, -0.75, 0.75, -0.25, -0.75, 0.5, 1.0, -0.25, -0.5, 0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, -0.5, 0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -0.75, 0.25, -0.25, -0.75, 1.0, -0.5, 0.75, 0.5, -0.5, 0.5, -0.75, -1.0, -0.75, -0.25, -1.0, ]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.5, -0.75, -0.25, -0.5, 0.75, -0.5, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, 0.25, 0.25, -1.0, -0.75, 0.0, -0.25, 0.25, -0.5, 0.75, -1.0, -1.0, -1.0, 1.0, -1.0, 0.0, 0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, -0.5, -0.75, -0.75, 0.75, -1.0, 0.25, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.75, 0.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 1.0, 0.0, 0.0, 0.0, 0.75, -1.0, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, 0.5, 1.0, -1.0, -0.5, 0.75, 0.5, 0.25, -1.0, -1.0, 1.0, 0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, -0.25, 0.5, 1.0, ]);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    buffer104.destroy()
    device40.pushErrorScope("validation");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    query104.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    query102.destroy()
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer106.destroy()
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module401,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module400,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    query104.destroy()
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
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
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query105.destroy()
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout009,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query101.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
        occlusionQuerySet: query000
    });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout006]
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout005]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: query103
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setPipeline(render_pipeline102);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device40.queue.submit([command_buffer400, ]);
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setPipeline(render_pipeline102);
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout002]
    });
    const array10 = new Float32Array([-0.25, 0.0, 0.25, -0.5, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, 0.5, 0.5, -0.5, 0.5, -0.25, 1.0, 0.25, 0.5, -1.0, 1.0, 0.75, -0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 0.75, -1.0, -1.0, -1.0, 1.0, -0.25, 0.25, 0.75, 0.0, -0.75, -0.75, 0.0, -1.0, -0.75, 0.5, -0.25, -0.5, -1.0, -1.0, -0.5, -1.0, 0.5, -0.25, -0.5, -0.75, 0.5, 0.0, 0.75, -0.5, -0.25, -0.25, 0.25, 0.0, 0.25, 0.5, 0.25, -0.25, 1.0, 0.75, 0.75, -0.75, 0.0, -0.5, 0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 1.0, 0.5, 0.0, 0.0, -0.75, 1.0, 0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -0.25, -0.5, 0.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.5, 0.25, 0.75, 1.0, ]);
    render_pass_encoder1020.setPipeline(render_pipeline101);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group104);
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
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1030.setVertexBuffer(0, buffer100);
    render_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setVertexBuffer(0, buffer100);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1030.end();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
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
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    render_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1040.draw(3);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer401, ]);
}