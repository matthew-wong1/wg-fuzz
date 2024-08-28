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
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    query001.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const array0 = new Float32Array([-0.25, 0.0, 0.5, 0.5, -0.75, 0.25, -0.75, 0.0, 1.0, 0.0, 0.25, -1.0, 0.75, 0.25, 0.75, -0.25, -1.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.5, 0.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.75, -1.0, 0.25, 0.5, -0.25, -0.5, -1.0, 1.0, -1.0, 1.0, 0.25, 0.0, 1.0, 0.5, -1.0, 0.0, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, -0.75, -0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.75, 0.25, 0.75, 0.75, -0.5, 0.75, -1.0, 0.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -0.75, -0.25, -0.75, -0.25, ]);
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    query001.destroy()
    
    device00.pushErrorScope("internal");
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query001.destroy()
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer001.destroy()
    
    buffer000.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([0.25, 0.75, 0.0, -0.75, 0.25, 0.0, 0.0, 0.5, 1.0, 0.0, -1.0, 0.75, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, 0.25, 1.0, -0.5, 0.75, -1.0, -0.75, 0.25, -1.0, -0.25, 0.0, 0.5, 0.25, 0.25, 0.0, -1.0, 0.5, -1.0, -1.0, -0.25, 0.5, 1.0, 0.0, -0.75, 1.0, -0.5, -0.75, 0.0, 0.0, 0.75, 0.75, 0.0, 0.5, -0.5, 0.25, -0.75, 1.0, 0.5, -0.75, 0.0, 1.0, 0.75, 0.25, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, -0.75, -1.0, 0.75, -0.5, -0.5, -0.75, 0.0, -0.25, 0.5, -0.75, 0.0, 0.0, -0.75, 0.0, -0.5, -0.75, -0.75, 0.25, -0.5, -0.75, 0.5, 0.25, 0.25, 1.0, 0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 0.0, -0.5, -0.5, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    query000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder000.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query002.destroy()
    
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query001.destroy()
    device30.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    texture000.destroy();
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
    
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.destroy();
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture200.destroy();
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer202.destroy()
    texture201.destroy();
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout203]
    });
    buffer100.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    query202.destroy()
    query203.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_bundle_encoder201.popDebugGroup();
    
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    device10.pushErrorScope("internal");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    texture100.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    const array2 = new Float32Array([0.25, 0.0, 0.25, -0.75, -1.0, -0.5, -0.75, 1.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.25, -1.0, 0.5, 0.0, -0.75, 0.75, -0.75, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, -0.25, 0.25, -0.25, 0.0, 0.0, -0.75, -0.25, 0.25, -0.75, 0.25, 0.25, -0.5, -1.0, 0.25, 0.25, -0.25, 1.0, -0.5, -0.75, 0.5, -0.5, 0.5, 0.75, 1.0, -1.0, 0.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.75, -0.75, 0.25, -0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 1.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.75, -1.0, 0.25, -1.0, 1.0, -0.5, -0.5, 1.0, 0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 0.75, 0.0, -0.75, -1.0, 0.25, ]);
    device50.destroy();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query203.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    compute_pass_encoder2000.popDebugGroup()
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout206,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    render_bundle_encoder202.popDebugGroup();
    
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout206,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout204]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout208,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout207,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    device40.destroy();
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
        layout: render_pipeline101.getBindGroupLayout(0),
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer204.destroy()
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    texture101.destroy();
    const compute_pipeline2087 = device20.createComputePipeline({
        label: "compute_pipeline2087",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2088 = device20.createComputePipeline({
        label: "compute_pipeline2088",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline2089 = device20.createComputePipeline({
        label: "compute_pipeline2089",
        layout: pipeline_layout208,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const compute_pipeline2090 = device20.createComputePipeline({
        label: "compute_pipeline2090",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2091 = device20.createComputePipeline({
        label: "compute_pipeline2091",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2092 = device20.createComputePipeline({
        label: "compute_pipeline2092",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2093 = device20.createComputePipeline({
        label: "compute_pipeline2093",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2094 = device20.createComputePipeline({
        label: "compute_pipeline2094",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2095 = device20.createComputePipeline({
        label: "compute_pipeline2095",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2096 = device20.createComputePipeline({
        label: "compute_pipeline2096",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2097 = device20.createComputePipeline({
        label: "compute_pipeline2097",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2098 = device20.createComputePipeline({
        label: "compute_pipeline2098",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const compute_pipeline2099 = device20.createComputePipeline({
        label: "compute_pipeline2099",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline20100 = device20.createComputePipeline({
        label: "compute_pipeline20100",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const compute_pipeline20101 = device20.createComputePipeline({
        label: "compute_pipeline20101",
        layout: pipeline_layout202,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20102 = device20.createComputePipeline({
        label: "compute_pipeline20102",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20103 = device20.createComputePipeline({
        label: "compute_pipeline20103",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline20104 = device20.createComputePipeline({
        label: "compute_pipeline20104",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
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
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    
    const compute_pipeline20105 = device20.createComputePipeline({
        label: "compute_pipeline20105",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    
    const compute_pipeline20106 = device20.createComputePipeline({
        label: "compute_pipeline20106",
        layout: pipeline_layout200,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline20107 = device20.createComputePipeline({
        label: "compute_pipeline20107",
        layout: pipeline_layout207,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const compute_pipeline20108 = device20.createComputePipeline({
        label: "compute_pipeline20108",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.popDebugGroup()
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const compute_pipeline20109 = device20.createComputePipeline({
        label: "compute_pipeline20109",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline20110 = device20.createComputePipeline({
        label: "compute_pipeline20110",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline20111 = device20.createComputePipeline({
        label: "compute_pipeline20111",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    
    const compute_pipeline20112 = device20.createComputePipeline({
        label: "compute_pipeline20112",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline20113 = device20.createComputePipeline({
        label: "compute_pipeline20113",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20114 = device20.createComputePipeline({
        label: "compute_pipeline20114",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const compute_pipeline20115 = device20.createComputePipeline({
        label: "compute_pipeline20115",
        layout: pipeline_layout200,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline20116 = device20.createComputePipeline({
        label: "compute_pipeline20116",
        layout: pipeline_layout209,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    const compute_pipeline20117 = device20.createComputePipeline({
        label: "compute_pipeline20117",
        layout: pipeline_layout206,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const compute_pipeline20118 = device20.createComputePipeline({
        label: "compute_pipeline20118",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20119 = device20.createComputePipeline({
        label: "compute_pipeline20119",
        layout: pipeline_layout204,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline20120 = device20.createComputePipeline({
        label: "compute_pipeline20120",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    texture102.destroy();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    buffer208.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline20121 = device20.createComputePipeline({
        label: "compute_pipeline20121",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline20122 = device20.createComputePipeline({
        label: "compute_pipeline20122",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline20123 = device20.createComputePipeline({
        label: "compute_pipeline20123",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline20124 = device20.createComputePipeline({
        label: "compute_pipeline20124",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline20125 = device20.createComputePipeline({
        label: "compute_pipeline20125",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline20126 = device20.createComputePipeline({
        label: "compute_pipeline20126",
        layout: pipeline_layout209,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline20127 = device20.createComputePipeline({
        label: "compute_pipeline20127",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module2010,
            entryPoint: "main"
        }
    });
    query202.destroy()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2020.setPipeline(render_pipeline201);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.end();
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
}