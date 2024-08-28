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
    
    const array0 = new Float32Array([0.75, -0.5, -0.75, 0.0, 1.0, -1.0, -1.0, -0.75, -1.0, 0.25, 0.25, 1.0, -0.25, -1.0, -0.75, 0.5, 0.25, 0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, -1.0, -0.5, 0.75, 0.0, 0.5, 1.0, 0.5, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, 1.0, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, 0.5, -0.75, -0.5, -0.5, -0.75, -0.75, 0.25, 1.0, 1.0, 0.5, -0.5, 0.75, 0.25, -0.5, 0.5, -1.0, 0.0, -0.25, 1.0, 0.5, 0.25, -0.75, -0.5, -0.5, 0.5, 0.5, -0.75, 0.5, 1.0, -0.25, -0.5, 0.0, -0.75, 1.0, 0.75, 1.0, 0.25, 0.25, 0.75, -0.25, 1.0, 0.5, 0.25, -0.75, 0.25, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    device00.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    device10.destroy();
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.destroy();
    
    
    
    
    
    
    const array1 = new Float32Array([0.0, -0.75, 1.0, 0.0, -0.25, -0.75, 0.5, -0.5, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 1.0, -0.25, 1.0, 0.5, 0.5, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, -0.75, 0.0, -1.0, 1.0, 0.0, 0.5, 0.25, -1.0, 0.75, -0.5, -0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -0.5, -1.0, -0.5, 1.0, 0.0, -1.0, -0.25, 0.75, 0.0, 0.5, 1.0, -0.75, 0.0, 1.0, 0.0, 0.25, -0.75, 1.0, -0.5, 0.75, 0.5, -1.0, 1.0, -1.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 0.0, 0.75, -1.0, -0.75, 0.25, -1.0, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, 0.5, 0.0, 0.25, 0.0, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-1.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -1.0, -0.5, 0.0, 0.75, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, -1.0, 0.0, -0.75, -1.0, -0.25, -0.25, -1.0, 1.0, -0.75, -1.0, 0.0, 0.75, 0.75, 0.5, 0.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.5, -0.75, -0.5, -0.5, -0.75, -0.25, 0.0, -0.25, 1.0, 1.0, 1.0, -0.5, 0.75, 0.25, 0.25, -1.0, -0.75, 0.25, -0.25, -0.5, -1.0, -1.0, 1.0, 1.0, -0.25, 0.75, 1.0, 0.25, 1.0, -0.5, 0.0, -1.0, -0.5, 0.5, 0.25, -1.0, 0.25, 0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 1.0, 0.0, 0.5, -0.75, 0.5, 0.25, -0.5, -1.0, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    device30.destroy();
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array3 = new Float32Array([-0.25, -0.5, 0.5, 0.25, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.0, -0.25, 0.75, 1.0, 0.5, -0.5, 0.75, 0.0, 0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -1.0, 0.75, 0.5, 0.0, -1.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.75, -0.75, 0.0, 0.5, 1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -1.0, 0.5, -0.5, 0.0, 0.75, 0.5, 0.75, 0.25, 0.0, 0.0, -0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 0.75, -0.75, -0.75, -1.0, -1.0, -1.0, 1.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.25, 0.25, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const array4 = new Float32Array([-1.0, 0.0, 0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -0.5, -0.25, -0.25, -0.5, 0.5, 0.0, -0.75, 0.25, -0.5, -1.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.5, -0.25, -0.5, -1.0, -1.0, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, 0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.0, -0.25, 0.25, 0.5, 0.0, 0.25, 0.5, 0.5, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.0, 1.0, 0.75, 0.75, -1.0, -0.5, 1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 0.5, -0.25, -0.5, -1.0, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, -0.75, ]);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array5 = new Float32Array([-0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.25, 0.75, 0.0, 1.0, 0.0, 0.5, -1.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.75, 0.0, 0.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.75, 0.5, -0.5, -0.25, 1.0, -0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.25, 0.0, 0.5, 0.25, -0.25, 0.0, -0.75, 0.0, 0.5, -0.75, 0.25, 0.75, 0.75, 0.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.5, -1.0, 0.75, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, 0.5, 0.0, 0.25, 0.5, -1.0, 0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 1.0, 0.25, -0.25, -0.5, -1.0, -0.75, -1.0, 1.0, -0.75, -0.75, -0.5, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, 0.5, -1.0, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    device50.destroy();
    
    
    const array6 = new Float32Array([-0.5, -0.75, 1.0, -1.0, 0.25, 0.25, -1.0, 0.75, 1.0, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.25, 0.75, 1.0, -0.5, 0.0, -0.75, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 0.5, 0.25, 1.0, -0.25, 0.25, -0.25, 0.25, 0.5, -0.75, -0.5, 0.5, -0.25, 0.5, 0.0, -0.25, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 0.0, 0.5, 0.25, 0.75, -0.25, -0.75, 0.0, 0.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.75, 0.25, 0.0, 0.75, 1.0, -0.25, -0.5, -0.5, 0.25, ]);
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device60.pushErrorScope("out-of-memory");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    command_encoder600.insertDebugMarker("mymarker");
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
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
    
    
    command_encoder600.insertDebugMarker("mymarker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    
    query600.destroy()
    texture700.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16sint",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    compute_pass_encoder6000.insertDebugMarker("marker")
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
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    query600.destroy()
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.popDebugGroup()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder12000 = command_encoder1200.beginComputePass({ label: "compute_pass_encoder12000" });
    query600.destroy()
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    texture701.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device130.destroy();
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    render_bundle_encoder1000.insertDebugMarker("marker");
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const render_pass_encoder10010 = command_encoder1001.beginRenderPass({
        label: "render_pass_encoder10010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view10010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder10010.setScissorRect(0, 0, texture1001.width / 2, texture1001.height / 2);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device70.destroy();
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_pass_encoder10010.setViewport(0, 0, texture1001.width / 2, texture1001.height / 2, 0, 1);
    compute_pass_encoder12000.pushDebugGroup("group_marker")
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const command_encoder1201 = device120.createCommandEncoder({ label: "command_encoder1201" });
    
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    texture1000.destroy();
    render_pass_encoder10010.pushDebugGroup("group_marker");
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    command_encoder1201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer602.destroy()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    render_pass_encoder10010.setScissorRect(0, 0, texture1001.width / 2, texture1001.height / 2);
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device120.pushErrorScope("internal");
    query600.destroy()
    render_pass_encoder10010.executeBundles([])
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device100.pushErrorScope("internal");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    render_bundle_encoder1200.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    command_encoder601.clearBuffer(buffer600);
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    render_pass_encoder10010.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    
    render_bundle_encoder1000.setPipeline(render_pipeline1000);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1000 = device100.createBindGroup({
        label: "bind_group1000",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1001,
                },
            },
        ],
    });

    render_bundle_encoder1000.setBindGroup(0, bind_group1000);
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device110.pushErrorScope("validation");
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder601.clearBuffer(buffer600);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    buffer1001.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    buffer601.destroy()
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    render_pass_encoder10010.executeBundles([])
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder10000.setPipeline(compute_pipeline1000);
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_pass_encoder10010.executeBundles([])
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    query1000.destroy()
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const render_pipeline1001 = device100.createRenderPipeline({
        label: "render_pipeline1001",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    
    query1001.destroy()
    command_encoder1201.insertDebugMarker("mymarker");
    render_pass_encoder10010.insertDebugMarker("marker");
    const texture_view10021 = texture1002.createView({ label: "texture_view10021" });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    texture1001.destroy();
    device60.pushErrorScope("validation");
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    compute_pass_encoder10000.popDebugGroup()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    
    render_pass_encoder10010.setPipeline(render_pipeline1000);
    buffer1100.destroy()
    const texture_view10022 = texture1002.createView({ label: "texture_view10022" });
    buffer604.destroy()
    
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    device90.destroy();
    
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    render_bundle_encoder1001.setPipeline(render_pipeline1001);
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder800.clearBuffer(buffer800);
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer1200.destroy()
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    render_pass_encoder6010.executeBundles([])
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6010.pushDebugGroup("group_marker");
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder10010.setStencilReference(1);
    
    query1003.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline602);
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    
    command_encoder800.insertDebugMarker("mymarker");
    compute_pass_encoder12000.popDebugGroup()
    compute_pass_encoder10000.insertDebugMarker("marker")
    command_encoder1201.popDebugGroup()
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    query1200.destroy()
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder10000.insertDebugMarker("marker")
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1001 = device100.createBindGroup({
        label: "bind_group1001",
        layout: compute_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1004,
                },
            },
        ],
    });

    compute_pass_encoder10000.setBindGroup(0, bind_group1001);
    render_bundle_encoder1200.insertDebugMarker("marker");
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    buffer600.destroy()
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    device120.pushErrorScope("out-of-memory");
    
    
    
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    render_bundle_encoder1000.popDebugGroup();
    
    render_bundle_encoder1200.popDebugGroup();
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    command_encoder602.insertDebugMarker("mymarker");
    device80.pushErrorScope("validation");
    
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    texture1002.destroy();
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query601
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6010.setPipeline(render_pipeline600);
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1201.popDebugGroup();
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    render_pass_encoder6020.beginOcclusionQuery(0)
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout607,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device100.pushErrorScope("internal");
    query1000.destroy()
    
    device100.queue.writeBuffer(buffer1002, 0, array0, 0, array0.length);
    render_pass_encoder10010.setStencilReference(1);
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder10000.dispatchWorkgroups(100);
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    buffer1000.destroy()
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout600,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const command_encoder1202 = device120.createCommandEncoder({ label: "command_encoder1202" });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    render_bundle_encoder1201.pushDebugGroup("group_marker");
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer800.destroy()
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group600);
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1002, 0, array0, 0, array0.length);
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const buffer1005 = device100.createBuffer({
        label: "buffer1005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1006 = device100.createBuffer({
        label: "buffer1006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1002 = device100.createBindGroup({
        label: "bind_group1002",
        layout: render_pipeline1001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1006,
                },
            },
        ],
    });

    render_bundle_encoder1001.setBindGroup(0, bind_group1002);
    
    
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout601]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout607,
        compute: {
            module: shader_module604,
            entryPoint: "main"
        }
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6020.endOcclusionQuery()
    compute_pass_encoder10000.popDebugGroup()
    compute_pass_encoder8010.popDebugGroup()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6020.setPipeline(render_pipeline600);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6010.setVertexBuffer(0, buffer603);
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    render_pass_encoder6020.setBindGroup(0, bind_group601);
    render_pass_encoder6010.popDebugGroup();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6010.setIndexBuffer(buffer602, "uint16");
    compute_pass_encoder10000.end();
    const command_buffer1202 = command_encoder1202.finish();
    const command_buffer1201 = command_encoder1201.finish();
    render_pass_encoder6010.setIndexBuffer(buffer602, "uint16");
    const buffer1007 = device100.createBuffer({
        label: "buffer1007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1008 = device100.createBuffer({
        label: "buffer1008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1003 = device100.createBindGroup({
        label: "bind_group1003",
        layout: render_pipeline1000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1008,
                },
            },
        ],
    });

    render_pass_encoder10010.setBindGroup(0, bind_group1003);
    render_pass_encoder6010.drawIndexed(3);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    const command_buffer802 = command_encoder802.finish();
    const command_buffer1000 = command_encoder1000.finish();
    render_pass_encoder6010.end();
    const command_buffer601 = command_encoder601.finish();
    command_encoder800.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder10010.popDebugGroup();
    device120.queue.submit([command_buffer1201, ]);
    compute_pass_encoder6000.end();
    render_pass_encoder6020.setVertexBuffer(0, buffer603);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder6020.drawIndirect(buffer604, 0);
    device120.queue.submit([command_buffer1202, ]);
    command_encoder600.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    render_pass_encoder6020.end();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device80.queue.submit([command_buffer800, ]);
    device60.queue.submit([command_buffer602, ]);
    device100.queue.submit([command_buffer1000, ]);
}