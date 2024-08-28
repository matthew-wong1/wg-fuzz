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
    
    
    const array0 = new Float32Array([-0.75, -0.25, 0.5, -0.75, 1.0, 0.5, -1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 1.0, 1.0, -1.0, 1.0, -0.75, -1.0, -1.0, 0.75, -0.25, 1.0, -0.25, -1.0, -0.25, 0.5, -0.5, -1.0, 0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.25, -0.5, -0.75, 0.75, -0.75, -0.5, 0.75, -0.25, 0.5, 1.0, -0.5, -0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 1.0, 0.5, 0.75, 0.5, 0.25, 1.0, 0.0, -0.5, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.25, 0.25, -1.0, -0.75, 0.0, 0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 0.5, -0.75, 0.75, -1.0, -0.5, 0.25, 0.5, 0.75, 1.0, 1.0, 0.75, ]);
    
    
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array1 = new Float32Array([1.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.5, 0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.5, 0.5, 0.75, 0.5, 0.0, 0.25, -0.75, -0.25, -0.5, -0.25, 1.0, -0.75, -1.0, -1.0, -0.5, -0.25, -0.5, 0.0, 0.5, -0.5, 0.0, 1.0, 1.0, 0.0, -0.25, 0.75, -0.5, -1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.5, 0.5, -0.25, -0.25, 1.0, 1.0, 0.75, 0.25, 0.75, -0.25, -1.0, -0.5, 0.0, -1.0, -0.5, -0.25, 1.0, -1.0, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, -0.75, -0.25, -0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.0, -1.0, 0.5, -0.75, 1.0, 0.0, 0.25, -0.25, -0.25, -0.5, 0.75, 1.0, 0.25, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, -0.25, 0.75, 1.0, ]);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    command_encoder000.popDebugGroup()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    query100.destroy()
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
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query001.destroy()
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder0000.popDebugGroup()
    query002.destroy()
    
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array2 = new Float32Array([0.75, -0.5, -0.5, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, 0.0, -0.5, 1.0, -0.5, -0.25, 0.0, 0.75, -0.75, -0.75, 0.25, 0.25, -0.5, 0.25, -0.25, 0.0, 1.0, -0.25, 0.5, 0.75, -0.25, -0.25, -0.75, 1.0, 0.25, 0.0, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.0, 0.0, 1.0, -0.5, -0.75, -0.5, -0.75, 0.75, 0.5, 1.0, 0.25, -1.0, -1.0, -1.0, 0.0, 1.0, 0.5, -0.5, -0.25, -0.75, 1.0, 1.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.75, 1.0, -0.25, -0.75, 1.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, 0.25, -0.25, 0.0, -0.25, 0.0, 1.0, 0.25, 0.75, 0.5, -0.25, 0.5, 1.0, 0.25, -0.25, -0.75, ]);
    
    
    query100.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    
    
    
    command_encoder001.clearBuffer(buffer000);
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query000.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array3 = new Float32Array([0.5, -0.75, -1.0, -0.75, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, 0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.5, 0.75, -0.5, 0.5, 1.0, -0.75, 0.25, -1.0, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 0.75, -1.0, 1.0, -1.0, -0.75, 0.5, 0.0, -0.5, -0.75, 1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.5, -0.5, 0.75, 0.0, 0.25, -0.25, 0.25, -0.25, 0.5, 0.5, -1.0, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -1.0, 0.0, 1.0, -1.0, -0.25, -0.25, 1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.25, -0.75, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query003.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
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
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    query001.destroy()
    device20.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query003.destroy()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const array4 = new Float32Array([-0.25, 0.25, 1.0, -0.5, -1.0, -0.25, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 0.75, 1.0, 0.0, -0.25, -0.75, -0.5, -0.25, 0.25, -1.0, 0.5, -0.75, 1.0, -1.0, -0.75, 1.0, 0.75, 0.25, 0.0, 0.25, 1.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.25, 0.25, -0.5, -1.0, 1.0, -0.75, -1.0, -0.5, 0.25, 0.0, 0.25, 0.75, 0.5, -0.25, 0.25, -1.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 0.75, 0.25, 0.5, -0.25, 1.0, 0.25, 0.5, -0.25, 0.75, -1.0, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, 0.25, 0.25, 0.5, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.75, -0.5, 0.25, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.25, -0.25, ]);
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture001.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder0000.popDebugGroup()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    buffer000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    query100.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.5, 0.75, -1.0, -0.75, 0.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.5, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.25, 0.25, -0.75, 0.5, 1.0, -0.5, 0.25, 0.75, 0.25, -0.25, -0.25, -1.0, -0.75, 0.0, -0.5, -1.0, -0.5, -0.5, 0.75, 0.75, -0.5, -0.25, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, 0.0, 1.0, -0.25, -0.25, 0.75, -0.75, 0.75, -0.5, -0.5, -0.75, -0.75, -0.75, -0.25, 1.0, 0.5, -0.5, 0.25, 0.0, -0.75, 1.0, -1.0, 0.0, -1.0, 1.0, -0.75, -1.0, 0.5, -0.75, -0.5, -0.25, -0.75, ]);
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    render_bundle_encoder001.popDebugGroup();
    texture002.destroy();
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    query001.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query203.destroy()
    
    device10.pushErrorScope("internal");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder2000.setStencilReference(1);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query002
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query004.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    query004.destroy()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    buffer200.destroy()
    query000.destroy()
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.setPipeline(render_pipeline102);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder2000.setStencilReference(1);
    
    
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline202);
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
    render_pass_encoder0030.setStencilReference(1);
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    query004.destroy()
    
    
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    query101.destroy()
    query203.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query001.destroy()
    
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    device20.pushErrorScope("internal");
    
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
    query003.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    compute_pass_encoder0010.popDebugGroup()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    buffer104.destroy()
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query003
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    query004.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    query204.destroy()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query004.destroy()
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    buffer201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
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
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder0030.executeBundles([])
    buffer203.destroy()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    render_pass_encoder0030.executeBundles([])
    device00.pushErrorScope("out-of-memory");
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    buffer106.destroy()
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0030.setPipeline(render_pipeline000);
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
    render_bundle_encoder201.setPipeline(render_pipeline203);
    buffer202.destroy()
    render_pass_encoder2000.endOcclusionQuery()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    query006.destroy()
    render_pass_encoder2000.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    device40.destroy();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group001);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group002);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    texture000.destroy();
    query007.destroy()
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    query005.destroy()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setPipeline(render_pipeline000);
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    query006.destroy()
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0010, 0);
    
    
    buffer0010.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer204.destroy()
    
    
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer005.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    buffer101.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    device00.pushErrorScope("internal");
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    texture100.destroy();
    buffer103.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
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

    render_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0020.setPipeline(render_pipeline000);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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
    render_pass_encoder0020.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1012, 0);
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    compute_pass_encoder0010.popDebugGroup()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    device00.queue.submit([command_buffer000, ]);
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group104);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1015, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    device20.queue.submit([command_buffer201, ]);
    const command_buffer100 = command_encoder100.finish();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer101, ]);
}