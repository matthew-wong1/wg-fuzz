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
    
    
    const array0 = new Float32Array([-0.5, -0.75, 0.0, 0.75, -1.0, -0.75, -0.75, -0.25, 0.75, 0.25, 0.25, -0.5, -0.25, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, 1.0, -0.25, -1.0, 0.25, 0.5, -0.25, -0.75, -1.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, 0.0, -0.25, 0.25, -0.75, -0.5, 0.0, -0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.25, 0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 0.5, -0.25, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, -0.25, -1.0, -0.75, -0.5, -0.25, 0.0, 0.5, -1.0, -0.25, -0.25, -1.0, 0.75, 1.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.75, -0.5, -1.0, -1.0, 0.75, -0.25, 0.5, 1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const array1 = new Float32Array([-1.0, 0.5, 0.0, 1.0, 0.5, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 0.0, 0.0, 0.5, 0.75, -1.0, -0.75, -1.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, -0.25, 0.0, -0.75, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, -0.75, 0.25, 0.0, 1.0, -0.25, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, 0.75, -0.5, -0.25, 1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.5, 0.75, 0.5, -0.75, -0.25, -0.5, 0.5, -0.25, -1.0, 0.0, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, 0.5, -1.0, 0.75, -0.5, 0.75, -0.75, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 0.5, 0.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 1.0, -1.0, ]);
    
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
    device10.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder000.insertDebugMarker("mymarker");
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder000.insertDebugMarker("mymarker");
    
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([-1.0, 0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -1.0, 0.0, -0.25, -0.25, 0.5, -0.75, -0.75, -0.75, -0.5, -0.75, 0.75, -0.5, -0.25, -1.0, -0.75, -0.5, 0.5, -1.0, -0.25, -0.25, 0.75, -0.5, 0.0, -0.75, -0.25, 0.5, -0.75, 0.75, -0.75, -1.0, -0.25, -0.5, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, -1.0, -1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 0.75, 0.5, -0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 0.75, -0.25, 0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 0.5, -0.5, 0.5, -0.25, 0.25, -0.5, 0.25, 0.5, 1.0, 1.0, 0.25, 0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 0.25, 0.0, -0.25, 0.75, 0.25, 1.0, -0.5, -0.75, 0.25, -0.75, 0.0, -0.75, 0.25, -0.75, ]);
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    command_encoder000.popDebugGroup()
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    query100.destroy()
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer000.destroy()
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    texture100.destroy();
    const array3 = new Float32Array([-0.25, -1.0, -0.5, -1.0, -0.5, 0.5, 0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 0.25, 0.5, -1.0, -1.0, -0.75, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, 0.5, 0.5, -1.0, 1.0, -0.75, 1.0, 0.0, 0.25, -0.25, 1.0, -0.5, 0.5, 0.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.75, -0.5, -0.25, -0.25, 0.0, -0.25, 0.25, 1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, -0.5, 1.0, -1.0, -0.5, 1.0, 0.75, 0.0, -0.5, 0.5, 0.75, -1.0, -0.25, 1.0, 1.0, 0.25, 0.0, -0.5, -0.75, 0.25, -0.5, -0.25, -1.0, 0.25, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    query000.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query000.destroy()
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    const array4 = new Float32Array([0.0, -0.75, 1.0, 1.0, 0.25, 0.5, -0.75, 1.0, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, 0.5, -0.5, 0.75, -0.5, 0.25, -0.25, -0.5, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, -1.0, 0.0, -0.75, 0.0, -0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 0.5, 0.75, -0.5, 1.0, -0.25, -0.25, 0.5, 0.75, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, -1.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.25, 0.25, -0.75, 0.5, 0.5, -1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 1.0, -1.0, -1.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, 0.0, 1.0, -1.0, -1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 1.0, 0.0, ]);
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    command_encoder101.insertDebugMarker("mymarker");
    buffer101.destroy()
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device10.popErrorScope().then((error) => {
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0010.popDebugGroup()
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    texture101.destroy();
    
    
    
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_buffer102 = command_encoder102.finish();
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    
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
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    query100.destroy()
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device50.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query100.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    texture000.destroy();
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    compute_pass_encoder0000.popDebugGroup()
    device10.pushErrorScope("internal");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    query101.destroy()
    device60.pushErrorScope("out-of-memory");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    query101.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query100.destroy()
    
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
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
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer005, 0);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.executeBundles([])
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    buffer003.destroy()
    device10.queue.submit([command_buffer102, ]);
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_bundle_encoder100.popDebugGroup();
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    buffer100.destroy()
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer103.destroy()
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    const array5 = new Float32Array([-1.0, 1.0, 0.25, -0.75, 1.0, 0.25, 0.0, -0.5, -0.25, -0.25, 0.0, -0.75, -0.5, 0.0, 1.0, 0.25, -1.0, 0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.5, -0.25, -0.5, -1.0, 1.0, -1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 0.5, -1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.5, 1.0, -1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 1.0, 0.5, -0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 1.0, -0.75, -0.5, -0.5, -0.75, -1.0, 0.75, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, 0.5, -1.0, 0.25, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, 0.5, 0.0, -0.75, -0.75, 0.75, 0.75, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, -0.5, -0.5, -0.5, -0.75, ]);
    render_pass_encoder1010.insertDebugMarker("marker");
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
    render_bundle_encoder101.insertDebugMarker("marker");
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

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1030.setStencilReference(1);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1030.setStencilReference(1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
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
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    query600.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_pass_encoder1030.insertDebugMarker("marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    buffer007.destroy()
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
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder101.setPipeline(render_pipeline104);
    
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
        layout: render_pipeline002.getBindGroupLayout(0),
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
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    buffer0010.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    buffer009.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    texture001.destroy();
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
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

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    buffer0011.destroy()
    
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.pushErrorScope("internal");
    
    buffer005.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query600.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder1030.setStencilReference(1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder600.resolveQuerySet(
        query600,
        0,
        32,
        buffer600,
        0
    )
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    texture102.destroy();
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_pass_encoder1040.executeBundles([])
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query600.destroy()
    query102.destroy()
    
    command_encoder601.insertDebugMarker("mymarker");
    buffer400.destroy()
    
    query000.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
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
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1050.insertDebugMarker("marker");
    compute_pass_encoder0010.end();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1050.setPipeline(render_pipeline104);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    buffer106.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder1030.setPipeline(render_pipeline102);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder1050.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query600.destroy()
    
    buffer008.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const array6 = new Float32Array([1.0, 0.75, 0.0, -0.75, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, -1.0, 0.25, -1.0, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, 1.0, -0.25, -0.75, -1.0, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -0.25, 0.0, 0.75, 0.75, 0.25, -0.75, 0.75, -0.75, -0.75, 0.5, 0.75, 0.25, 0.25, -0.75, 0.25, 0.75, 0.25, -0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 0.25, -0.5, -0.75, 0.5, -0.25, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, 1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 1.0, -0.25, 0.5, 0.0, 0.0, 0.75, 0.0, 0.75, 0.0, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline104.getBindGroupLayout(0),
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
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    render_pass_encoder1010.setStencilReference(1);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer004.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    command_encoder300.insertDebugMarker("mymarker");
    buffer401.destroy()
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer109.destroy()
    command_encoder601.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer601.destroy()
    texture002.destroy();
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer105.destroy()
    command_encoder601.insertDebugMarker("mymarker");
    query600.destroy()
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.end();
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
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setStencilReference(1);
    
    render_pass_encoder1040.setPipeline(render_pipeline105);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder0020.setPipeline(render_pipeline008);
    const command_buffer602 = command_encoder602.finish();
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder1030.popDebugGroup();
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group103);
    const command_buffer003 = command_encoder003.finish();
    command_encoder001.popDebugGroup()
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder1010.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const command_buffer000 = command_encoder000.finish();
    command_encoder300.popDebugGroup()
    const command_buffer300 = command_encoder300.finish();
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, ]);
    command_encoder601.popDebugGroup()
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
        layout: render_pipeline008.getBindGroupLayout(0),
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
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1040.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group105);
    device60.queue.submit([command_buffer602, ]);
    const command_buffer601 = command_encoder601.finish();
    const command_buffer100 = command_encoder100.finish();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    device10.queue.submit([command_buffer100, ]);
}