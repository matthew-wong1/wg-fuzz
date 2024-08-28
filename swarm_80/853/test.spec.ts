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
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([-1.0, -0.75, 0.5, -0.5, 0.5, 0.75, 0.0, 0.75, 0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, -0.25, -0.75, -0.5, 0.0, 0.5, 1.0, 0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 0.25, 0.75, -0.75, -0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -1.0, -0.5, -0.5, 1.0, 0.25, -0.25, -1.0, 0.25, 0.0, 1.0, -0.5, 0.25, 1.0, 0.0, 0.0, -0.75, -0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 0.0, -0.5, 0.0, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, -0.75, 0.75, 1.0, -0.5, 0.0, 0.25, -0.5, -0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.25, 0.75, 1.0, 0.5, 0.25, -1.0, -0.25, 0.25, 1.0, ]);
    
    
    const array1 = new Float32Array([-0.75, -1.0, -1.0, 0.5, 0.25, 0.5, -0.25, -0.25, 0.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.25, -1.0, -0.25, -0.5, -0.5, 0.5, -0.25, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, 0.75, -0.5, 0.25, 0.0, -0.5, 0.0, -0.75, -1.0, -0.75, -1.0, 0.0, 0.25, -0.75, 0.0, -1.0, -0.5, 0.75, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 1.0, 1.0, 0.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, 0.75, 0.0, 0.25, -0.75, -0.25, -1.0, 0.5, -0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.0, -0.25, -0.25, 0.0, -0.5, 0.0, 0.75, -0.5, 0.5, -0.5, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    const array2 = new Float32Array([0.0, 1.0, 0.75, -0.5, 0.25, -0.75, -0.5, 1.0, 0.75, -0.75, 1.0, -1.0, -0.25, 1.0, 0.25, -0.5, 1.0, -0.75, -0.75, -1.0, -0.5, 1.0, 0.5, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, 0.25, -0.75, -0.75, 0.75, -0.5, -0.75, 1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 1.0, 0.75, 0.25, -0.5, 0.5, -0.75, 0.25, -0.5, -0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.25, 0.25, -0.25, 1.0, -0.5, -0.5, 0.25, -1.0, 0.0, 0.0, 0.0, 0.75, 0.25, -0.25, 0.5, -1.0, 0.0, -0.75, -0.5, 1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, 0.25, -1.0, 0.75, 0.75, 0.75, -1.0, 0.5, ]);
    
    
    const array3 = new Float32Array([-0.5, 1.0, -0.25, 0.25, 0.25, 0.5, 0.25, 0.75, 0.0, 0.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.75, -0.75, 0.75, 0.5, 1.0, 0.75, -1.0, -1.0, 1.0, 0.25, 0.0, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, 0.75, -0.5, 0.5, 1.0, 0.25, -0.25, -0.75, -0.5, -1.0, 1.0, -1.0, 0.0, 0.5, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, -0.75, -0.5, 1.0, -0.75, 0.25, 0.5, 0.0, -0.75, -1.0, 0.5, 0.75, 1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 1.0, -0.5, 0.5, 0.5, 0.25, -0.75, -0.5, -0.5, 0.75, 0.5, 0.0, 0.0, 0.75, 0.0, -0.25, -1.0, 0.25, -0.25, 0.5, -1.0, 0.0, 0.75, 0.5, 0.5, -0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    texture201.destroy();
    
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture200.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder201.insertDebugMarker("mymarker");
    
    
    buffer201.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const array4 = new Float32Array([0.75, -1.0, 1.0, 0.75, -0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.5, -1.0, -0.25, 0.0, 0.75, -1.0, 0.0, -0.75, -1.0, 0.25, -0.75, -1.0, -0.75, 0.75, 0.25, -1.0, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, -0.5, 0.0, 0.25, -0.5, -0.75, 1.0, -1.0, 1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -0.75, 0.0, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 0.25, -0.75, -1.0, -0.5, -0.25, 0.0, -0.75, -0.5, -0.25, 0.0, 0.75, 0.75, 0.75, 0.5, -1.0, 0.0, 0.5, -0.75, -0.75, -1.0, 1.0, 0.75, 0.75, ]);
    const array5 = new Float32Array([0.25, 0.25, 0.5, -0.25, -0.5, -0.75, 1.0, 0.75, 0.0, 0.5, 0.75, -0.25, -0.75, 0.5, -0.75, 0.25, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, 0.25, -0.5, -0.25, -0.25, 0.5, 0.25, -0.25, 0.0, 0.75, -1.0, 0.75, 0.5, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, -0.5, 0.75, -0.75, 0.75, 0.0, 0.0, 0.0, -0.5, 0.25, 0.25, -0.5, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, 0.75, 0.75, -0.25, 0.5, -0.75, 0.25, 0.0, -0.75, 0.5, 1.0, 0.75, 1.0, -1.0, -0.5, 0.5, -0.75, 0.75, 0.75, -0.25, 0.0, -0.25, 0.5, 0.75, 0.25, -0.25, -0.5, 1.0, 0.75, 1.0, -0.5, -1.0, 0.5, -1.0, 0.25, -0.75, 0.75, 0.0, 0.75, -0.75, -0.25, -0.25, -0.25, 0.5, ]);
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer200.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder200.popDebugGroup();
    
    buffer300.destroy()
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const array6 = new Float32Array([0.0, -0.75, 0.75, -0.25, 0.25, -0.25, -0.5, -1.0, 1.0, 0.25, 1.0, -1.0, 1.0, 0.25, 0.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, 0.75, 0.5, 0.75, 1.0, -0.25, 0.0, 0.5, -0.25, 1.0, -0.5, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.75, -1.0, -0.25, 1.0, 0.0, 0.5, -0.75, -1.0, 0.25, 0.25, 1.0, 1.0, 0.0, 0.5, -0.25, 1.0, -0.5, 1.0, -0.25, 1.0, -1.0, -0.75, -0.5, 0.25, 0.0, 1.0, 0.5, 0.75, -0.25, 0.75, 0.0, -0.25, -0.25, -0.25, 0.5, -0.75, -0.5, -0.5, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.0, 0.25, 0.25, 0.25, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    texture202.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    const array7 = new Float32Array([-1.0, -0.5, -0.25, -0.5, 1.0, 0.25, 0.0, 0.25, 0.5, 0.5, 0.5, -0.25, 0.25, 0.75, 0.5, 0.75, 0.75, 1.0, 1.0, -0.75, 0.0, 0.5, 0.0, -0.75, -0.75, 0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 1.0, 0.75, -0.25, -0.25, 1.0, 0.5, 0.75, -1.0, 0.75, -1.0, -0.5, -0.75, -0.75, 0.25, 0.0, 0.0, 0.0, -0.25, -0.5, 0.5, 0.0, 0.0, -0.25, -0.25, 0.75, -1.0, -0.75, 0.25, -1.0, 0.75, 0.5, -1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.0, -1.0, 0.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.5, 0.75, -0.25, -0.5, -0.25, 0.5, 0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 0.25, 0.75, 0.5, ]);
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.destroy();
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const command_buffer300 = command_encoder300.finish();
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    device30.queue.submit([command_buffer300, ]);
    
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder302.insertDebugMarker("mymarker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    buffer202.destroy()
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const array8 = new Float32Array([-0.75, 1.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.0, -0.75, -1.0, -0.75, -1.0, 0.25, -0.5, 0.0, 0.5, 0.25, 0.0, -0.25, -0.25, -1.0, 0.75, -0.75, -1.0, 0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.25, -0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.25, -0.25, 0.25, 1.0, 0.75, -1.0, -0.25, 0.75, 0.75, -0.5, -0.75, -0.75, 1.0, -0.5, 0.75, -1.0, 1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.25, -1.0, 0.0, -0.5, 0.5, 1.0, 0.75, 1.0, 0.25, 0.0, 0.25, 0.75, 1.0, 0.0, -0.25, 0.75, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 1.0, 0.75, 0.75, -0.5, 1.0, 0.75, -0.25, 0.25, -0.75, 0.25, 0.25, -0.5, 0.75, 0.75, 0.5, ]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder302.popDebugGroup()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    render_bundle_encoder200.popDebugGroup();
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    
    
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer303 = command_encoder303.finish();
    const sampler2011 = device20.createSampler( { label: "sampler2011" } );
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    texture400.destroy();
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const array9 = new Float32Array([-0.25, 0.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.25, 1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.75, 0.5, -1.0, 0.0, -1.0, -0.75, -0.75, -1.0, -0.75, 0.75, 0.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, -0.25, -1.0, -0.5, 0.0, 1.0, 0.75, 0.5, -0.5, 0.25, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -0.25, -0.5, -1.0, 0.5, 0.0, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.5, 1.0, 0.25, -1.0, -1.0, 0.5, -0.5, 0.75, -0.5, -0.5, -0.25, 1.0, ]);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const array10 = new Float32Array([-1.0, 0.5, 0.25, -0.75, -0.75, -1.0, -1.0, 1.0, -1.0, -1.0, 0.5, -1.0, -0.75, 0.25, -0.5, -0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 1.0, 0.5, 0.75, 0.0, 1.0, 0.0, -0.25, -0.25, -0.75, -1.0, -1.0, 1.0, -1.0, 0.5, -0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -1.0, 0.0, 0.5, 0.0, -1.0, 1.0, 0.75, -1.0, -0.5, -1.0, -0.25, -0.5, -0.25, 0.0, -0.5, 0.75, -1.0, -0.75, 1.0, 0.25, 0.75, -0.25, 0.5, 0.75, 0.0, 0.75, 0.75, 0.5, -0.25, -0.5, 0.5, 0.0, 0.0, -0.5, 0.0, -0.25, 0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.25, 1.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -0.25, ]);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    const array11 = new Float32Array([1.0, 1.0, -0.25, 0.25, -0.75, -0.25, -0.75, 1.0, 0.75, -0.5, 0.0, 0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -0.5, 0.25, 0.25, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, -0.5, -0.5, 0.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 0.25, 0.75, 0.75, 1.0, -0.5, -0.75, 0.0, -0.75, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.0, -0.5, 0.5, -1.0, 1.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.25, -0.75, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, -0.5, 0.25, -1.0, 1.0, 0.25, 0.0, 0.75, 0.75, -0.5, -1.0, -0.25, 0.0, -1.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, -0.75, -0.5, 0.0, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    compute_pass_encoder2030.insertDebugMarker("marker")
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder302.popDebugGroup();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture401.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout204]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer301.destroy()
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeTexture({ texture: texture403 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const sampler2012 = device20.createSampler( { label: "sampler2012" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder302.popDebugGroup();
    texture203.destroy();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2030.insertDebugMarker("marker")
    device30.queue.submit([command_buffer303, ]);
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout202]
    });
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    texture403.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    buffer302.destroy()
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    render_bundle_encoder300.popDebugGroup();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer203.destroy()
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture205.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    buffer400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer305.destroy()
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4040 = texture404.createView({ label: "texture_view4040" });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device40.queue.writeTexture({ texture: texture404 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    buffer303.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.popDebugGroup();
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    device40.queue.writeTexture({ texture: texture404 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    var shader_module2013_code = "";
    try {
        shader_module2013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2013 = await device20.createShaderModule({ label: "shader_module2013", code: shader_module2013_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder206.insertDebugMarker("mymarker");
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4040,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer204.destroy()
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module2013,
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
            module: shader_module2013,
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
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder2040.insertDebugMarker("marker");
    const pipeline_layout2018 = device20.createPipelineLayout({ 
        label: "pipeline_layout2018",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module2013,
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
            module: shader_module2013,
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
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder202.setPipeline(render_pipeline203);
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const command_buffer206 = command_encoder206.finish();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module2011,
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
            module: shader_module2011,
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
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module2013,
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
            module: shader_module2013,
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
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    texture800.destroy();
    device40.queue.writeTexture({ texture: texture404 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture404 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const sampler2013 = device20.createSampler( { label: "sampler2013" } );
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer501.destroy()
    buffer900.destroy()
    const pipeline_layout2019 = device20.createPipelineLayout({ 
        label: "pipeline_layout2019",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const pipeline_layout2020 = device20.createPipelineLayout({ 
        label: "pipeline_layout2020",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    buffer206.destroy()
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
    device20.queue.submit([command_buffer206, ]);
}