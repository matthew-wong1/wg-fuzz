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
    
    
    
    const array0 = new Float32Array([-0.75, -0.75, 0.0, 0.25, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -1.0, -1.0, 0.25, 0.0, -0.25, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, 1.0, -0.25, -1.0, -0.75, -0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -0.75, -0.75, 0.25, 0.5, -0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 0.5, 0.25, 0.25, -1.0, 0.75, 0.75, 1.0, 0.0, 0.0, 0.75, 0.75, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.0, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, 1.0, 0.0, -1.0, -0.5, -0.25, -0.5, 0.25, 0.75, 0.5, 0.0, 0.0, 0.25, 0.25, -1.0, -0.75, -0.75, 0.0, -0.75, -0.75, 0.75, -0.5, 0.25, -1.0, -1.0, 1.0, 1.0, 0.25, -0.25, ]);
    const array1 = new Float32Array([0.25, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.0, 0.75, -0.25, 1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 0.5, 1.0, 0.25, -0.25, -1.0, -0.75, 0.25, 0.5, 0.25, -0.5, -1.0, 0.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -0.75, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, 1.0, -0.5, 0.0, 0.25, 0.75, 0.75, 1.0, -1.0, 0.75, 1.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.25, -0.25, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 0.5, 1.0, -0.5, 1.0, 0.75, -1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 0.75, -0.5, 1.0, -1.0, 0.0, 0.5, 0.25, -0.75, 0.5, -0.25, 1.0, ]);
    const array2 = new Float32Array([0.5, -0.25, 0.25, 0.0, 0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, 0.0, -0.5, 0.5, -1.0, -0.25, 0.0, -0.5, -1.0, -0.5, 0.25, -0.5, -0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, 0.0, 0.0, 1.0, 1.0, -0.5, -0.5, 1.0, -0.25, 1.0, 0.75, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.25, -0.75, 0.25, 0.75, -0.25, -1.0, -0.25, 0.25, -0.75, 0.75, -0.75, 1.0, 0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, 0.5, 0.75, 0.0, -0.25, -1.0, -0.75, -0.25, -0.75, 0.5, -0.75, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 1.0, -0.75, 0.25, 0.5, 0.25, -1.0, 0.0, -0.25, -0.25, -1.0, -1.0, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const array3 = new Float32Array([0.75, 0.75, 0.5, 0.25, 0.0, -0.5, -0.5, -0.75, -1.0, -0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.5, -0.25, 1.0, 0.75, 0.75, 0.75, 1.0, 0.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, -0.5, -0.5, 0.5, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, -1.0, 1.0, -0.25, -0.25, -0.75, 0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -1.0, 0.75, 0.25, 0.5, -0.75, -0.75, 1.0, 0.5, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, 1.0, 1.0, 0.75, 1.0, 0.25, -0.25, 0.25, -1.0, 0.25, 1.0, 0.0, 1.0, 1.0, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -1.0, 0.75, 0.25, -0.75, 0.25, ]);
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    query000.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    
    texture000.destroy();
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const array4 = new Float32Array([-0.25, -0.5, -0.5, 0.5, 0.5, -0.75, -1.0, -1.0, -0.75, 0.75, 0.0, -0.75, 0.75, -1.0, 0.0, 0.5, 1.0, 0.75, -0.75, 0.0, 1.0, 0.75, -0.75, -0.5, 0.25, -1.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -0.75, 0.25, 1.0, 0.25, -0.75, -0.75, 0.75, 0.75, -0.75, 0.5, 1.0, 0.25, -0.5, -0.25, 0.5, 0.25, -0.25, 0.5, 0.0, 0.25, 0.75, 0.25, 1.0, -0.75, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.75, 1.0, -0.25, -0.25, -0.75, -1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 0.75, 0.0, -0.25, 0.75, -0.75, 0.5, -0.25, 1.0, 1.0, 0.5, 0.5, -0.5, -0.5, 0.0, 0.25, 0.5, 0.5, -0.25, ]);
    device00.pushErrorScope("out-of-memory");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.beginOcclusionQuery(0)
    const array5 = new Float32Array([0.75, -0.25, 1.0, 0.25, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, -0.25, 0.25, -0.5, 0.0, -1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, -0.25, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 0.0, 0.5, 0.5, 0.75, -0.75, 0.0, -0.5, 0.5, 0.5, 0.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.25, 0.25, -0.25, 0.25, 0.0, 0.25, -0.5, 0.0, -0.5, 0.75, -0.75, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, 1.0, -0.75, -1.0, 0.25, -0.25, 0.0, -0.75, -1.0, 1.0, 1.0, -0.75, 0.25, 0.5, -0.75, -1.0, 0.5, 0.5, -0.25, 0.25, 0.5, -1.0, 0.25, -1.0, -1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.75, -0.75, 0.0, -1.0, ]);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0000.insertDebugMarker("marker");
    
    render_pass_encoder0000.popDebugGroup();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.destroy();
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query000.destroy()
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query000.destroy()
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const array6 = new Float32Array([-1.0, -0.75, -0.5, 1.0, -0.25, -0.5, 0.25, 0.0, 0.0, -0.25, -0.75, -0.5, 0.75, -0.75, 1.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, 1.0, 1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 0.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.5, -0.25, 0.25, -1.0, -0.25, 0.5, 0.25, 0.75, -0.75, -0.25, -0.25, -1.0, 0.0, 0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -0.25, -1.0, -0.75, -0.5, -0.5, -0.5, 0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 1.0, 0.75, 1.0, 0.5, -0.25, 0.25, -0.25, -1.0, 0.75, -0.5, 0.5, 0.25, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -1.0, ]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0000.setPipeline(render_pipeline001);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.0, 0.25, -0.75, -0.25, 1.0, -0.75, 1.0, -0.25, -0.75, -0.25, -0.25, 1.0, 0.25, -0.5, -0.75, 0.25, 0.75, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, -1.0, 0.0, -0.25, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, -1.0, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, 0.0, 1.0, 0.5, 0.75, 0.25, 0.25, -0.5, -0.75, 0.75, 0.5, 0.75, -1.0, 0.25, 0.0, 0.0, -0.75, 0.75, 0.75, 0.25, 0.75, 0.0, 0.75, -0.25, 0.75, -0.5, 0.0, 1.0, -0.25, 0.25, 0.75, 0.5, 0.0, -0.75, -1.0, 1.0, -1.0, 0.75, 1.0, -0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 1.0, -0.25, -1.0, 0.0, 0.0, -1.0, -1.0, ]);
    
    texture001.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.setPipeline(render_pipeline002);
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    
    query001.destroy()
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const array8 = new Float32Array([0.25, -0.5, 0.25, -0.75, -1.0, 0.5, -0.5, -0.25, 0.0, -0.25, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -0.75, -0.25, 0.5, 0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, 0.5, -0.75, -1.0, 1.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, -0.5, 0.5, 0.5, 0.75, 0.25, 0.0, 0.25, -1.0, -0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -1.0, 0.75, 0.5, 1.0, -1.0, 0.0, -0.25, -1.0, 1.0, 0.75, 0.5, 0.75, 0.0, -0.5, 0.5, 0.25, 0.75, 0.5, -1.0, -0.5, -0.25, -0.75, 1.0, -1.0, -0.25, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, 0.0, 0.0, -0.75, 0.5, -0.75, 1.0, 0.0, -0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    query002.destroy()
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device20.destroy();
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
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
        occlusionQuerySet: query000
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0010.executeBundles([])
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout005,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline005);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query002.destroy()
    query001.destroy()
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    
    
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    texture002.destroy();
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    texture003.destroy();
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.popDebugGroup();
    
    
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
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
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout007,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.popDebugGroup();
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0095 = device00.createComputePipeline({
        label: "compute_pipeline0095",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline0096 = device00.createComputePipeline({
        label: "compute_pipeline0096",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0097 = device00.createComputePipeline({
        label: "compute_pipeline0097",
        layout: pipeline_layout009,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0098 = device00.createComputePipeline({
        label: "compute_pipeline0098",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([0.25, 1.0, -0.25, -0.5, -1.0, -1.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 1.0, -0.25, -0.5, -0.5, -1.0, -0.25, -0.75, 0.75, -0.5, -0.5, -1.0, -0.75, -1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.0, -1.0, -0.25, -0.25, -1.0, 0.5, 0.0, 0.25, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, 0.0, 1.0, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.75, 0.25, -1.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.5, 0.0, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, -0.5, -0.5, 0.75, -0.25, 0.0, -0.25, -0.5, -0.25, -1.0, -0.5, 0.0, ]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array10 = new Float32Array([0.75, 0.0, 0.5, 0.75, -1.0, 0.25, 0.75, -1.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 0.0, 0.5, 0.25, -0.75, 0.75, -0.75, 0.5, 1.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, 0.75, 0.75, 0.25, 0.5, 0.25, 0.25, 0.25, -0.5, 1.0, -0.75, -0.75, -0.5, -0.25, 0.0, 0.0, -0.75, 1.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.75, 0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, -0.25, -0.25, -0.5, 1.0, 0.5, -1.0, 0.0, -1.0, -0.75, 0.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -0.25, -1.0, 0.5, -0.5, 0.25, -0.5, ]);
    const compute_pipeline0099 = device00.createComputePipeline({
        label: "compute_pipeline0099",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00100 = device00.createComputePipeline({
        label: "compute_pipeline00100",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00101 = device00.createComputePipeline({
        label: "compute_pipeline00101",
        layout: pipeline_layout008,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline00102 = device00.createComputePipeline({
        label: "compute_pipeline00102",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline00103 = device00.createComputePipeline({
        label: "compute_pipeline00103",
        layout: pipeline_layout002,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline00104 = device00.createComputePipeline({
        label: "compute_pipeline00104",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00105 = device00.createComputePipeline({
        label: "compute_pipeline00105",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00106 = device00.createComputePipeline({
        label: "compute_pipeline00106",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00107 = device00.createComputePipeline({
        label: "compute_pipeline00107",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00108 = device00.createComputePipeline({
        label: "compute_pipeline00108",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00109 = device00.createComputePipeline({
        label: "compute_pipeline00109",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00110 = device00.createComputePipeline({
        label: "compute_pipeline00110",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline00111 = device00.createComputePipeline({
        label: "compute_pipeline00111",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline00112 = device00.createComputePipeline({
        label: "compute_pipeline00112",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00113 = device00.createComputePipeline({
        label: "compute_pipeline00113",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00114 = device00.createComputePipeline({
        label: "compute_pipeline00114",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline00115 = device00.createComputePipeline({
        label: "compute_pipeline00115",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00116 = device00.createComputePipeline({
        label: "compute_pipeline00116",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline00117 = device00.createComputePipeline({
        label: "compute_pipeline00117",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline00118 = device00.createComputePipeline({
        label: "compute_pipeline00118",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline00119 = device00.createComputePipeline({
        label: "compute_pipeline00119",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00120 = device00.createComputePipeline({
        label: "compute_pipeline00120",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00121 = device00.createComputePipeline({
        label: "compute_pipeline00121",
        layout: pipeline_layout008,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const compute_pipeline00122 = device00.createComputePipeline({
        label: "compute_pipeline00122",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline00123 = device00.createComputePipeline({
        label: "compute_pipeline00123",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    const compute_pipeline00124 = device00.createComputePipeline({
        label: "compute_pipeline00124",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00125 = device00.createComputePipeline({
        label: "compute_pipeline00125",
        layout: pipeline_layout008,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline00126 = device00.createComputePipeline({
        label: "compute_pipeline00126",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00127 = device00.createComputePipeline({
        label: "compute_pipeline00127",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00128 = device00.createComputePipeline({
        label: "compute_pipeline00128",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00129 = device00.createComputePipeline({
        label: "compute_pipeline00129",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00130 = device00.createComputePipeline({
        label: "compute_pipeline00130",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline00131 = device00.createComputePipeline({
        label: "compute_pipeline00131",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
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
    device30.destroy();
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
    const compute_pipeline00132 = device00.createComputePipeline({
        label: "compute_pipeline00132",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00133 = device00.createComputePipeline({
        label: "compute_pipeline00133",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00134 = device00.createComputePipeline({
        label: "compute_pipeline00134",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    
    query000.destroy()
    const compute_pipeline00135 = device00.createComputePipeline({
        label: "compute_pipeline00135",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00136 = device00.createComputePipeline({
        label: "compute_pipeline00136",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline00137 = device00.createComputePipeline({
        label: "compute_pipeline00137",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00138 = device00.createComputePipeline({
        label: "compute_pipeline00138",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00139 = device00.createComputePipeline({
        label: "compute_pipeline00139",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00140 = device00.createComputePipeline({
        label: "compute_pipeline00140",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline00141 = device00.createComputePipeline({
        label: "compute_pipeline00141",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00142 = device00.createComputePipeline({
        label: "compute_pipeline00142",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    query000.destroy()
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    const compute_pipeline00143 = device00.createComputePipeline({
        label: "compute_pipeline00143",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline00144 = device00.createComputePipeline({
        label: "compute_pipeline00144",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    
    const compute_pipeline00145 = device00.createComputePipeline({
        label: "compute_pipeline00145",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00146 = device00.createComputePipeline({
        label: "compute_pipeline00146",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00147 = device00.createComputePipeline({
        label: "compute_pipeline00147",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline00148 = device00.createComputePipeline({
        label: "compute_pipeline00148",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pipeline00149 = device00.createComputePipeline({
        label: "compute_pipeline00149",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00150 = device00.createComputePipeline({
        label: "compute_pipeline00150",
        layout: pipeline_layout007,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    render_pass_encoder0000.popDebugGroup();
    const compute_pipeline00151 = device00.createComputePipeline({
        label: "compute_pipeline00151",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline00152 = device00.createComputePipeline({
        label: "compute_pipeline00152",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00153 = device00.createComputePipeline({
        label: "compute_pipeline00153",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00154 = device00.createComputePipeline({
        label: "compute_pipeline00154",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline00155 = device00.createComputePipeline({
        label: "compute_pipeline00155",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00156 = device00.createComputePipeline({
        label: "compute_pipeline00156",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00157 = device00.createComputePipeline({
        label: "compute_pipeline00157",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00158 = device00.createComputePipeline({
        label: "compute_pipeline00158",
        layout: pipeline_layout004,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query003.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline00159 = device00.createComputePipeline({
        label: "compute_pipeline00159",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00160 = device00.createComputePipeline({
        label: "compute_pipeline00160",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00161 = device00.createComputePipeline({
        label: "compute_pipeline00161",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00162 = device00.createComputePipeline({
        label: "compute_pipeline00162",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00163 = device00.createComputePipeline({
        label: "compute_pipeline00163",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00164 = device00.createComputePipeline({
        label: "compute_pipeline00164",
        layout: pipeline_layout009,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query002.destroy()
    const compute_pipeline00165 = device00.createComputePipeline({
        label: "compute_pipeline00165",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline00166 = device00.createComputePipeline({
        label: "compute_pipeline00166",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline00167 = device00.createComputePipeline({
        label: "compute_pipeline00167",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline00168 = device00.createComputePipeline({
        label: "compute_pipeline00168",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline00169 = device00.createComputePipeline({
        label: "compute_pipeline00169",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00170 = device00.createComputePipeline({
        label: "compute_pipeline00170",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline00171 = device00.createComputePipeline({
        label: "compute_pipeline00171",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00172 = device00.createComputePipeline({
        label: "compute_pipeline00172",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline00173 = device00.createComputePipeline({
        label: "compute_pipeline00173",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00174 = device00.createComputePipeline({
        label: "compute_pipeline00174",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline00175 = device00.createComputePipeline({
        label: "compute_pipeline00175",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00176 = device00.createComputePipeline({
        label: "compute_pipeline00176",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline00177 = device00.createComputePipeline({
        label: "compute_pipeline00177",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const compute_pipeline00178 = device00.createComputePipeline({
        label: "compute_pipeline00178",
        layout: pipeline_layout008,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00179 = device00.createComputePipeline({
        label: "compute_pipeline00179",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline00180 = device00.createComputePipeline({
        label: "compute_pipeline00180",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline00181 = device00.createComputePipeline({
        label: "compute_pipeline00181",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const compute_pipeline00182 = device00.createComputePipeline({
        label: "compute_pipeline00182",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline00183 = device00.createComputePipeline({
        label: "compute_pipeline00183",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.popDebugGroup();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}