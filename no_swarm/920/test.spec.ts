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
    
    const array0 = new Float32Array([-0.25, -0.75, 0.75, 0.25, 0.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.75, -1.0, 0.0, 0.25, 0.25, 0.0, 0.25, 0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 0.75, -0.25, 0.25, 0.75, 0.0, 0.0, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, 1.0, -0.75, 0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, -1.0, 1.0, 0.5, -0.75, 0.25, 0.5, -1.0, 0.5, -1.0, -0.25, 0.0, -0.5, -0.25, 0.0, 0.5, 0.75, -0.75, -1.0, -0.25, -0.25, 0.5, 0.75, 0.0, -0.25, 0.25, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, 0.75, 1.0, -0.25, 0.25, -1.0, -0.25, 0.75, -1.0, 0.0, 0.25, -0.25, -1.0, 0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 0.5, 1.0, ]);
    const array1 = new Float32Array([0.0, -0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 1.0, -0.5, 0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 0.5, 1.0, -0.75, -1.0, -0.75, 0.25, -1.0, 1.0, 0.0, 0.5, -0.75, 1.0, -0.25, 0.5, 1.0, 1.0, -0.5, -0.5, 0.0, -0.25, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 0.0, 0.25, -0.5, -0.25, -0.75, -0.75, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -0.5, -1.0, -0.75, 0.5, 1.0, 0.5, -1.0, -1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -1.0, 0.75, -0.75, 1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.75, 1.0, 0.5, -0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 0.75, 0.75, 0.5, -0.5, 0.75, ]);
    
    
    
    const array2 = new Float32Array([-1.0, 1.0, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, -0.5, 0.25, 0.5, 0.25, -0.5, -1.0, 0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -1.0, 0.0, 1.0, 0.5, 0.75, 1.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.75, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, 0.5, -0.25, 0.0, 1.0, -0.5, -0.5, -0.75, 0.25, -1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 1.0, 1.0, -0.5, -0.25, 0.5, 0.75, 0.25, -1.0, 0.25, 0.5, -0.5, 0.0, 0.75, 1.0, -1.0, 1.0, -0.25, 1.0, 0.0, ]);
    const array3 = new Float32Array([0.75, 0.5, 1.0, -1.0, 0.5, 0.0, 0.25, 0.25, -1.0, 0.75, -1.0, 1.0, -1.0, -1.0, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, 0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 0.5, 0.25, -0.75, 1.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.75, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 0.5, -0.5, 0.25, -0.75, -0.25, -1.0, -0.75, 0.75, 0.0, -0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.5, -0.25, 0.0, 0.75, 0.0, 0.25, 1.0, 0.25, -0.25, -0.5, -0.5, 0.5, -0.25, -0.75, -1.0, 0.5, -0.75, -0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -0.75, -0.75, 0.5, 0.25, -0.75, 0.0, -0.25, 0.0, 0.0, 0.25, ]);
    const array4 = new Float32Array([0.0, -0.5, -0.75, -0.5, 0.0, -0.5, 0.25, -0.25, 1.0, -0.5, -1.0, -0.5, 0.5, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 0.75, 0.5, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, 0.0, 0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 1.0, -0.75, -0.5, -0.75, -1.0, 1.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 0.75, 0.0, -0.25, 1.0, 0.5, -0.5, -0.75, 0.25, 0.75, -0.25, -1.0, -0.75, -0.25, 1.0, -1.0, 0.0, 0.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([0.75, 0.25, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.75, -0.75, 0.5, 0.0, -0.25, 0.25, 1.0, 0.25, 0.75, 0.75, -0.5, 0.75, 1.0, -1.0, -0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 1.0, 0.0, 0.5, 0.0, -0.5, -0.25, 0.5, 1.0, 1.0, -0.5, -0.25, -0.5, -1.0, -0.75, -0.75, 0.25, -0.5, 1.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, -0.25, 0.5, 0.75, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, -1.0, -0.75, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, -0.75, -0.25, 1.0, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const array6 = new Float32Array([-0.25, 0.5, -0.75, 0.5, -0.75, 1.0, 0.5, -0.25, -0.5, -0.75, 0.5, 0.5, 0.75, -0.5, -0.25, -1.0, 0.0, 1.0, 0.25, -0.75, 1.0, 0.0, 1.0, -0.75, 0.0, -1.0, -1.0, -0.75, -0.25, -1.0, 0.75, 0.5, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, 0.25, -1.0, 0.75, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.5, -0.75, 0.0, 0.0, -0.25, -0.75, 0.0, -0.75, 0.75, 0.5, 0.25, -0.5, -0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.5, 0.0, 1.0, 0.5, 1.0, 0.5, 0.0, 0.0, ]);
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_buffer100 = command_encoder100.finish();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.0, 0.75, -0.25, 0.75, 0.75, 0.25, -0.25, -0.75, 0.25, 0.0, 0.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -0.75, -1.0, 0.0, 0.75, -0.5, 1.0, 1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, -0.75, -0.5, 1.0, -0.75, 0.5, -0.5, -0.5, -0.75, -0.5, 1.0, -0.75, 0.0, 0.5, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 0.5, 0.75, 0.25, -0.75, -0.25, 1.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.0, -0.5, -0.25, -1.0, -1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.5, -0.5, 0.5, 0.75, 0.75, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, 1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    command_encoder200.insertDebugMarker("mymarker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, ]);
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer200.destroy()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const command_buffer201 = command_encoder201.finish();
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const array8 = new Float32Array([-0.25, 0.5, 1.0, 1.0, 0.25, -0.25, 0.5, -1.0, -0.5, -0.25, -0.25, 0.0, 0.5, 1.0, 0.0, -0.25, 0.75, 0.0, -1.0, 0.0, 0.75, -0.5, 0.0, 1.0, -0.75, -0.75, -1.0, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, 0.0, 0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -0.75, 1.0, 0.5, 0.0, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 0.75, -0.75, 1.0, -1.0, -1.0, -1.0, 1.0, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 1.0, 0.25, -0.5, 0.5, 1.0, -0.75, 0.75, -0.75, 0.25, 0.75, 0.0, 0.75, -0.75, 0.75, -0.75, -1.0, 0.5, -0.25, 0.5, -1.0, 0.75, 1.0, -1.0, 1.0, -1.0, 0.0, 0.75, -0.5, ]);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.submit([command_buffer201, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    device30.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    buffer100.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    texture100.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
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
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    texture200.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture201.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture400.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    render_bundle_encoder101.popDebugGroup();
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
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
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query200 = device20.createQuerySet({
        label: "query200",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer201.destroy()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer401.destroy()
    
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device10.pushErrorScope("out-of-memory");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query103.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
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
        occlusionQuerySet: query102
    });
    buffer101.destroy()
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture202.destroy();
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer202.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    query101.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.beginOcclusionQuery(0)
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_pass_encoder1010.endOcclusionQuery()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
        bindGroupLayouts: [bind_group_layout201]
    });
    query200.destroy()
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
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
    query200.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query103.destroy()
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    query200.destroy()
    device60.pushErrorScope("validation");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder201.setPipeline(render_pipeline201);
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    texture600.destroy();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
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
    
    query201.destroy()
    query101.destroy()
    texture103.destroy();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.setPipeline(render_pipeline102);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_bundle_encoder202.insertDebugMarker("marker");
    query200.destroy()
    device50.pushErrorScope("out-of-memory");
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setPipeline(render_pipeline201);
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2020.popDebugGroup()
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device70.destroy();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder6000.insertDebugMarker("marker");
    
    render_pass_encoder1020.setStencilReference(1);
    
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder600.popDebugGroup();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.popDebugGroup();
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder501.insertDebugMarker("mymarker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder1010.insertDebugMarker("marker");
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    render_bundle_encoder200.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    buffer400.destroy()
    render_bundle_encoder202.popDebugGroup();
    
    render_bundle_encoder102.popDebugGroup();
    
    
    buffer204.destroy()
    render_pass_encoder6000.pushDebugGroup("group_marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.submit([command_buffer205, ]);
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture602.destroy();
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    query104.destroy()
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
    buffer203.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    query103.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_buffer501 = command_encoder501.finish();
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.setPipeline(render_pipeline403);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    buffer103.destroy()
    
    buffer104.destroy()
    
    buffer600.destroy()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_pass_encoder6000.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    query104.destroy()
    query104.destroy()
    compute_pass_encoder2020.popDebugGroup()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.endOcclusionQuery()
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    command_encoder203.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    device50.queue.submit([command_buffer501, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer203 = command_encoder203.finish();
}