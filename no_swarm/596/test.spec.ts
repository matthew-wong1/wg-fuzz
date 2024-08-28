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
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_buffer000 = command_encoder000.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder001.clearBuffer(buffer001);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder001.clearBuffer(buffer001);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder001.clearBuffer(buffer000);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array0 = new Float32Array([0.75, -1.0, -1.0, 0.0, 0.75, 1.0, 1.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.5, -1.0, 0.5, 1.0, -0.75, 0.75, -0.5, 0.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.0, 0.0, 0.75, 0.0, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, -0.25, 0.0, -1.0, 0.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.25, -1.0, 0.5, 1.0, -1.0, 0.25, -0.75, 0.5, -1.0, -0.25, -0.5, 0.75, -0.25, -1.0, 1.0, 0.5, -0.25, 0.25, 0.5, 0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -0.5, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, 0.0, -0.25, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array1 = new Float32Array([0.75, -1.0, -1.0, 0.0, -0.75, 0.75, -0.25, 1.0, 0.5, 0.25, 0.5, -0.75, -0.25, -1.0, 0.5, 0.25, 0.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.25, 0.0, 0.0, 0.0, -0.75, -0.75, 0.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, 0.0, -0.5, 1.0, -0.75, 1.0, -1.0, -0.75, -0.5, -0.5, -0.25, -0.25, -0.75, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, 0.25, 0.25, 0.0, -0.75, -0.5, 0.75, 1.0, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -1.0, -0.25, 0.25, -0.25, -0.5, -0.75, -1.0, 0.5, 1.0, -0.75, -0.5, -0.25, 0.0, 0.25, 1.0, -0.5, -1.0, -0.25, 0.75, 0.5, 1.0, -0.5, -0.25, 1.0, -0.75, 0.75, -0.75, 0.25, -0.75, 0.75, -0.25, ]);
    texture200.destroy();
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
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
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    texture000.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    query201.destroy()
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    query200.destroy()
    
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const array2 = new Float32Array([-0.75, 1.0, 0.75, 0.5, 0.75, 0.75, 0.5, 0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, 0.5, -1.0, 0.75, 0.25, -0.25, 0.0, 0.0, -0.5, -0.25, 0.75, 0.25, 0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 0.25, 0.5, 0.25, 0.5, -0.5, -1.0, 0.0, 1.0, -0.75, 0.0, 0.75, -0.75, 0.75, -0.5, 0.75, -1.0, 0.75, 0.5, -1.0, -0.75, -1.0, 0.75, -0.5, 0.5, -0.5, 0.75, -0.75, 0.5, -0.25, 0.25, 0.5, -0.5, 0.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.25, 1.0, 0.75, -0.25, -0.5, -0.25, 1.0, -1.0, 0.0, -1.0, 0.75, 0.25, 0.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.5, -1.0, 0.0, -1.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.5, -0.5, 0.0, -1.0, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0010.setPipeline(compute_pipeline007);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    buffer000.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer002 = command_encoder002.finish();
    query001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    
    buffer003.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.pushErrorScope("validation");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_bundle_encoder000.popDebugGroup();
    buffer200.destroy()
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    texture201.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer004.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    query300.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    buffer201.destroy()
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture202.destroy();
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query300.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    query202.destroy()
    query100.destroy()
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query001.destroy()
    query002.destroy()
    query100.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query300.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_buffer003 = command_encoder003.finish();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    buffer300.destroy()
    buffer005.destroy()
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("internal");
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    command_encoder200.popDebugGroup()
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    command_encoder005.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.popDebugGroup()
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline007.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer005,
        0
    )
    command_encoder005.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    device00.queue.submit([command_buffer003, ]);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device50.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer008, 0);
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
    query100.destroy()
    
    query204.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    buffer301.destroy()
    buffer002.destroy()
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.pushErrorScope("internal");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query202.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder001.popDebugGroup();
    
    command_encoder005.popDebugGroup()
    query005.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0010.end();
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.destroy();
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
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
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
    buffer006.destroy()
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query302.destroy()
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query002.destroy()
    query002.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.popDebugGroup()
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
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer004 = command_encoder004.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.popDebugGroup()
    command_encoder001.insertDebugMarker("mymarker");
    
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0050.setPipeline(compute_pipeline0047);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query201.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
        occlusionQuerySet: undefined
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    texture001.destroy();
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    query201.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
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
    query204.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
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
    
    
    
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.pushErrorScope("internal");
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder301.setPipeline(render_pipeline307);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    query005.destroy()
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
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    const command_buffer104 = command_encoder104.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer207, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer207, 0);
    render_pass_encoder1010.setPipeline(render_pipeline100);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer104, ]);
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline0047.getBindGroupLayout(0),
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

    compute_pass_encoder0050.setBindGroup(0, bind_group001);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    render_pass_encoder1030.setPipeline(render_pipeline100);
    device00.queue.submit([command_buffer001, ]);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    render_pass_encoder1020.setPipeline(render_pipeline100);
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    compute_pass_encoder0050.end();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer005 = command_encoder005.finish();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer005, ]);
    device20.queue.submit([command_buffer200, ]);
}