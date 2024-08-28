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
    
    
    
    
    const array0 = new Float32Array([-0.5, 0.0, -0.75, -0.5, 1.0, -0.25, 0.0, 0.75, -1.0, 0.5, 0.75, -1.0, 0.75, 0.75, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.0, 0.5, 0.0, 1.0, 1.0, 1.0, 0.0, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.25, 0.75, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, -0.75, 0.5, -1.0, 0.75, 1.0, -1.0, -1.0, 1.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, 0.75, 0.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.75, -0.5, 0.5, -0.25, -0.75, -1.0, 0.5, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.popDebugGroup();
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
    device10.pushErrorScope("internal");
    texture101.destroy();
    
    const array1 = new Float32Array([0.75, 0.5, -1.0, 0.5, 0.0, 0.75, -0.5, 0.75, 0.0, -0.75, 0.25, 0.5, -0.5, -0.5, 1.0, 0.75, 0.0, 0.0, -0.5, 0.25, -1.0, -0.75, 0.0, -0.75, 1.0, -0.25, -1.0, 0.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, -1.0, -0.75, 0.25, -0.25, -0.75, -1.0, 0.25, -0.25, 0.25, 0.75, -1.0, 0.0, -1.0, -1.0, 0.25, 1.0, 1.0, -0.75, -0.25, -0.25, 0.5, -0.75, 0.75, 0.5, -1.0, -0.25, 1.0, 1.0, -0.75, -0.5, -0.75, -0.75, -0.5, 0.0, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, 0.5, 0.25, -1.0, -0.5, -0.5, -1.0, 0.5, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.5, 0.0, 0.5, -0.5, ]);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array2 = new Float32Array([-0.25, 0.25, 1.0, -1.0, -0.25, -0.5, 0.75, 1.0, -1.0, -0.25, 0.5, 0.25, -0.75, 0.0, 0.5, 1.0, 1.0, 0.75, 0.0, 0.5, -0.25, -0.5, 0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.0, 1.0, 0.0, -0.75, 0.75, 0.75, -0.25, 0.25, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, -0.75, -1.0, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, 1.0, -1.0, -0.25, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, -0.75, 0.0, -0.75, 0.0, 0.25, -0.25, 0.25, 0.5, -0.75, 0.25, -0.25, 1.0, -1.0, 0.75, 0.0, 0.0, 0.25, -0.5, 0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, ]);
    texture100.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const array3 = new Float32Array([-0.75, -0.5, 0.75, 0.25, -0.75, 0.5, 0.0, 0.25, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -1.0, -0.5, 0.75, 1.0, 0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, 0.75, -0.25, 0.25, 0.75, -0.25, -0.25, 0.0, -1.0, 1.0, -0.25, 0.75, -0.25, 1.0, 0.0, 0.75, -0.75, -0.75, -0.75, 0.5, -0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, -1.0, 0.0, 0.25, 0.5, 1.0, 1.0, 0.25, 0.0, 0.75, 1.0, -0.5, -0.75, -0.5, 0.0, -1.0, -1.0, 1.0, -1.0, -0.5, -0.75, 0.75, 1.0, 0.75, -0.75, -0.25, 0.75, 0.5, 0.75, -0.25, 1.0, 0.5, 1.0, 0.5, 0.5, -0.5, -0.75, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 1.0, 0.25, 0.5, ]);
    command_encoder100.insertDebugMarker("mymarker");
    buffer000.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.insertDebugMarker("mymarker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.75, -1.0, 0.0, 0.5, 0.75, -0.75, 0.25, 0.5, -1.0, 0.75, -0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 0.5, -0.75, -0.25, 0.5, -0.75, 0.75, 0.5, 0.25, -1.0, -1.0, 0.5, -1.0, 0.25, 1.0, -0.75, -0.75, -0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, -1.0, -0.75, 0.75, -0.5, 0.75, -0.25, -0.25, -1.0, 0.5, 0.25, -1.0, 0.75, -0.5, 0.0, -0.25, 0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, -0.75, 0.25, -1.0, 0.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.0, 0.75, 0.5, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, 0.75, 0.75, -0.75, 0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder100.popDebugGroup()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
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
    buffer101.destroy()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    texture102.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    buffer100.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.destroy();
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer106.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
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
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_buffer101 = command_encoder101.finish();
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
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
    buffer102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    buffer104.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout105,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1020.setPipeline(compute_pipeline1013);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    buffer108.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline1013.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    command_encoder100.insertDebugMarker("mymarker");
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout108,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    texture103.destroy();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    buffer1011.destroy()
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer1011,
        0
    )
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout107,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout105,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("validation");
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1076 = device10.createComputePipeline({
        label: "compute_pipeline1076",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1077 = device10.createComputePipeline({
        label: "compute_pipeline1077",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const compute_pipeline1078 = device10.createComputePipeline({
        label: "compute_pipeline1078",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1079 = device10.createComputePipeline({
        label: "compute_pipeline1079",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
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
    
    const compute_pipeline1080 = device10.createComputePipeline({
        label: "compute_pipeline1080",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    const compute_pipeline1081 = device10.createComputePipeline({
        label: "compute_pipeline1081",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1082 = device10.createComputePipeline({
        label: "compute_pipeline1082",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture200.destroy();
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1083 = device10.createComputePipeline({
        label: "compute_pipeline1083",
        layout: pipeline_layout109,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1084 = device10.createComputePipeline({
        label: "compute_pipeline1084",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1085 = device10.createComputePipeline({
        label: "compute_pipeline1085",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1086 = device10.createComputePipeline({
        label: "compute_pipeline1086",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1087 = device10.createComputePipeline({
        label: "compute_pipeline1087",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1088 = device10.createComputePipeline({
        label: "compute_pipeline1088",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline1089 = device10.createComputePipeline({
        label: "compute_pipeline1089",
        layout: pipeline_layout106,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1090 = device10.createComputePipeline({
        label: "compute_pipeline1090",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline1091 = device10.createComputePipeline({
        label: "compute_pipeline1091",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    
    const compute_pipeline1092 = device10.createComputePipeline({
        label: "compute_pipeline1092",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer1013,
        0
    )
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pipeline1093 = device10.createComputePipeline({
        label: "compute_pipeline1093",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline1094 = device10.createComputePipeline({
        label: "compute_pipeline1094",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1095 = device10.createComputePipeline({
        label: "compute_pipeline1095",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline1096 = device10.createComputePipeline({
        label: "compute_pipeline1096",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const compute_pipeline1097 = device10.createComputePipeline({
        label: "compute_pipeline1097",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1098 = device10.createComputePipeline({
        label: "compute_pipeline1098",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1099 = device10.createComputePipeline({
        label: "compute_pipeline1099",
        layout: pipeline_layout106,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder100.popDebugGroup()
    const compute_pipeline10100 = device10.createComputePipeline({
        label: "compute_pipeline10100",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10101 = device10.createComputePipeline({
        label: "compute_pipeline10101",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10102 = device10.createComputePipeline({
        label: "compute_pipeline10102",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10103 = device10.createComputePipeline({
        label: "compute_pipeline10103",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10104 = device10.createComputePipeline({
        label: "compute_pipeline10104",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10105 = device10.createComputePipeline({
        label: "compute_pipeline10105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const compute_pipeline10106 = device10.createComputePipeline({
        label: "compute_pipeline10106",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pipeline10107 = device10.createComputePipeline({
        label: "compute_pipeline10107",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline1095);
    
    const compute_pipeline10108 = device10.createComputePipeline({
        label: "compute_pipeline10108",
        layout: pipeline_layout108,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10109 = device10.createComputePipeline({
        label: "compute_pipeline10109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline10110 = device10.createComputePipeline({
        label: "compute_pipeline10110",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10111 = device10.createComputePipeline({
        label: "compute_pipeline10111",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10112 = device10.createComputePipeline({
        label: "compute_pipeline10112",
        layout: pipeline_layout109,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline10113 = device10.createComputePipeline({
        label: "compute_pipeline10113",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const compute_pipeline10114 = device10.createComputePipeline({
        label: "compute_pipeline10114",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline10115 = device10.createComputePipeline({
        label: "compute_pipeline10115",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10116 = device10.createComputePipeline({
        label: "compute_pipeline10116",
        layout: pipeline_layout109,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10117 = device10.createComputePipeline({
        label: "compute_pipeline10117",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10118 = device10.createComputePipeline({
        label: "compute_pipeline10118",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    const compute_pipeline10119 = device10.createComputePipeline({
        label: "compute_pipeline10119",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline10120 = device10.createComputePipeline({
        label: "compute_pipeline10120",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline10121 = device10.createComputePipeline({
        label: "compute_pipeline10121",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
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
    const compute_pipeline10122 = device10.createComputePipeline({
        label: "compute_pipeline10122",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10123 = device10.createComputePipeline({
        label: "compute_pipeline10123",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10124 = device10.createComputePipeline({
        label: "compute_pipeline10124",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    const compute_pipeline10125 = device10.createComputePipeline({
        label: "compute_pipeline10125",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10126 = device10.createComputePipeline({
        label: "compute_pipeline10126",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10127 = device10.createComputePipeline({
        label: "compute_pipeline10127",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10128 = device10.createComputePipeline({
        label: "compute_pipeline10128",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    const compute_pipeline10129 = device10.createComputePipeline({
        label: "compute_pipeline10129",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline10130 = device10.createComputePipeline({
        label: "compute_pipeline10130",
        layout: pipeline_layout109,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline10131 = device10.createComputePipeline({
        label: "compute_pipeline10131",
        layout: pipeline_layout109,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1014, 0);
    const compute_pipeline10132 = device10.createComputePipeline({
        label: "compute_pipeline10132",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10133 = device10.createComputePipeline({
        label: "compute_pipeline10133",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10134 = device10.createComputePipeline({
        label: "compute_pipeline10134",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    const compute_pipeline10135 = device10.createComputePipeline({
        label: "compute_pipeline10135",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10136 = device10.createComputePipeline({
        label: "compute_pipeline10136",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10137 = device10.createComputePipeline({
        label: "compute_pipeline10137",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer1012.destroy()
    const compute_pipeline10138 = device10.createComputePipeline({
        label: "compute_pipeline10138",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10139 = device10.createComputePipeline({
        label: "compute_pipeline10139",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline10140 = device10.createComputePipeline({
        label: "compute_pipeline10140",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10141 = device10.createComputePipeline({
        label: "compute_pipeline10141",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10142 = device10.createComputePipeline({
        label: "compute_pipeline10142",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10143 = device10.createComputePipeline({
        label: "compute_pipeline10143",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
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
    const compute_pipeline10144 = device10.createComputePipeline({
        label: "compute_pipeline10144",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10145 = device10.createComputePipeline({
        label: "compute_pipeline10145",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline10146 = device10.createComputePipeline({
        label: "compute_pipeline10146",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10147 = device10.createComputePipeline({
        label: "compute_pipeline10147",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline10148 = device10.createComputePipeline({
        label: "compute_pipeline10148",
        layout: pipeline_layout105,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10149 = device10.createComputePipeline({
        label: "compute_pipeline10149",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline10150 = device10.createComputePipeline({
        label: "compute_pipeline10150",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10151 = device10.createComputePipeline({
        label: "compute_pipeline10151",
        layout: pipeline_layout106,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10152 = device10.createComputePipeline({
        label: "compute_pipeline10152",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10153 = device10.createComputePipeline({
        label: "compute_pipeline10153",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline10154 = device10.createComputePipeline({
        label: "compute_pipeline10154",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline10155 = device10.createComputePipeline({
        label: "compute_pipeline10155",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline10156 = device10.createComputePipeline({
        label: "compute_pipeline10156",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10157 = device10.createComputePipeline({
        label: "compute_pipeline10157",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10158 = device10.createComputePipeline({
        label: "compute_pipeline10158",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline10159 = device10.createComputePipeline({
        label: "compute_pipeline10159",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10160 = device10.createComputePipeline({
        label: "compute_pipeline10160",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    buffer105.destroy()
    query201.destroy()
    
    const compute_pipeline10161 = device10.createComputePipeline({
        label: "compute_pipeline10161",
        layout: pipeline_layout109,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline10162 = device10.createComputePipeline({
        label: "compute_pipeline10162",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline10163 = device10.createComputePipeline({
        label: "compute_pipeline10163",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10164 = device10.createComputePipeline({
        label: "compute_pipeline10164",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10165 = device10.createComputePipeline({
        label: "compute_pipeline10165",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10166 = device10.createComputePipeline({
        label: "compute_pipeline10166",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline10167 = device10.createComputePipeline({
        label: "compute_pipeline10167",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline10168 = device10.createComputePipeline({
        label: "compute_pipeline10168",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10169 = device10.createComputePipeline({
        label: "compute_pipeline10169",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    const compute_pipeline10170 = device10.createComputePipeline({
        label: "compute_pipeline10170",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline10171 = device10.createComputePipeline({
        label: "compute_pipeline10171",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline10172 = device10.createComputePipeline({
        label: "compute_pipeline10172",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10173 = device10.createComputePipeline({
        label: "compute_pipeline10173",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10174 = device10.createComputePipeline({
        label: "compute_pipeline10174",
        layout: pipeline_layout107,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline10175 = device10.createComputePipeline({
        label: "compute_pipeline10175",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    const compute_pipeline10176 = device10.createComputePipeline({
        label: "compute_pipeline10176",
        layout: pipeline_layout1017,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline10177 = device10.createComputePipeline({
        label: "compute_pipeline10177",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10178 = device10.createComputePipeline({
        label: "compute_pipeline10178",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10179 = device10.createComputePipeline({
        label: "compute_pipeline10179",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10180 = device10.createComputePipeline({
        label: "compute_pipeline10180",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1014, 0, array1, 0, array1.length);
    const compute_pipeline10181 = device10.createComputePipeline({
        label: "compute_pipeline10181",
        layout: pipeline_layout108,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10182 = device10.createComputePipeline({
        label: "compute_pipeline10182",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module1012,
            entryPoint: "main"
        }
    });
    const compute_pipeline10183 = device10.createComputePipeline({
        label: "compute_pipeline10183",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline10184 = device10.createComputePipeline({
        label: "compute_pipeline10184",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10185 = device10.createComputePipeline({
        label: "compute_pipeline10185",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline10186 = device10.createComputePipeline({
        label: "compute_pipeline10186",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query202.destroy()
    
    const compute_pipeline10187 = device10.createComputePipeline({
        label: "compute_pipeline10187",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10188 = device10.createComputePipeline({
        label: "compute_pipeline10188",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10189 = device10.createComputePipeline({
        label: "compute_pipeline10189",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10190 = device10.createComputePipeline({
        label: "compute_pipeline10190",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline10191 = device10.createComputePipeline({
        label: "compute_pipeline10191",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline10192 = device10.createComputePipeline({
        label: "compute_pipeline10192",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline10193 = device10.createComputePipeline({
        label: "compute_pipeline10193",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pipeline10194 = device10.createComputePipeline({
        label: "compute_pipeline10194",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const compute_pipeline10195 = device10.createComputePipeline({
        label: "compute_pipeline10195",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    const compute_pipeline10196 = device10.createComputePipeline({
        label: "compute_pipeline10196",
        layout: pipeline_layout104,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10197 = device10.createComputePipeline({
        label: "compute_pipeline10197",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10198 = device10.createComputePipeline({
        label: "compute_pipeline10198",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline10199 = device10.createComputePipeline({
        label: "compute_pipeline10199",
        layout: pipeline_layout1014,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline10200 = device10.createComputePipeline({
        label: "compute_pipeline10200",
        layout: pipeline_layout107,
        compute: {
            module: shader_module1013,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10201 = device10.createComputePipeline({
        label: "compute_pipeline10201",
        layout: pipeline_layout108,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline10202 = device10.createComputePipeline({
        label: "compute_pipeline10202",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline10203 = device10.createComputePipeline({
        label: "compute_pipeline10203",
        layout: pipeline_layout1016,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline10204 = device10.createComputePipeline({
        label: "compute_pipeline10204",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline10205 = device10.createComputePipeline({
        label: "compute_pipeline10205",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10206 = device10.createComputePipeline({
        label: "compute_pipeline10206",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1020.end();
    
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    const compute_pipeline10207 = device10.createComputePipeline({
        label: "compute_pipeline10207",
        layout: pipeline_layout104,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1021.setPipeline(compute_pipeline1014);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline1014.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group103);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1018, 0);
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline1095.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1021, 0);
    compute_pass_encoder1021.end();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
}