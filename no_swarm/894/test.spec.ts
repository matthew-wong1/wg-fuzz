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
    
    
    
    const array0 = new Float32Array([0.5, 1.0, -0.75, 0.5, -1.0, 0.5, 0.0, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, -0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 0.5, 0.0, -1.0, -0.5, -0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.5, -1.0, 0.5, 0.5, -1.0, -0.25, 0.0, -0.25, 0.75, 0.25, 0.25, -0.25, -0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -1.0, -0.75, 0.0, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, -0.25, 0.25, -0.5, 1.0, -0.5, -1.0, -0.25, 0.25, 1.0, -0.25, -0.75, 0.5, ]);
    
    const array1 = new Float32Array([-0.5, -0.5, 0.5, -1.0, -1.0, 0.25, 0.5, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, -0.5, -0.75, -1.0, 0.25, 0.75, 1.0, -0.5, 1.0, 0.0, 0.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.25, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 0.5, -0.25, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, 0.25, 0.75, -0.5, -1.0, -1.0, 0.25, 1.0, -0.5, 0.75, -0.75, 0.0, 1.0, 0.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.0, -1.0, 0.0, 0.25, 0.25, 0.25, -0.25, 0.0, -1.0, 0.0, -1.0, 0.5, -0.5, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.5, -1.0, -0.75, -0.25, -0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device10.pushErrorScope("out-of-memory");
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.destroy();
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    const array2 = new Float32Array([-0.25, -0.5, 0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -1.0, 0.75, 0.0, 0.5, 1.0, -0.5, -0.5, 1.0, -0.25, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, -0.5, 0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.25, -0.5, -0.5, 0.5, -0.25, 0.25, 1.0, -0.5, 0.75, 1.0, -0.75, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.75, 0.0, -0.75, -0.5, -0.5, 0.75, -0.5, -1.0, -1.0, 0.25, -0.75, -1.0, 1.0, 0.25, 0.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.0, 1.0, 0.25, -1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, 0.0, 0.5, 0.5, 1.0, -0.75, -0.25, 1.0, -0.75, 0.25, -1.0, -0.5, 0.75, 1.0, 0.5, 0.75, 0.0, ]);
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array3 = new Float32Array([0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -0.25, -1.0, -1.0, -0.25, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, 1.0, 0.0, 0.5, 0.5, -0.25, -1.0, -0.5, -0.5, -0.25, 0.0, 0.25, -0.25, -0.5, 0.75, -0.5, 1.0, 0.75, -0.5, 0.25, 0.0, -0.25, -0.75, 0.75, -0.25, 0.5, 0.75, -0.5, 1.0, 0.0, -0.75, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.0, -0.75, -0.75, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, -0.75, -0.25, -0.5, 0.75, -0.75, -0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.0, 0.25, 0.0, -0.25, -0.5, -0.5, -0.75, -0.25, 0.0, -0.5, -0.25, 1.0, 0.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 0.0, 1.0, -1.0, ]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer100.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    texture100.destroy();
    const array4 = new Float32Array([-1.0, 0.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.75, 0.75, -1.0, 1.0, -0.25, -0.25, -0.5, -0.25, -0.25, -1.0, -0.75, -0.5, 0.5, -1.0, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 0.75, -0.25, 1.0, -0.25, 1.0, 0.75, 0.0, 1.0, -0.5, 0.25, -0.5, -0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, -0.25, -1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.5, 0.5, 0.5, 0.75, 0.25, 1.0, 1.0, -1.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 1.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.75, ]);
    buffer200.destroy()
    query100.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_buffer100 = command_encoder100.finish();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query101.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device20.pushErrorScope("out-of-memory");
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder201.insertDebugMarker("mymarker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer201.destroy()
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query201.destroy()
    texture201.destroy();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer202.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder2010.setPipeline(render_pipeline202);
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    query201.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    texture200.destroy();
    query101.destroy()
    render_pass_encoder2020.setPipeline(render_pipeline200);
    query102.destroy()
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    buffer204.destroy()
    
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
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
    device20.pushErrorScope("validation");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const command_buffer400 = command_encoder400.finish();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    compute_pass_encoder1010.setPipeline(compute_pipeline101);
    query201.destroy()
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const array5 = new Float32Array([-1.0, -0.5, -0.25, 0.5, 1.0, -0.75, 1.0, -0.25, 0.75, -0.75, 1.0, -0.5, -1.0, -0.25, -0.5, 1.0, 0.75, 0.0, 0.5, 0.0, -1.0, -0.75, 0.0, -0.5, 0.25, -1.0, 0.5, -0.25, -0.75, 0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 0.5, 0.5, 0.5, -0.5, -1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.75, 0.5, -0.25, -0.75, -0.5, 0.25, -1.0, -0.75, -0.5, 0.75, -1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.75, 0.75, 0.75, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.0, 1.0, 0.5, 0.0, 0.75, 0.5, 0.25, -1.0, -0.25, 0.5, -1.0, 0.25, ]);
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const array6 = new Float32Array([-1.0, 0.0, -0.5, 0.75, -0.5, 0.5, 0.5, 0.0, 0.5, -0.5, 0.75, -1.0, 1.0, 0.75, 1.0, 0.5, 0.25, 0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.5, 0.0, 0.75, 0.5, -0.5, -0.75, -0.5, 0.75, -1.0, -0.5, 0.75, 0.75, 0.25, 0.0, 1.0, 0.25, 0.5, -0.5, -1.0, -0.5, 0.25, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, -0.5, -0.75, -0.75, -0.25, 0.75, -0.25, 0.75, -0.25, -0.5, 0.25, -0.25, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.25, 1.0, -0.25, 0.5, 0.25, -1.0, -0.5, 0.5, 1.0, -1.0, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.5, 0.25, -0.25, 0.5, -0.75, 0.25, 1.0, ]);
    
    texture401.destroy();
    render_pass_encoder2010.beginOcclusionQuery(0)
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture102.destroy();
    render_pass_encoder2010.popDebugGroup();
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
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
        occlusionQuerySet: query103
    });
    texture400.destroy();
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    render_pass_encoder2020.setStencilReference(1);
    
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
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture202.destroy();
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    texture203.destroy();
    render_pass_encoder2010.endOcclusionQuery()
    
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_pass_encoder4010.beginOcclusionQuery(0)
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    buffer400.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    
    query202.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer105, 0);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder4010.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    buffer403.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer400, ]);
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    buffer402.destroy()
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    render_pass_encoder2020.popDebugGroup();
    device10.pushErrorScope("validation");
    
    buffer205.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    render_pass_encoder4010.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.beginOcclusionQuery(1)
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    compute_pass_encoder1010.end();
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    render_pass_encoder1020.setStencilReference(1);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
        occlusionQuerySet: query100
    });
    query102.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.beginOcclusionQuery(2)
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
    buffer101.destroy()
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2020.endOcclusionQuery()
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    
    
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setStencilReference(1);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.endOcclusionQuery()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4010.setPipeline(render_pipeline402);
    render_pass_encoder2010.popDebugGroup();
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group400);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    render_pass_encoder4010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    compute_pass_encoder2000.end();
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, ]);
}