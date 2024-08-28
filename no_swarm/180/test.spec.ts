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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array0 = new Float32Array([0.5, -0.5, 1.0, 0.25, 0.0, -0.5, 0.75, 0.5, 1.0, 1.0, -1.0, -1.0, -0.25, 0.75, 0.25, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, 1.0, -0.5, -1.0, 1.0, 1.0, 0.5, -0.75, -1.0, -0.5, 0.0, 0.75, -1.0, 0.5, -0.25, 0.0, 0.75, -0.75, 0.75, -0.75, -1.0, -0.75, 0.5, 0.25, -0.75, 0.5, -0.5, 0.5, -0.5, 0.75, 0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, 0.25, -0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.25, -0.75, 0.75, 1.0, 0.25, -0.25, -0.5, 0.75, 0.5, -0.5, 0.25, 0.25, 0.5, -0.5, 0.25, -0.75, 0.25, 0.0, -0.25, 0.5, -0.75, 1.0, 0.75, -0.25, 0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const array1 = new Float32Array([1.0, 1.0, -0.75, 1.0, 0.5, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, 0.0, 0.25, -0.5, 0.5, -1.0, -0.25, 1.0, -0.75, -0.75, -1.0, -0.75, 1.0, -0.75, -0.5, -0.5, 0.5, 0.5, 1.0, -0.75, 0.5, 1.0, 0.5, 0.5, 0.75, 0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.25, 0.5, 0.75, -0.25, -0.75, 0.0, -0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, 1.0, -0.5, 0.75, 0.5, 0.0, 0.75, 0.25, 0.0, -0.75, -0.75, -0.5, -0.75, 0.75, -0.25, 0.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, 0.25, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, -0.75, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array2 = new Float32Array([0.25, -0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -0.5, 0.25, -0.75, 0.25, 0.0, -0.5, 1.0, -0.75, 0.75, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, -0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 0.75, -1.0, -0.75, 0.0, 0.75, 0.25, 0.25, -0.5, -0.25, 0.5, -0.75, -0.75, -1.0, 0.0, 1.0, 0.5, 0.0, 1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, 0.25, -0.25, -1.0, -0.75, 0.75, 0.0, 0.25, -0.5, 1.0, 0.0, -0.75, -0.25, -0.75, -1.0, 0.25, -0.25, 0.5, 0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.0, -1.0, 0.75, 0.0, -1.0, -0.25, -1.0, -0.25, -0.75, -0.25, 0.0, -0.5, 0.0, 1.0, 0.0, 0.25, -0.75, ]);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
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
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.destroy();
    
    
    
    
    
    
    const array3 = new Float32Array([0.0, -0.75, 0.25, 1.0, -1.0, -0.75, 0.0, 1.0, 0.0, -1.0, 0.25, 0.5, 1.0, 0.5, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 0.75, -0.75, -0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 0.25, 1.0, 0.5, -0.5, -0.25, -0.75, 1.0, -0.75, 1.0, 0.0, -0.75, 1.0, 0.25, -0.25, -0.75, 0.5, -0.25, -0.5, -0.5, 0.0, 0.25, 0.5, -1.0, -0.75, 0.25, -1.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.0, 1.0, 0.25, 1.0, 0.0, -0.75, 0.5, -0.25, -0.5, -0.25, 0.25, -0.25, 1.0, 0.25, 1.0, 0.75, -0.75, -1.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, -0.75, -1.0, -0.75, 1.0, 0.0, 0.75, ]);
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    command_encoder200.insertDebugMarker("mymarker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder200.popDebugGroup()
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    texture202.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    texture203.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const array4 = new Float32Array([0.5, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.0, 1.0, -0.75, 0.25, 0.25, 0.0, -1.0, 0.75, 1.0, 0.0, 0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 0.75, 0.5, -1.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.75, -0.5, 0.5, -0.25, -0.25, -0.25, -1.0, -0.75, -1.0, 0.0, -0.75, 0.5, -0.75, -0.75, -0.5, 0.25, -1.0, -0.5, 0.75, -0.5, -0.25, -0.25, 0.75, 0.25, 0.25, -1.0, 0.25, 0.25, -0.25, 0.75, -0.5, 0.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 0.75, 1.0, -0.75, 0.75, 0.75, -0.5, -0.75, 0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, -1.0, 1.0, -1.0, -0.75, 0.75, -0.5, 0.0, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer203.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder201.popDebugGroup();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture201.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    texture101.destroy();
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query200.destroy()
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
    command_encoder101.popDebugGroup()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder201.popDebugGroup();
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
    texture102.destroy();
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
    
    query100.destroy()
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    
    
    texture103.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    texture200.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder201.popDebugGroup();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.executeBundles([])
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query200.destroy()
    query100.destroy()
    
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    render_pass_encoder1000.insertDebugMarker("marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
    
    query201.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    buffer204.destroy()
    device20.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer202.destroy()
    render_bundle_encoder202.popDebugGroup();
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
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
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
    render_bundle_encoder100.popDebugGroup();
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    device10.pushErrorScope("internal");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    buffer205.destroy()
    
    query101.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1000.executeBundles([])
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device20.pushErrorScope("internal");
    render_bundle_encoder102.setPipeline(render_pipeline101);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    query200.destroy()
    texture205.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array5 = new Float32Array([1.0, -0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 0.25, -0.75, 0.25, -0.75, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, 1.0, -0.75, -1.0, -0.5, 0.5, 0.75, 0.0, 0.5, -0.5, -0.25, 0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.5, -1.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.25, -0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 0.75, -0.75, 0.75, 0.25, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 1.0, -0.25, 0.5, 1.0, 1.0, 0.5, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, 0.0, 0.0, -1.0, -0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.25, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, -0.25, -0.75, -1.0, 0.25, -0.75, 0.25, -1.0, 1.0, 0.75, 1.0, ]);
    render_pass_encoder1000.setPipeline(render_pipeline101);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer102.destroy()
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    buffer100.destroy()
    
    query200.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    texture100.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    buffer209.destroy()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline205);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    texture206.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query200.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    buffer300.destroy()
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2020.setPipeline(render_pipeline202);
    compute_pass_encoder2010.popDebugGroup()
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    buffer104.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture204.destroy();
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    render_pass_encoder1030.setPipeline(render_pipeline103);
    render_bundle_encoder202.insertDebugMarker("marker");
    texture207.destroy();
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    render_bundle_encoder202.setVertexBuffer(0, buffer202);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    device30.pushErrorScope("validation");
    buffer2010.destroy()
    buffer207.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const array6 = new Float32Array([0.75, -0.5, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, 1.0, -0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 0.0, 0.5, 0.75, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, 0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.25, -0.25, -1.0, -0.5, 0.0, -0.5, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, -0.25, 0.25, -0.5, 1.0, -1.0, -1.0, 0.5, -0.75, -0.75, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.5, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, -0.5, -0.75, -0.25, 1.0, 0.75, -0.75, 0.5, 1.0, -0.75, 0.25, 0.5, 0.75, -0.75, -0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, ]);
    device20.pushErrorScope("internal");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder1000.popDebugGroup();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    const command_buffer401 = command_encoder401.finish();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
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

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    render_bundle_encoder202.popDebugGroup();
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer2012.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.pushErrorScope("out-of-memory");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder400.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setStencilReference(1);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    render_pass_encoder1000.setStencilReference(1);
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.25, -0.5, 0.5, -0.25, 0.0, 0.75, -0.75, 1.0, 1.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.0, -0.75, 0.5, -0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.25, -0.25, 1.0, -0.5, 0.75, 1.0, -1.0, 0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 1.0, -1.0, 0.75, 0.25, -0.5, 0.75, -0.5, -0.75, -0.5, -1.0, 0.75, 0.75, -1.0, -0.75, -1.0, 0.5, -0.75, -0.5, 0.75, -0.5, -1.0, 0.5, -0.25, -0.25, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, 0.5, -0.25, 0.5, -0.25, 0.75, -0.75, -0.75, -0.25, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -1.0, 0.0, -0.75, ]);
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group102);
    compute_pass_encoder2000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
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
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
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
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.end();
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2010.end();
    const command_buffer200 = command_encoder200.finish();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    device20.queue.submit([command_buffer201, ]);
}