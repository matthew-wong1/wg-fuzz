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
    const array0 = new Float32Array([-0.75, -1.0, -0.75, -0.5, 0.5, -1.0, 0.5, -0.25, -1.0, -1.0, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.75, -0.5, 0.25, -0.75, -0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.0, -0.25, 1.0, 0.5, 0.0, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.0, -1.0, -0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -0.75, -0.5, -1.0, -0.75, 1.0, -0.75, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 0.0, 0.25, 0.25, 0.0, -1.0, 0.75, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 1.0, 0.0, -0.5, 0.0, 1.0, 0.0, -0.5, 0.75, -0.25, -1.0, 1.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("out-of-memory");
    device10.destroy();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    buffer000.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    texture000.destroy();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.popDebugGroup()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const array1 = new Float32Array([-0.75, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 0.75, 1.0, 0.0, -1.0, 0.75, 0.75, 1.0, 0.5, -0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, -0.25, 0.25, 0.0, -0.25, 0.25, 0.0, 1.0, -0.25, -0.25, -1.0, -0.5, -0.75, 1.0, -0.5, 0.75, 1.0, 1.0, -0.75, -0.75, 0.75, 0.0, 0.25, -1.0, -0.75, 0.5, 0.25, -1.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.75, -0.25, -0.75, 0.5, -0.5, -0.5, -1.0, 1.0, 0.5, 1.0, -0.75, 0.75, -1.0, -0.5, -1.0, -1.0, 1.0, 0.75, 0.0, 0.25, 0.0, 0.25, 0.5, 1.0, -0.75, -0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 1.0, -0.5, 0.25, -0.25, -0.5, 0.75, -0.5, -0.25, 0.5, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("validation");
    
    
    buffer200.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder200.popDebugGroup()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_buffer200 = command_encoder200.finish();
    buffer002.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture001.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    device20.pushErrorScope("validation");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    texture002.destroy();
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.executeBundles([])
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.executeBundles([])
    
    const array2 = new Float32Array([-0.25, 0.0, 0.25, -0.25, 0.25, 0.0, 0.5, 0.75, -0.5, 0.0, 1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 1.0, -0.75, -1.0, 0.25, -0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -1.0, 0.75, 0.5, -1.0, -1.0, 0.0, 0.25, 0.25, -1.0, 0.25, -0.5, -0.75, 0.5, -0.25, -0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 0.0, -0.5, -0.5, -0.75, -0.25, -0.75, 0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, 1.0, 1.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, 0.5, 0.5, 0.25, -0.5, 0.5, 1.0, 0.5, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, 0.25, -0.25, -0.5, 0.5, 0.75, -0.25, -0.75, -0.75, 1.0, -0.25, ]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query202.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder201.setPipeline(render_pipeline200);
    query301.destroy()
    
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0020.executeBundles([])
    query201.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    device30.destroy();
    query201.destroy()
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
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
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    render_pass_encoder0020.executeBundles([])
    buffer202.destroy()
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    
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
    buffer003.destroy()
    buffer201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    query203.destroy()
    query203.destroy()
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    texture004.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
    const array3 = new Float32Array([-1.0, 0.25, -0.5, 0.0, 0.5, 0.25, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, -0.75, 0.0, -0.5, -1.0, 1.0, -0.25, -1.0, 1.0, 0.75, 0.5, 1.0, -0.25, 0.25, -0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, -1.0, -0.25, -0.25, 0.25, -0.5, 0.0, -0.25, -0.5, -1.0, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, 0.0, -1.0, -0.25, -1.0, 0.75, -1.0, 0.5, 0.75, -1.0, 0.5, 0.25, 1.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, -0.5, -1.0, -1.0, 0.5, -0.75, 1.0, 1.0, -0.75, 1.0, -1.0, 0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -1.0, 1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.75, 0.75, ]);
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query201.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query200.destroy()
    
    query003.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    buffer001.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    query202.destroy()
    command_encoder202.insertDebugMarker("mymarker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder002.setPipeline(render_pipeline001);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    device00.pushErrorScope("out-of-memory");
    
    query000.destroy()
    buffer005.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer203.destroy()
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    texture005.destroy();
    compute_pass_encoder2010.setPipeline(compute_pipeline201);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query200.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline203);
    buffer204.destroy()
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    
    query201.destroy()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer209, 0);
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer205.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder002.insertDebugMarker("marker");
    query200.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
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
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    compute_pass_encoder2020.setPipeline(compute_pipeline201);
    
    query000.destroy()
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    query202.destroy()
    device20.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    query004.destroy()
    buffer004.destroy()
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.setVertexBuffer(0, buffer003);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    query202.destroy()
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    query002.destroy()
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const array4 = new Float32Array([0.25, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 0.25, -0.5, -0.5, 1.0, 1.0, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 0.75, 0.25, 0.5, 1.0, 0.25, 0.5, 0.0, -0.25, 1.0, -0.75, -0.25, -1.0, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, 0.0, -0.25, 1.0, 0.25, -0.25, 0.25, 0.5, -0.75, -0.5, -0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.75, -0.25, -0.25, 0.75, 0.5, 0.0, 0.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.0, -1.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, -0.75, -1.0, ]);
    query202.destroy()
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    
    
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    query203.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout204]
    });
    compute_pass_encoder2010.popDebugGroup()
    query003.destroy()
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
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
    query200.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout204]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout207]
    });
    query205.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_bundle_encoder201.popDebugGroup();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query002.destroy()
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer200,
        0
    )
    buffer206.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder203.clearBuffer(buffer209);
    const command_buffer203 = command_encoder203.finish();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeBuffer(buffer209, 0, array4, 0, array4.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout207]
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    compute_pass_encoder0000.popDebugGroup()
    query002.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    query202.destroy()
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_bundle_encoder200.popDebugGroup();
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer208.destroy()
    texture006.destroy();
    query205.destroy()
    
    query202.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    buffer006.destroy()
    query002.destroy()
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("validation");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query204.destroy()
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    query001.destroy()
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
        powerPreference: "high-performance"
    });
    
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout206,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const array5 = new Float32Array([-0.75, -0.75, -0.75, 0.0, 1.0, 0.0, -0.75, 0.0, 0.5, 0.0, 1.0, -0.75, -0.25, 0.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.5, 0.5, 1.0, 0.75, 0.25, 0.5, 1.0, 0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 0.0, -0.75, -0.25, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 1.0, -0.75, -0.5, 0.75, 0.0, -0.5, 1.0, -0.75, -0.5, -0.75, -1.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.5, -1.0, -0.5, 0.75, 1.0, 0.75, 0.75, 1.0, -0.5, 0.75, 0.25, 0.25, 1.0, 0.5, 0.5, 0.75, -1.0, 0.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.25, -1.0, -0.75, -1.0, 0.25, -0.5, 0.75, 0.25, -0.5, 0.5, -0.25, -0.5, -1.0, 0.0, 0.5, -0.25, ]);
    query000.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer209, 0, array2, 0, array2.length);
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query201.destroy()
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
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
    
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    query001.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout209,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    buffer007.destroy()
    device20.queue.writeBuffer(buffer209, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder2010.end();
    const command_buffer201 = command_encoder201.finish();
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
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group204);
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.setVertexBuffer(0, buffer003);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.end();
    compute_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    const command_buffer002 = command_encoder002.finish();
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer002, ]);
}