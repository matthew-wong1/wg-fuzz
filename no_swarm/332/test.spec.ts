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
    const array0 = new Float32Array([-0.25, 0.5, 1.0, 0.0, -1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -0.5, 0.5, 0.25, 0.75, 0.75, 0.5, -0.25, -1.0, -0.75, -0.5, -0.5, 0.5, 0.75, 0.5, 0.75, 0.5, 0.0, -1.0, 0.5, 0.25, -1.0, -1.0, 0.25, 1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, -0.75, -0.25, 1.0, -0.75, 1.0, 0.75, -0.5, -1.0, 0.25, 1.0, 0.75, -0.25, 0.0, -0.5, -0.25, -0.5, 1.0, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, -0.75, -0.25, 0.5, -0.75, 0.0, 0.0, 1.0, 0.5, -1.0, 0.75, -0.5, 0.0, -0.25, -1.0, -0.75, -0.25, 0.75, 1.0, 0.25, 0.5, -1.0, 0.5, 0.0, -1.0, -0.5, 0.0, -0.5, 0.25, 0.25, 0.0, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([1.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.75, 0.0, 0.5, 0.75, 0.5, 0.75, 0.5, -0.25, 0.5, -0.75, 0.0, 0.25, 0.25, 1.0, -0.25, 0.75, 0.25, 0.0, -1.0, -1.0, -0.5, 1.0, -0.5, -0.5, -0.75, -0.5, 0.25, 0.25, 0.75, 0.5, 1.0, 0.25, 0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 1.0, -0.75, -0.75, 0.75, -0.5, 0.75, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, 0.75, 0.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.5, 0.5, 0.5, 0.25, -0.75, -0.25, -0.5, 0.0, -0.5, -1.0, -0.5, 0.0, 0.75, -0.5, 1.0, 1.0, -1.0, -0.75, -1.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array2 = new Float32Array([0.75, 0.0, 0.25, 0.0, 0.5, -0.25, -0.5, -0.25, 0.0, 0.0, 0.5, 0.25, 0.75, -1.0, -1.0, -0.75, -0.5, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -0.25, 0.25, 0.75, 0.25, 1.0, -1.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.5, -0.25, 1.0, 0.5, -0.25, 1.0, 0.75, 1.0, 1.0, 0.0, 0.75, 1.0, -0.5, -1.0, -1.0, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 0.75, 0.0, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.5, 1.0, 0.5, 1.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.5, 0.75, -0.75, 1.0, 0.5, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, 0.5, -0.75, 0.0, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const command_buffer100 = command_encoder100.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    
    const array3 = new Float32Array([1.0, 0.5, 0.5, -1.0, 0.25, 0.5, 0.0, -1.0, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, -0.25, 0.5, -0.75, -1.0, -0.75, -0.5, 0.75, -0.25, -0.75, -0.75, -0.5, -1.0, 0.25, 0.25, 0.25, -0.25, -0.5, -0.25, 0.5, -0.5, -0.75, 0.25, 0.25, -0.75, 0.75, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.25, -1.0, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, -1.0, 0.25, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.25, -0.25, -0.75, 0.5, 0.5, -1.0, -0.25, -0.25, -1.0, -0.25, -0.25, 0.25, -1.0, 0.25, -0.5, 0.75, 0.0, 1.0, 1.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, -0.25, 1.0, -0.5, -1.0, -1.0, 0.5, 0.75, 0.0, 0.25, -0.75, ]);
    
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    device10.queue.submit([command_buffer100, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder300.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder300.insertDebugMarker("mymarker");
    
    const command_buffer301 = command_encoder301.finish();
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array4 = new Float32Array([-0.75, 1.0, 0.0, -0.75, 1.0, 0.75, 0.5, 0.25, 0.0, 0.5, -0.5, -1.0, -0.25, 1.0, -1.0, 0.0, -0.5, 1.0, 1.0, 0.5, -0.75, 0.0, -0.5, 0.5, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, 1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 1.0, -0.25, -1.0, 0.75, -0.5, -0.25, -0.25, -0.5, -0.5, -0.25, 0.25, -1.0, -0.5, 0.75, -0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 1.0, -0.5, -0.75, 0.5, 0.5, -0.25, -0.5, -0.75, -0.75, 0.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.75, 0.0, 0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.5, 0.25, ]);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder300.popDebugGroup()
    texture301.destroy();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_buffer300 = command_encoder300.finish();
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    buffer300.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device30.queue.submit([command_buffer301, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array5 = new Float32Array([-1.0, -1.0, -0.75, 0.5, 1.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.5, 0.25, -0.5, 0.5, -0.5, 0.25, 0.5, 0.5, -0.75, -1.0, 0.0, -0.75, 1.0, 0.25, -1.0, -0.5, -0.75, 0.0, -0.75, 0.25, 0.0, 0.0, -0.25, 1.0, 0.0, -0.5, -0.75, 0.75, 0.0, 0.0, -0.75, -0.75, 0.0, 0.75, 0.25, 0.5, -0.25, 0.25, -0.75, 0.0, 0.75, 0.5, -0.25, -0.5, 0.75, 0.75, -1.0, -0.25, 0.75, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, 0.75, 0.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.25, 0.75, 0.0, 0.5, 0.5, 1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.5, -0.75, -1.0, -1.0, -0.75, -0.5, 0.5, -0.5, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.75, -0.5, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.submit([command_buffer300, ]);
    
    const array6 = new Float32Array([-0.25, 0.75, 0.0, -0.25, 0.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.25, -0.75, -0.75, -0.25, 1.0, -0.25, 0.75, -1.0, -0.5, -0.75, -0.5, -1.0, 0.75, 1.0, -0.5, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.25, 0.75, -1.0, 0.5, -1.0, 1.0, -0.25, -0.25, 0.75, 0.0, -0.25, -1.0, 0.5, -1.0, 1.0, -0.75, 0.25, -0.25, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 1.0, 0.75, -0.5, 0.0, -0.75, 0.0, -0.5, 0.5, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -0.25, -1.0, 0.0, -0.75, 1.0, -0.25, 0.25, 1.0, -0.5, -0.5, -0.5, -0.75, -1.0, 0.5, 0.25, 0.0, -0.25, 0.25, -1.0, 0.5, 0.5, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, -0.5, ]);
    device30.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
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
    const command_buffer400 = command_encoder400.finish();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device40.queue.submit([command_buffer400, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    device40.pushErrorScope("out-of-memory");
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const array7 = new Float32Array([-1.0, 0.0, 0.25, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, -0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.5, 0.5, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, 0.0, 0.5, -0.75, 0.75, 0.75, 1.0, -0.25, 1.0, 0.25, 0.0, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, 0.25, -1.0, -1.0, -1.0, 0.5, -0.5, 0.0, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, -1.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, 0.5, 0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, 1.0, -0.75, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 0.0, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.75, ]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.destroy();
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.setPipeline(render_pipeline403);
    render_bundle_encoder402.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    buffer403.destroy()
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer404.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query401.destroy()
    
    const command_buffer402 = command_encoder402.finish();
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    device40.queue.writeTexture({ texture: texture401 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder401.setPipeline(render_pipeline401);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture401.destroy();
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    query403.destroy()
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query400.destroy()
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_bundle_encoder402.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    texture402.destroy();
    
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    query404.destroy()
    command_encoder601.insertDebugMarker("mymarker");
    const array8 = new Float32Array([-0.75, 0.5, -0.5, 0.0, 0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 1.0, 0.0, 0.75, 0.5, 0.25, -0.5, -0.5, 0.75, -0.25, -1.0, -0.5, -1.0, 0.5, 0.25, 1.0, 0.5, -0.25, 0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 1.0, 0.5, 1.0, 1.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.5, -0.5, 0.5, 0.0, -0.25, 0.75, 0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 0.5, -0.25, 0.0, -0.25, 0.5, -0.5, -0.5, -0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.25, 0.75, -0.75, -0.75, 0.5, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 0.5, -0.5, ]);
    render_bundle_encoder401.popDebugGroup();
    
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    compute_pass_encoder4010.setPipeline(compute_pipeline406);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query403.destroy()
    
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout404,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline406.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group402);
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout404,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    query403.destroy()
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder4010.insertDebugMarker("marker")
    device40.queue.submit([command_buffer402, ]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder403.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer408.destroy()
    query400.destroy()
    
    device70.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    
    query404.destroy()
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout403,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    compute_pass_encoder4010.dispatchWorkgroups(100);
    
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer409,
        0
    )
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    
    
    
    const render_pipeline4013 = device40.createRenderPipeline({
        label: "render_pipeline4013",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query600.destroy()
    device90.pushErrorScope("out-of-memory");
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout403,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const render_pipeline4014 = device40.createRenderPipeline({
        label: "render_pipeline4014",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    command_encoder403.insertDebugMarker("mymarker");
    
    const render_pipeline4015 = device40.createRenderPipeline({
        label: "render_pipeline4015",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    texture403.destroy();
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    
    
    
    buffer409.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout404,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    query403.destroy()
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const array9 = new Float32Array([0.75, 1.0, -0.25, 0.0, -0.5, 0.25, 1.0, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, 0.75, 1.0, 0.0, -1.0, 0.75, 0.5, -0.25, 0.0, -0.75, 1.0, -1.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.75, 0.0, 1.0, 1.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, 0.25, 0.75, -0.25, -0.5, -0.75, -0.75, -0.5, 1.0, 0.75, 1.0, -1.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -0.25, -0.25, -1.0, -1.0, -1.0, 0.75, 0.75, -0.5, 0.5, -1.0, 0.25, -0.25, 0.25, 0.5, -0.5, 0.25, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, 0.0, -0.75, -0.5, -1.0, 0.5, 0.25, -1.0, 0.5, -0.25, -0.5, 0.75, 0.0, -0.5, -1.0, 0.25, 0.75, -0.25, ]);
    const array10 = new Float32Array([0.75, -0.25, 0.5, -0.25, -0.5, 1.0, 0.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.5, -0.25, -0.75, -1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.75, 0.25, 0.75, 0.75, 0.5, -0.75, 0.75, 0.5, 1.0, 0.75, -0.5, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, 0.0, 1.0, -0.5, 0.5, -1.0, -0.5, -1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, -0.25, 0.5, 0.25, -0.5, 0.75, 1.0, 0.0, 0.75, 0.5, -0.25, -0.5, -0.75, 0.75, 1.0, 0.0, -1.0, -0.25, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, 0.75, -0.75, -0.75, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, -0.25, ]);
    
    
    
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout404,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    query403.destroy()
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout402,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout401,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline4016 = device40.createRenderPipeline({
        label: "render_pipeline4016",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout402,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    texture404.destroy();
    
    query400.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4010.popDebugGroup()
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout403,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    query403.destroy()
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
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout402,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout402,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout404,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout401,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    buffer407.destroy()
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    
    const command_buffer403 = command_encoder403.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device100.pushErrorScope("validation");
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout404,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    query600.destroy()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.pushErrorScope("internal");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
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
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout404,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const command_buffer900 = command_encoder900.finish();
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer406.destroy()
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout402,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("out-of-memory");
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout405,
        compute: {
            module: shader_module4010,
            entryPoint: "main"
        }
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout402,
        compute: {
            module: shader_module408,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6020.popDebugGroup()
    
    compute_pass_encoder6000.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.setPipeline(compute_pipeline601);
    device90.queue.submit([command_buffer900, ]);
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer602,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    compute_pass_encoder6010.popDebugGroup()
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer603, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer603, 0);
    compute_pass_encoder4010.popDebugGroup()
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer606, 0);
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
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
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

    compute_pass_encoder6020.setBindGroup(0, bind_group602);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder6010.end();
    compute_pass_encoder6000.end();
    compute_pass_encoder6020.end();
    const command_buffer601 = command_encoder601.finish();
    const command_buffer602 = command_encoder602.finish();
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer601, ]);
}