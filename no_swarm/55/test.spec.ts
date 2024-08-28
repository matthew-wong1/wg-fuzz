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
    
    
    
    const array0 = new Float32Array([-0.75, 0.5, -0.75, -0.5, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, -0.5, 0.0, -0.75, -1.0, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, 0.25, 1.0, -0.5, 0.75, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, -0.25, 0.25, 1.0, 0.25, -0.5, -0.25, 1.0, -0.75, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, 0.0, -0.25, 0.25, 0.75, 0.75, 0.75, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.25, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, 0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 0.25, 1.0, 0.75, 1.0, 0.25, -0.75, -0.5, -0.25, 0.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.5, 0.5, -0.75, 1.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.5, -0.5, 0.5, -0.5, 0.75, 0.0, ]);
    const array1 = new Float32Array([-0.25, -0.75, -0.75, -0.25, -0.5, 0.25, -0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.75, 1.0, -0.5, -0.5, -1.0, 0.0, 1.0, 0.75, 0.75, -0.5, 0.75, 0.0, 0.75, 0.5, 0.25, 0.75, 0.75, 0.0, -0.5, -1.0, -0.5, 1.0, 0.5, -0.5, 0.75, -1.0, 0.5, -1.0, -0.75, -0.5, -0.75, -0.75, -0.25, 0.0, 0.5, 0.5, -0.75, 0.0, -0.5, -1.0, -0.5, 1.0, 0.25, -0.5, 0.25, 0.5, 0.5, 0.5, 1.0, 0.5, -0.25, 0.5, 0.5, -0.25, -0.25, -0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.0, 0.5, -0.5, -0.25, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, -0.25, 0.25, 0.0, 0.75, -1.0, -0.75, 0.25, 0.75, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.0, -0.75, -0.5, 0.5, 0.25, 0.25, -0.25, 0.25, -0.75, -1.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, -0.5, -0.75, 0.5, 0.5, 0.0, 0.75, 0.5, 1.0, 0.25, 0.5, 0.5, 0.5, 0.75, 0.25, -1.0, 0.5, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -0.75, 0.25, 0.5, -1.0, 1.0, -0.25, 0.0, 0.75, 0.0, 0.25, -0.5, 0.0, 0.25, -0.25, 1.0, -0.5, -0.25, 0.75, 0.25, -0.75, 0.0, 0.75, -0.75, 0.5, 0.0, 0.75, -0.75, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, -0.75, 0.75, 0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.75, -0.5, 0.25, 0.25, -1.0, 0.75, 1.0, 1.0, 0.0, -0.5, 1.0, 0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer001.destroy()
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const array3 = new Float32Array([-0.25, 0.75, 1.0, 0.0, -1.0, 0.25, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.25, -1.0, -0.25, 0.75, 0.75, -1.0, 0.75, 0.0, -0.25, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -1.0, -1.0, -0.25, 0.75, 0.75, 1.0, 0.25, -0.75, 0.75, -0.5, 0.25, 0.25, -0.75, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, 0.5, -0.5, -0.75, 0.5, 1.0, 0.5, -0.5, -1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 0.0, 1.0, -0.75, 0.25, -0.75, -0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.5, 0.25, -0.25, -0.25, 0.75, 1.0, -0.25, -0.75, 0.25, -0.5, -1.0, -0.5, -1.0, 0.25, -0.75, 0.0, 0.0, -0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.clearBuffer(buffer000);
    
    command_encoder000.clearBuffer(buffer000);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    texture001.destroy();
    
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query000.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array4 = new Float32Array([1.0, -1.0, -0.75, -0.5, 0.75, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 0.5, -0.75, -0.25, -0.5, -1.0, -0.25, -1.0, 0.75, 1.0, 0.75, -0.75, 0.0, 0.0, -1.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.25, 1.0, 0.0, 1.0, -0.25, 0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.5, -0.75, -0.25, -1.0, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.5, -0.5, -0.75, 0.25, 0.0, 0.5, -0.75, -0.5, -0.25, -0.75, 0.5, -0.5, 0.0, 0.5, -1.0, 0.5, 0.0, -0.75, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 1.0, 0.0, -0.25, 0.0, -1.0, 0.25, -0.75, 0.25, -0.5, -0.25, ]);
    texture003.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    query001.destroy()
    texture002.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    buffer000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array5 = new Float32Array([-0.75, -1.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, -0.25, 0.75, -0.25, 0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, -0.75, -0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 0.5, 0.75, 0.75, 0.5, 0.25, -0.75, -0.75, 0.75, 0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, 0.5, 0.0, 0.75, 1.0, 0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 0.75, 0.0, -0.75, 0.5, -1.0, 0.75, 0.0, -0.75, 0.75, 1.0, -0.5, 0.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, 0.0, 0.75, -0.75, 0.5, 0.5, -0.5, 0.75, 0.75, 0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.0, ]);
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
    device20.pushErrorScope("validation");
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    buffer003.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.insertDebugMarker("mymarker");
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer201 = command_encoder201.finish();
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture201.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    texture200.destroy();
    device20.pushErrorScope("internal");
    
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
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    command_encoder200.popDebugGroup()
    render_pass_encoder0010.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.pushErrorScope("internal");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query003.destroy()
    query000.destroy()
    buffer006.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture004.destroy();
    device20.queue.submit([command_buffer201, ]);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("out-of-memory");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const array6 = new Float32Array([-0.5, 1.0, 0.75, -0.75, 0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -1.0, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.25, -0.5, 0.25, 0.25, -0.5, 0.25, -0.5, 0.0, -1.0, -0.5, 0.0, -1.0, 0.5, -0.75, 0.75, -0.5, -0.25, -1.0, 0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, -1.0, 0.25, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, 0.0, 0.25, -0.75, -0.5, 0.75, 1.0, 0.25, 0.25, 0.5, 0.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, -1.0, 0.0, 1.0, 1.0, 0.25, -0.75, 0.5, 0.5, 0.0, -0.75, -1.0, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -0.25, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    
    texture202.destroy();
    
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0010.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer004.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    query101.destroy()
    
    
    texture101.destroy();
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    texture100.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture004.width / 2, texture004.height / 2);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device10.pushErrorScope("out-of-memory");
    
    render_pass_encoder0010.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    
    query000.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder101.popDebugGroup()
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    
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
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    device20.pushErrorScope("validation");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([-0.75, 0.25, 0.75, -0.75, 1.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.25, -0.25, 1.0, -0.5, 0.75, 0.0, -0.75, -0.25, 0.75, 0.0, -0.25, -0.25, -1.0, 1.0, 0.0, -0.25, -0.25, 0.0, -0.25, -0.75, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, 0.75, 0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.0, -0.25, 0.0, 0.75, 0.75, -1.0, 0.0, 1.0, 0.0, -0.25, 0.0, 0.25, -1.0, -0.5, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 0.75, 0.5, 0.0, 0.25, 0.75, -1.0, 0.0, -0.75, 1.0, 0.75, 0.0, -0.75, 0.25, 0.5, -1.0, 0.75, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, -0.5, 1.0, 0.5, -1.0, -0.25, 0.0, 0.75, -0.25, 0.75, 0.5, 0.25, -0.25, -0.5, -0.25, -0.25, ]);
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer007, 0);
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
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture104.destroy();
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
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
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder105.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    render_pass_encoder0010.executeBundles([])
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder0010.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_pass_encoder0010.pushDebugGroup("group_marker");
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer103,
        0
    )
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder0010.insertDebugMarker("marker");
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    command_encoder104.insertDebugMarker("mymarker");
    render_pass_encoder0010.executeBundles([])
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.executeBundles([])
    command_encoder203.pushDebugGroup("mygroupmarker")
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    query100.destroy()
    buffer104.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_pass_encoder1050.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_bundle_encoder101.setPipeline(render_pipeline100);
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
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    buffer0010.destroy()
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer101.destroy()
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder1040.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer0011.destroy()
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    buffer105.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    compute_pass_encoder1020.popDebugGroup()
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query003.destroy()
    
    command_encoder203.popDebugGroup()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder101.popDebugGroup()
    render_pass_encoder1030.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder0010.setPipeline(render_pipeline001);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
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
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.end();
    command_encoder000.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder0010.popDebugGroup();
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group101);
    const command_buffer101 = command_encoder101.finish();
    device20.queue.submit([command_buffer203, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    render_pass_encoder1040.setPipeline(render_pipeline101);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_pass_encoder1040.setBindGroup(0, bind_group102);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setPipeline(render_pipeline101);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer203, 0);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2000.popDebugGroup()
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group003);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder2000.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
    command_encoder202.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device20.queue.submit([command_buffer202, ]);
}