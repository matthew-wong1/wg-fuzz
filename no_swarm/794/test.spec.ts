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
    const array0 = new Float32Array([0.5, -0.25, 0.5, 0.75, 0.0, -0.25, -0.5, -0.75, 1.0, -0.75, 0.25, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.75, -1.0, -0.25, 1.0, -0.5, 1.0, -1.0, 0.5, 0.25, -1.0, -0.75, -0.25, 0.5, -0.5, -0.25, 0.0, -1.0, -1.0, 1.0, -0.25, 0.75, 1.0, -0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.75, -1.0, -1.0, -0.25, -1.0, 0.75, -1.0, -0.5, 1.0, 0.5, -1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, -1.0, 1.0, 1.0, 0.0, -1.0, -0.5, 0.25, 0.0, -0.5, -1.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.75, -0.25, -0.5, 0.0, -1.0, 0.0, -0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.0, -0.5, 1.0, 0.0, 0.5, 0.25, 0.5, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([-0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -1.0, 0.0, 0.5, -0.25, 0.0, -0.5, -0.25, -0.25, 0.0, -1.0, -0.75, -0.75, 0.0, -0.5, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, -1.0, 0.25, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, 0.25, 0.0, 1.0, -0.25, 0.75, 0.0, -1.0, -0.5, 0.75, 0.0, 0.5, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, 0.5, 0.5, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.25, -0.75, 0.5, -0.5, 0.5, -0.75, 0.25, -0.75, -1.0, 0.25, -0.75, 0.0, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.25, -0.25, -0.5, 0.25, 0.25, 0.75, 0.0, 0.5, -0.5, 0.0, -0.5, -0.5, 0.75, 0.0, 1.0, -0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const array2 = new Float32Array([0.25, -0.75, -0.25, 0.0, 0.0, -0.25, -0.75, -1.0, -0.75, 0.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.0, -0.75, -0.75, 0.5, 0.25, -0.75, -1.0, 0.5, 0.25, 0.75, 0.75, 0.75, 0.0, 0.25, -0.5, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, -0.25, 0.75, -1.0, 0.5, 0.25, -0.25, -1.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.5, 0.25, 1.0, 1.0, 0.25, 0.25, 1.0, 1.0, -1.0, -0.75, 0.75, 1.0, 0.5, 0.25, -0.5, 0.25, 1.0, 0.75, 0.25, -0.5, 0.25, 0.25, 0.25, -0.25, -1.0, 1.0, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 0.5, 0.5, 1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.0, -0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-0.5, 0.75, 0.0, 0.5, -0.75, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, 1.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.75, 1.0, 0.25, 0.0, 0.25, -1.0, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -1.0, 0.0, -0.25, 0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.5, 0.25, 0.75, -1.0, 0.0, -0.5, 1.0, 0.25, -0.25, 0.0, 0.25, 0.5, 0.5, -0.75, 0.25, -0.75, -0.5, 0.5, 0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, -1.0, -1.0, 0.0, -1.0, 0.75, 0.5, -0.5, 0.0, 0.75, 0.5, -0.25, 0.5, 0.75, -0.25, 0.0, ]);
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer000.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    device30.destroy();
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device20.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer002.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device40.pushErrorScope("internal");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.pushErrorScope("validation");
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([0.0, -0.75, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.5, 1.0, -1.0, -0.25, -1.0, 0.25, -0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.5, 1.0, -0.25, 1.0, -1.0, 0.5, -1.0, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -0.5, 0.75, 0.0, 0.0, 0.25, 0.0, -0.5, 1.0, -0.5, 0.25, 0.25, -0.75, -0.5, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, 0.5, 0.25, -1.0, 0.5, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.0, 0.75, -0.25, -1.0, 0.5, -0.5, -0.75, -0.75, 0.0, 0.5, -0.25, 0.5, 0.25, 0.25, 0.25, 1.0, -1.0, 0.25, 0.25, -1.0, -0.25, ]);
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
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
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture000.destroy();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
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
    compute_pass_encoder0010.popDebugGroup()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    buffer101.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.setPipeline(compute_pipeline002);
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_pass_encoder0030.executeBundles([])
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    buffer005.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.executeBundles([])
    device40.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder0030.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    compute_pass_encoder0000.popDebugGroup()
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
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_bundle_encoder001.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    query001.destroy()
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder002.popDebugGroup();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device10.pushErrorScope("internal");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
    
    compute_pass_encoder0000.end();
    query100.destroy()
    
    texture402.destroy();
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder101.setPipeline(render_pipeline101);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    command_encoder000.popDebugGroup()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture401.destroy();
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setStencilReference(1);
    
    render_bundle_encoder001.popDebugGroup();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
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
    texture002.destroy();
    const array5 = new Float32Array([1.0, 0.25, 1.0, -0.5, 1.0, -0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, 0.0, -1.0, 0.5, 0.25, -0.5, -0.75, -0.5, -0.25, -0.75, 0.75, 1.0, -1.0, 0.5, 0.5, -0.75, 0.0, 1.0, 0.25, -0.25, -0.25, -1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.75, 0.25, 0.25, -0.75, 0.5, -1.0, 0.75, 0.75, 0.0, 0.75, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, 0.0, 0.5, -1.0, 0.5, 0.75, 0.25, 0.0, -0.75, -0.75, -0.25, -0.25, -0.25, -0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, 0.75, 1.0, -1.0, 0.75, 0.75, -0.75, 0.25, 0.0, -0.5, ]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_bundle_encoder402.pushDebugGroup("group_marker");
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
    
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    texture100.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query400.destroy()
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    buffer007.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device40.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_pass_encoder0000.executeBundles([])
    
    
    
    
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
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
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    buffer004.destroy()
    render_pass_encoder0000.setStencilReference(1);
    device50.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    texture102.destroy();
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_bundle_encoder100.popDebugGroup();
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.executeBundles([])
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer003.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.insertDebugMarker("marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    buffer103.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device10.destroy();
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group003);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout009,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("internal");
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.setPipeline(render_pipeline003);
    render_pass_encoder0000.setPipeline(render_pipeline003);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    render_pass_encoder0000.setStencilReference(1);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout009,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder0030.setPipeline(render_pipeline004);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.setVertexBuffer(0, buffer0012);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.draw(3);
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout006,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query000.destroy()
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group005);
    query700.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    const array6 = new Float32Array([-0.5, -1.0, 1.0, -1.0, -0.5, -0.75, 1.0, -0.75, -0.25, -0.5, -0.5, 0.5, -1.0, 0.0, -1.0, 0.25, -0.25, 0.0, -0.25, 0.5, 0.0, 0.25, -0.5, -0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.25, -0.25, -1.0, 0.5, 1.0, 0.0, -0.5, 0.75, 0.25, 0.25, -1.0, 0.75, 0.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 0.5, -0.25, 0.5, 0.75, 0.25, 0.25, 1.0, 0.0, -0.75, 0.0, -1.0, -0.5, -0.25, 0.25, 0.5, 1.0, 0.5, 1.0, 0.0, 1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 1.0, 0.75, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, -1.0, 0.5, 1.0, -1.0, ]);
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.end();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group007);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0040.setVertexBuffer(0, buffer0012);
    render_pass_encoder0040.draw(3);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group008);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.setVertexBuffer(0, buffer0012);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.end();
    command_encoder003.popDebugGroup()
    render_pass_encoder0000.draw(3);
    render_pass_encoder0040.end();
    const command_buffer003 = command_encoder003.finish();
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.end();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, ]);
}