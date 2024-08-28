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
    
    const array0 = new Float32Array([-0.75, -0.25, 0.75, -0.5, 0.75, -0.25, 0.75, 0.0, 1.0, 0.75, -0.5, -0.25, -0.5, 0.25, -0.75, -0.25, 0.0, 1.0, -0.25, 0.75, 1.0, -0.25, -0.75, 0.75, 1.0, -1.0, -0.25, 0.5, 0.0, 0.25, -0.25, 0.25, -0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, 0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.5, 1.0, 0.0, -0.5, 0.25, -1.0, -1.0, 0.5, -1.0, 0.5, -1.0, -0.75, -0.5, 1.0, 1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -1.0, -0.25, 0.0, 0.25, -1.0, -0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 1.0, 0.25, -0.75, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, 1.0, 0.5, 0.25, 0.5, -0.5, -1.0, -1.0, -0.25, 1.0, -0.75, 0.25, ]);
    const array1 = new Float32Array([0.25, -0.5, -0.5, -1.0, -0.75, 0.5, 0.75, 0.75, 0.25, 0.25, 0.75, -0.75, -0.75, -0.5, 1.0, 0.25, -1.0, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, -1.0, 0.75, 0.25, 1.0, 1.0, -1.0, 0.75, 1.0, -0.5, -0.75, -1.0, -0.25, -0.5, 1.0, 0.25, -0.5, -1.0, 1.0, 0.75, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.5, 0.75, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, 1.0, -0.75, -0.75, -0.25, 0.5, 0.75, -0.75, -0.5, -0.75, 0.5, 0.75, 0.5, 0.75, -1.0, 0.25, -0.5, 1.0, 0.25, 1.0, 1.0, 0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.0, 1.0, 0.0, -0.5, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const array2 = new Float32Array([0.5, -0.75, 0.75, 0.75, 0.75, 0.75, -0.5, 0.25, -0.75, -0.25, 0.25, 0.25, 0.25, 0.5, -1.0, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, 0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.75, -0.25, -1.0, 0.0, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 1.0, -1.0, 0.5, -0.25, 1.0, 0.0, 0.25, 1.0, 0.5, -1.0, -1.0, 0.0, -0.75, -1.0, 0.5, 0.25, 0.25, -1.0, 1.0, 0.5, 0.5, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, 0.0, 0.75, -0.25, -0.25, -0.75, -0.5, -0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.25, -0.75, -1.0, -0.75, -0.25, 0.0, ]);
    
    const array3 = new Float32Array([-0.25, -0.5, -0.75, 1.0, -0.75, 0.5, 1.0, -0.25, 1.0, 0.0, 0.5, 0.0, -0.5, -0.75, -0.5, 0.75, -0.75, 0.5, -0.75, -0.5, 0.25, -0.5, 0.5, -0.5, 0.75, 0.5, 0.25, 0.0, 1.0, -0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.75, 0.25, -0.75, 0.75, -0.5, 1.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.5, -0.5, 0.5, 1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.25, 0.25, -0.5, 0.75, -0.25, -0.75, 0.25, 0.75, 0.5, -0.25, -0.5, 1.0, 0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 0.25, 0.25, 0.75, -1.0, -0.5, 0.5, 0.5, 1.0, -0.25, 0.0, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, -0.5, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, 1.0, 0.75, 0.0, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const array4 = new Float32Array([-0.75, 0.0, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, -0.25, 0.25, 0.25, -0.5, 1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.0, -0.5, -1.0, 0.0, 0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 1.0, 0.25, -0.75, 0.0, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.25, 0.75, 0.25, -0.25, 0.0, -0.75, 1.0, -1.0, -0.5, -0.75, -0.5, 1.0, 0.5, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, -1.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, -1.0, 0.0, -0.75, 0.75, -1.0, -0.5, 0.5, -1.0, 0.75, -0.25, 0.75, 0.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.5, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, 0.25, ]);
    const array5 = new Float32Array([-0.5, -0.75, 0.0, -1.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.5, 0.5, 0.0, 1.0, 0.5, 1.0, 0.0, -0.5, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, -1.0, 0.25, -1.0, -0.5, 0.0, -0.25, 0.0, 0.75, 0.5, 0.25, -0.5, 1.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 1.0, -0.5, -1.0, -0.25, 0.5, 0.0, -1.0, -0.75, -0.75, -1.0, -0.5, -0.5, 0.25, 0.0, 0.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.25, 1.0, 1.0, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, -1.0, -1.0, -0.25, -0.5, -0.5, -0.25, -1.0, 0.5, -0.5, -0.5, 0.0, 0.25, 0.25, 0.0, 1.0, 0.0, -0.25, ]);
    device00.pushErrorScope("validation");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_buffer000 = command_encoder000.finish();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
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
    device00.queue.submit([command_buffer000, ]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture001.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
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
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    texture003.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    texture002.destroy();
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture006.destroy();
    
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

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    buffer000.destroy()
    
    
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    texture000.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture005.destroy();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query000.destroy()
    texture008.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0023,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([-0.75, 0.25, 0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 0.0, -0.5, 0.25, -0.25, -0.25, 0.75, -0.75, -0.5, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, 0.5, 0.0, 0.5, 0.0, -1.0, 0.0, 0.0, 1.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.25, 0.0, 1.0, -0.5, -0.75, 1.0, 1.0, -0.25, -0.5, -0.75, 0.5, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, -0.75, 0.25, -0.25, 0.5, 1.0, 0.75, 0.5, 0.0, -0.5, -1.0, -0.25, 0.0, -1.0, -0.25, 0.75, -0.75, -0.25, -0.25, 0.25, -1.0, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 0.75, -1.0, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, -0.75, 0.75, -1.0, -0.5, -0.5, -0.75, 0.0, -1.0, -0.75, ]);
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    render_pass_encoder0010.executeBundles([])
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout005]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_pass_encoder0010.setStencilReference(1);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer007.destroy()
    
    buffer006.destroy()
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout005]
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture0010.destroy();
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline001);
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
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: query000
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture009.destroy();
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.setPipeline(render_pipeline001);
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout006]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    texture300.destroy();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const texture_view0072 = texture007.createView({ label: "texture_view0072" });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    texture007.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
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
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0020.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer005.destroy()
    device00.queue.writeTexture({ texture: texture0011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout009,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query001.destroy()
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeTexture({ texture: texture0011 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    buffer0010.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture0011 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    const compute_pipeline0091 = device00.createComputePipeline({
        label: "compute_pipeline0091",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline0092 = device00.createComputePipeline({
        label: "compute_pipeline0092",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0093 = device00.createComputePipeline({
        label: "compute_pipeline0093",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0094 = device00.createComputePipeline({
        label: "compute_pipeline0094",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0095 = device00.createComputePipeline({
        label: "compute_pipeline0095",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout004]
    });
    buffer302.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0096 = device00.createComputePipeline({
        label: "compute_pipeline0096",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    render_pass_encoder0020.setStencilReference(1);
    query001.destroy()
    const compute_pipeline0097 = device00.createComputePipeline({
        label: "compute_pipeline0097",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.setVertexBuffer(0, buffer0011);
    render_bundle_encoder001.setIndexBuffer(buffer008, "uint16");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0098 = device00.createComputePipeline({
        label: "compute_pipeline0098",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0099 = device00.createComputePipeline({
        label: "compute_pipeline0099",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.popDebugGroup();
    const compute_pipeline00100 = device00.createComputePipeline({
        label: "compute_pipeline00100",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00101 = device00.createComputePipeline({
        label: "compute_pipeline00101",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture0011 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout008]
    });
    
    render_bundle_encoder001.draw(3);
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline00102 = device00.createComputePipeline({
        label: "compute_pipeline00102",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline00103 = device00.createComputePipeline({
        label: "compute_pipeline00103",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline00104 = device00.createComputePipeline({
        label: "compute_pipeline00104",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00105 = device00.createComputePipeline({
        label: "compute_pipeline00105",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline00106 = device00.createComputePipeline({
        label: "compute_pipeline00106",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    buffer009.destroy()
    const compute_pipeline00107 = device00.createComputePipeline({
        label: "compute_pipeline00107",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline00108 = device00.createComputePipeline({
        label: "compute_pipeline00108",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00109 = device00.createComputePipeline({
        label: "compute_pipeline00109",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline00110 = device00.createComputePipeline({
        label: "compute_pipeline00110",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline00111 = device00.createComputePipeline({
        label: "compute_pipeline00111",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00112 = device00.createComputePipeline({
        label: "compute_pipeline00112",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline00113 = device00.createComputePipeline({
        label: "compute_pipeline00113",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00114 = device00.createComputePipeline({
        label: "compute_pipeline00114",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline00115 = device00.createComputePipeline({
        label: "compute_pipeline00115",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline00116 = device00.createComputePipeline({
        label: "compute_pipeline00116",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout007]
    });
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline00117 = device00.createComputePipeline({
        label: "compute_pipeline00117",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00118 = device00.createComputePipeline({
        label: "compute_pipeline00118",
        layout: pipeline_layout0022,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture0011 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline00119 = device00.createComputePipeline({
        label: "compute_pipeline00119",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00120 = device00.createComputePipeline({
        label: "compute_pipeline00120",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout008]
    });
    const compute_pipeline00121 = device00.createComputePipeline({
        label: "compute_pipeline00121",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline00122 = device00.createComputePipeline({
        label: "compute_pipeline00122",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline00123 = device00.createComputePipeline({
        label: "compute_pipeline00123",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout008]
    });
    const compute_pipeline00124 = device00.createComputePipeline({
        label: "compute_pipeline00124",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const compute_pipeline00125 = device00.createComputePipeline({
        label: "compute_pipeline00125",
        layout: pipeline_layout0023,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00126 = device00.createComputePipeline({
        label: "compute_pipeline00126",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00127 = device00.createComputePipeline({
        label: "compute_pipeline00127",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline00128 = device00.createComputePipeline({
        label: "compute_pipeline00128",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00129 = device00.createComputePipeline({
        label: "compute_pipeline00129",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00130 = device00.createComputePipeline({
        label: "compute_pipeline00130",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline00131 = device00.createComputePipeline({
        label: "compute_pipeline00131",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline00132 = device00.createComputePipeline({
        label: "compute_pipeline00132",
        layout: pipeline_layout0025,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline00133 = device00.createComputePipeline({
        label: "compute_pipeline00133",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.executeBundles([])
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline00134 = device00.createComputePipeline({
        label: "compute_pipeline00134",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline00135 = device00.createComputePipeline({
        label: "compute_pipeline00135",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0010.setStencilReference(1);
    query200.destroy()
    const compute_pipeline00136 = device00.createComputePipeline({
        label: "compute_pipeline00136",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.destroy();
    const compute_pipeline00137 = device00.createComputePipeline({
        label: "compute_pipeline00137",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00138 = device00.createComputePipeline({
        label: "compute_pipeline00138",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture0011 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const compute_pipeline00139 = device00.createComputePipeline({
        label: "compute_pipeline00139",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    device00.pushErrorScope("internal");
    const compute_pipeline00140 = device00.createComputePipeline({
        label: "compute_pipeline00140",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline00141 = device00.createComputePipeline({
        label: "compute_pipeline00141",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00142 = device00.createComputePipeline({
        label: "compute_pipeline00142",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    const compute_pipeline00143 = device00.createComputePipeline({
        label: "compute_pipeline00143",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    const compute_pipeline00144 = device00.createComputePipeline({
        label: "compute_pipeline00144",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.setVertexBuffer(0, buffer0011);
    texture0011.destroy();
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const compute_pipeline00145 = device00.createComputePipeline({
        label: "compute_pipeline00145",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline00146 = device00.createComputePipeline({
        label: "compute_pipeline00146",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline00147 = device00.createComputePipeline({
        label: "compute_pipeline00147",
        layout: pipeline_layout009,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline009);
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    render_pass_encoder0010.setIndexBuffer(buffer007, "uint16");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setVertexBuffer(0, buffer0011);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0010.draw(3);
    render_pass_encoder0020.drawIndexed(3);
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
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    render_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.end();
    render_pass_encoder0030.setVertexBuffer(0, buffer0011);
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0030.draw(3);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.end();
    const command_buffer003 = command_encoder003.finish();
}