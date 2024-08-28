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
    const array0 = new Float32Array([-1.0, 0.25, -0.25, -1.0, 1.0, -0.5, -1.0, 0.25, 0.0, 0.0, -0.25, 0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 0.5, -0.5, 0.5, 0.75, 1.0, -0.75, 0.75, 0.25, 0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.25, 0.0, 0.75, 0.25, 0.0, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.25, 0.0, -1.0, 1.0, 0.0, 1.0, 0.5, 1.0, 0.25, -0.25, -0.5, 0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, -0.5, 0.75, 0.0, 1.0, 0.75, -0.75, -0.75, 0.5, 0.0, -0.75, 0.5, 1.0, 0.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 1.0, 1.0, 0.5, -0.25, -0.5, -0.25, -0.5, -0.75, -0.5, 0.5, -1.0, -1.0, -0.5, ]);
    
    const array1 = new Float32Array([-0.5, 0.0, -0.5, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, -0.75, -0.25, 0.5, -0.5, -1.0, 0.25, -0.75, 0.5, 0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, -1.0, 0.75, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 0.0, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, 0.25, -0.25, 0.5, -0.5, 0.25, 1.0, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 1.0, 0.75, 0.5, 0.25, 0.5, -0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.0, -0.75, 0.0, -1.0, 0.0, 0.0, 1.0, 0.5, 0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.5, -0.75, -0.75, 1.0, -0.75, 1.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([1.0, -0.75, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.75, 0.25, -0.5, -0.5, -1.0, 0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, 1.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 0.5, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, 0.0, -0.25, -0.75, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -0.5, -0.5, 0.5, -1.0, -0.75, 0.75, -1.0, 0.25, 0.75, -0.5, 0.25, -1.0, 0.75, 0.5, -1.0, 0.75, -0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 0.75, 0.75, ]);
    const array3 = new Float32Array([0.0, 0.0, 0.5, 0.5, 0.75, -0.5, -0.25, -1.0, -0.25, 0.5, -0.5, 0.0, 0.5, 0.5, -0.25, 0.75, -1.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, -0.5, 0.25, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, -0.25, 0.5, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, -0.5, 1.0, 0.0, 0.5, 0.5, -1.0, -0.5, 1.0, 1.0, 0.0, 0.75, 0.0, -0.25, -1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 1.0, -0.75, -1.0, 1.0, 0.5, 0.5, -0.5, 0.5, -1.0, 0.0, 1.0, 0.25, 0.25, -0.75, -1.0, -0.75, 0.75, -0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.75, -0.5, 0.25, 0.25, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array4 = new Float32Array([0.75, 0.0, 0.25, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, 0.25, -0.25, 0.0, -1.0, 1.0, 0.25, 0.5, -0.75, -0.25, -0.75, 0.5, -0.75, -0.75, 0.5, -0.75, -0.25, -0.25, -0.25, -1.0, -0.5, 0.0, 0.5, 0.0, -0.5, 1.0, -0.5, 0.25, -1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, 0.25, -0.25, -0.75, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, -0.25, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, -0.25, 0.25, -0.25, 0.75, 1.0, 0.5, 1.0, 0.25, -1.0, 1.0, 0.25, 0.5, 0.0, -1.0, -0.25, -0.5, 0.25, -0.5, -0.5, 0.0, 0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -1.0, -1.0, -0.75, 0.25, ]);
    
    
    const array5 = new Float32Array([1.0, -0.5, 0.0, -0.5, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, -0.5, -0.25, 0.25, -1.0, 1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 1.0, -1.0, 0.5, -1.0, 0.75, 0.0, -1.0, -0.5, 0.75, 0.75, -0.25, 0.0, 0.75, 0.75, 0.25, 0.25, 0.75, -1.0, 0.5, -0.75, -1.0, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, 0.25, 0.75, 0.5, 0.5, 0.25, 0.25, -0.75, 1.0, 0.5, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 1.0, -0.5, 0.25, 0.25, 0.25, 1.0, 0.25, -0.5, 0.5, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 0.25, -0.5, -0.5, -1.0, -0.5, 0.5, -0.5, -1.0, 1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8snorm",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.0, -0.25, -0.25, 0.5, -1.0, 0.25, -0.5, -1.0, 1.0, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.75, 0.5, -0.75, -1.0, 0.75, 0.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, 0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 0.75, -0.5, 0.25, -0.5, 0.0, -0.75, 1.0, 0.75, -0.75, -0.75, -0.25, -0.75, 0.5, -0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -1.0, -0.25, -0.75, 0.5, -1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -0.5, 1.0, -1.0, 0.75, 0.5, 0.0, -0.75, 0.75, 1.0, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, -0.25, 0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    texture000.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array7 = new Float32Array([-0.25, 0.0, 0.25, 1.0, 0.25, 1.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 0.25, 0.0, -0.75, 1.0, -0.25, -1.0, 0.5, -1.0, -0.25, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 0.5, -0.25, -0.5, 0.0, -0.75, 0.5, 0.25, 1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.5, -1.0, 0.75, 1.0, -0.25, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, -0.5, -0.5, 0.5, -1.0, 1.0, 0.75, -0.75, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, 1.0, 0.5, 0.25, -0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -0.5, -0.5, ]);
    
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    command_encoder200.insertDebugMarker("mymarker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    buffer200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer000.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder2010.popDebugGroup()
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder000.popDebugGroup()
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
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
    buffer202.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    device10.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer000 = command_encoder000.finish();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder204.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
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
    buffer203.destroy()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query000.destroy()
    
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer001.destroy()
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout204]
    });
    device30.destroy();
    texture001.destroy();
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    
    
    
    
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    texture201.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_bundle_encoder000.setPipeline(render_pipeline001);
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
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline202);
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer205 = command_encoder205.finish();
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
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
    
    
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array8 = new Float32Array([1.0, -0.75, 0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, 1.0, -0.75, 0.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.5, -0.75, -1.0, -1.0, 0.25, 0.5, 0.0, -1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 1.0, -0.75, 1.0, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 0.75, 1.0, -0.5, -1.0, 0.5, 0.0, -1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.25, -0.25, 0.25, -0.5, 0.75, -0.5, 0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.75, 1.0, 1.0, 0.5, -0.75, 0.0, -0.5, -0.5, 0.25, 0.75, -0.75, -1.0, -1.0, 0.0, 0.75, -1.0, ]);
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device20.pushErrorScope("internal");
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder2040.setPipeline(compute_pipeline201);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    
    compute_pass_encoder2030.popDebugGroup()
    
    texture002.destroy();
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
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
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
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

    compute_pass_encoder2040.setBindGroup(0, bind_group202);
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group203);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    buffer207.destroy()
    device50.pushErrorScope("validation");
    
    
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2013, 0);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    buffer2012.destroy()
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2030.popDebugGroup()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
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
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group204);
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2016, 0);
    device00.queue.submit([command_buffer000, ]);
    
    device20.queue.writeBuffer(buffer2016, 0, array4, 0, array4.length);
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2016, 0, array8, 0, array8.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.25, 0.25, -0.75, -1.0, -0.75, 1.0, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 0.75, -0.75, -0.75, 1.0, 0.5, -1.0, -1.0, 0.75, -0.25, 0.0, 1.0, -0.75, 0.5, 0.25, 0.5, 0.75, 0.75, -0.5, -0.75, 0.25, 0.5, 0.0, 0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 1.0, 0.25, 0.0, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 0.25, -0.25, 0.0, -0.25, 0.25, -0.5, -1.0, -1.0, -0.25, 0.0, -0.75, 1.0, -0.5, -0.75, -0.5, -0.5, -1.0, 0.75, 0.5, -1.0, -1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.0, 0.75, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.5, -0.25, -0.75, 1.0, 1.0, ]);
    buffer2014.destroy()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    texture203.destroy();
    
    device50.destroy();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group205);
    device20.queue.writeBuffer(buffer2016, 0, array0, 0, array0.length);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout203]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer2016, 0, array8, 0, array8.length);
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
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.end();
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device00.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer208.destroy()
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer2013, 0, array0, 0, array0.length);
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer2016.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer2010.destroy()
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout208,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2020, 0);
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer2018.destroy()
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2022, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2022, 0);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout204]
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
    device20.queue.writeBuffer(buffer2020, 0, array4, 0, array4.length);
    
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2022, 0, array6, 0, array6.length);
    texture202.destroy();
    device20.queue.writeBuffer(buffer2022, 0, array1, 0, array1.length);
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
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2022, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer2020, 0, array4, 0, array4.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2023, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2023, 0);
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer2023, 0, array4, 0, array4.length);
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout206]
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2040.setPipeline(render_pipeline201);
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group206);
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
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2023, 0, array1, 0, array1.length);
    
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    
    buffer2015.destroy()
    const array10 = new Float32Array([-0.5, 0.75, 0.0, 0.0, 0.75, 0.0, 0.75, 0.25, 1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, -0.25, -0.75, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, 0.25, 0.5, -1.0, -0.5, 0.75, -0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.75, 0.5, 0.75, -1.0, 0.0, 0.5, 0.25, 0.0, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, -0.75, 0.25, -0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 0.75, -0.25, -0.75, -0.75, -0.25, -0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.0, -0.5, 0.75, 0.25, -0.25, 0.0, 0.5, -0.25, -0.25, 0.0, -0.25, -1.0, -1.0, 0.0, -0.5, 0.75, 0.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, -0.25, -0.25, 1.0, -0.75, -0.75, ]);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer2022, 0, array9, 0, array9.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    compute_pass_encoder2020.popDebugGroup()
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer2013, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer2022, 0, array2, 0, array2.length);
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeBuffer(buffer2023, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer2013, 0, array7, 0, array7.length);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    buffer209.destroy()
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout209,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2020, 0, array3, 0, array3.length);
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout208,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.setVertexBuffer(0, buffer203);
    
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2022, 0, array2, 0, array2.length);
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2023, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer2023, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer2022, 0, array4, 0, array4.length);
    render_bundle_encoder200.drawIndirect(buffer2016, 0);
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout205,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout205,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2010.end();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture204 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer2020, 0, array4, 0, array4.length);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer2022, 0, array4, 0, array4.length);
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2022, 0, array4, 0, array4.length);
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout204,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const array11 = new Float32Array([0.75, -0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.25, 0.25, 0.0, 1.0, -0.75, -0.75, -0.75, -0.25, 0.0, 0.25, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, -0.75, 0.5, 1.0, -0.75, 0.75, -0.75, 0.5, -0.25, 0.75, -0.75, 0.25, 0.75, -0.5, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.5, 0.0, 0.25, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, -0.75, -0.5, 0.0, -0.75, 0.0, -0.25, -0.75, 1.0, 1.0, 0.0, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 0.75, 0.5, 0.75, -0.25, 0.25, -0.25, 0.0, -0.25, 1.0, -0.75, 0.0, 0.0, -0.75, -0.75, -0.5, ]);
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout206]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    render_pass_encoder2010.executeBundles([])
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout207,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    device20.queue.submit([command_buffer205, ]);
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder2030.end();
    render_pass_encoder2010.setPipeline(render_pipeline203);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2000.end();
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    compute_pass_encoder2020.popDebugGroup()
    command_encoder200.popDebugGroup()
    render_pass_encoder2010.end();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder2020.end();
    render_pass_encoder2040.setVertexBuffer(0, buffer203);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
    render_pass_encoder2040.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, ]);
    command_encoder204.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer203, ]);
}