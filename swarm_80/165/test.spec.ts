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
    const array0 = new Float32Array([1.0, 0.25, -0.5, 0.75, 0.25, -0.75, -0.25, -0.75, 0.5, -1.0, 0.75, -0.75, -0.5, -0.25, 0.75, -0.75, 0.25, -1.0, 0.0, 0.25, 1.0, 0.25, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, 0.0, 0.25, 0.25, -0.75, -0.75, -0.25, -0.25, 0.5, 0.75, -0.25, 0.5, -0.25, -0.75, 0.25, 0.5, 0.25, -1.0, -0.5, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, 1.0, 0.25, -0.75, 1.0, -0.25, 0.5, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -0.5, -0.25, 0.5, 1.0, 0.25, 0.5, 1.0, -1.0, 0.25, -0.25, 1.0, -0.25, -1.0, -0.75, 1.0, -1.0, 1.0, -0.25, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -0.25, 1.0, -0.25, 0.0, -1.0, -1.0, 0.5, 0.25, 0.25, ]);
    const array1 = new Float32Array([0.75, 0.25, 0.5, -1.0, -0.5, -0.75, 1.0, -0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, -0.75, 0.5, -0.75, 0.75, -1.0, -0.75, -0.25, 0.25, -0.25, 0.5, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, 1.0, -0.25, -0.75, -0.25, 0.5, -0.75, 0.75, 0.75, -1.0, 1.0, 0.25, -0.75, -0.75, 0.75, 0.25, -0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -0.75, -0.75, -0.5, 0.5, -0.75, 0.75, 0.25, 0.25, -0.25, -1.0, 0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.25, 0.5, -1.0, -0.5, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.25, 1.0, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.75, -0.25, -1.0, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.0, -0.75, 1.0, -0.5, 0.0, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, 0.0, -0.25, 1.0, -0.25, 0.75, -0.5, -1.0, -1.0, 1.0, -0.5, 1.0, 0.5, -0.25, -0.75, -0.75, 0.0, -0.25, 0.5, -1.0, 0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, 0.0, -0.5, -0.75, 0.5, 0.0, 0.75, -0.5, 1.0, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.5, -0.5, -0.75, ]);
    
    
    
    
    const array3 = new Float32Array([0.5, -0.75, 0.0, 0.0, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -0.75, 0.75, -0.5, -0.25, -1.0, -0.5, -0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -1.0, -0.75, 0.0, -0.75, 0.25, 0.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.25, 0.5, 0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 0.25, 1.0, -1.0, -1.0, -0.75, -0.75, 0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.0, -1.0, 0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.75, 0.75, 0.5, 0.0, -0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -0.75, -0.75, -1.0, -0.5, 0.5, 0.25, -0.5, 0.75, 0.5, -0.25, 0.75, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
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
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    
    const array4 = new Float32Array([-0.75, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 1.0, -0.5, 0.0, 0.25, -0.5, 0.0, -1.0, 1.0, 0.25, -0.25, 0.75, -0.25, -1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 0.25, -0.75, -0.75, -0.25, -0.75, 0.25, -1.0, 0.75, 0.75, 0.25, 0.75, -0.75, -0.25, 0.0, 0.25, 0.5, 0.75, 0.25, 0.25, 1.0, 0.75, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.5, -0.75, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, -0.25, 0.75, -0.5, -0.25, -0.75, 0.25, -0.5, 0.5, 0.75, -1.0, 0.0, 0.0, 0.5, 0.0, -0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -1.0, 1.0, 1.0, 0.25, -0.25, 1.0, -0.75, 1.0, 1.0, 0.25, -0.75, 1.0, 1.0, 0.75, 0.5, -0.5, -0.75, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array5 = new Float32Array([0.75, -0.75, 0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, -0.25, -0.25, 1.0, -1.0, 0.25, 1.0, 0.0, -0.25, -1.0, -0.25, 0.75, -0.25, -1.0, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, -0.5, -0.5, 0.75, 1.0, 1.0, -1.0, -0.25, -0.75, 0.75, -0.25, 1.0, 0.5, 1.0, 0.25, 0.0, 0.25, 0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -0.5, 1.0, 0.0, 1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.75, 0.25, -0.5, 0.25, -1.0, 0.75, 0.75, 0.5, -0.25, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.0, 0.5, -0.5, -0.25, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 1.0, -0.5, -0.5, 1.0, -0.75, 0.75, 0.75, ]);
    
    
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
    device30.destroy();
    const array6 = new Float32Array([-0.25, -1.0, -0.5, -0.75, 0.25, 1.0, 1.0, -0.5, 0.5, -0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 0.0, -0.25, 1.0, -0.75, -0.25, 0.0, -0.75, 0.75, 0.0, 1.0, -0.25, 0.25, 0.75, 0.25, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, -0.25, 0.75, 1.0, -0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.5, 1.0, -0.25, 1.0, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.25, -0.25, -0.5, -0.75, 0.25, 0.5, -0.5, 0.0, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, 0.5, 0.0, -0.75, 0.75, -0.5, 0.0, -0.25, -0.5, 0.75, 0.0, -1.0, -0.25, 0.75, 0.5, 0.0, -0.25, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, 0.75, ]);
    const array7 = new Float32Array([-0.5, 0.25, 0.25, 0.75, 0.0, 0.75, 0.75, 0.75, 0.25, -0.75, 1.0, 0.25, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, 0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 0.0, -1.0, 0.5, 0.5, -1.0, -1.0, -0.5, -0.5, -1.0, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.75, -1.0, 0.0, -0.5, -1.0, -1.0, -0.25, 0.25, 0.75, 0.75, -0.25, 0.75, -0.5, 0.25, -1.0, 1.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.0, -0.75, 0.0, -0.75, -0.75, -0.5, -1.0, -0.75, 0.25, -0.25, -0.75, -0.75, 0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 0.25, 0.25, 1.0, 0.75, 0.0, 0.5, 1.0, 0.75, 0.5, 1.0, -0.75, -1.0, ]);
    const array8 = new Float32Array([0.5, 1.0, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, 0.0, -0.25, 0.25, 0.5, 0.75, 0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -0.75, -0.25, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, 0.5, 0.25, 1.0, -0.5, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, 0.0, -0.75, 0.5, 0.5, 0.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.75, -1.0, 1.0, -1.0, 0.75, -0.5, -0.5, 0.75, 1.0, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.75, 0.75, -1.0, 0.5, -0.5, -0.25, 0.75, 0.0, -0.75, 0.75, -0.5, 1.0, -0.5, 0.5, 0.75, -1.0, 0.0, -0.75, -0.25, -1.0, -0.75, -0.5, 0.5, -0.5, -1.0, -1.0, -1.0, 0.25, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, 0.0, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
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
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.destroy();
    
    
    const array9 = new Float32Array([1.0, 0.0, -0.75, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.5, 0.75, -1.0, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, 0.75, -0.25, 1.0, -1.0, -0.75, -1.0, -1.0, 0.0, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 0.25, 0.25, 0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 0.0, 0.5, 1.0, 0.25, 0.5, -0.5, 0.0, 0.75, -0.25, -0.25, -1.0, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, 0.75, -0.5, -0.75, 0.0, -1.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.75, 0.0, 0.75, -0.25, -0.75, 1.0, -1.0, -1.0, 0.25, 0.75, 0.5, -0.75, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.destroy();
    device60.destroy();
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer800.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array10 = new Float32Array([-0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -0.25, 1.0, -0.75, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, 0.5, -0.25, 0.0, -1.0, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.5, -1.0, 0.75, -0.75, 1.0, 0.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, -0.25, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 1.0, -0.75, -0.5, 0.75, 0.75, -1.0, -1.0, -0.75, 0.0, 0.5, 1.0, 0.5, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, -0.5, 1.0, 0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, 0.0, 0.5, -1.0, 0.75, 0.25, -0.75, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device90.destroy();
    
    
    
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    
    
    
    device100.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.0, 1.0, -0.25, -1.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, 0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 0.25, 1.0, -0.25, -0.25, 0.75, -0.25, 0.75, -0.25, -1.0, -0.5, 1.0, 0.5, -0.5, -0.25, 0.0, 0.0, -1.0, 0.0, 0.25, 0.5, -0.25, 0.25, -1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.75, -1.0, 0.75, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 0.5, 1.0, -0.75, -1.0, 0.25, 0.75, 1.0, 0.0, 0.0, -1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 0.0, -1.0, 0.0, 0.75, 0.25, -0.5, -0.5, -1.0, -0.5, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    device130.queue.writeBuffer(buffer1300, 0, array4, 0, array4.length);
    device130.queue.writeBuffer(buffer1300, 0, array0, 0, array0.length);
    
    
    device130.queue.writeBuffer(buffer1300, 0, array6, 0, array6.length);
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array12 = new Float32Array([-1.0, -0.75, 1.0, 0.0, -1.0, 0.25, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 0.25, -0.5, -1.0, 0.0, -0.75, -0.25, 1.0, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, -0.25, 0.5, -1.0, -0.75, 0.0, -0.75, 1.0, -0.75, -0.5, 1.0, -1.0, 1.0, -1.0, -1.0, -1.0, 0.75, -1.0, 0.25, -0.5, -1.0, 1.0, -0.75, -0.5, 0.5, -0.25, -0.25, -0.75, 0.75, -1.0, 0.5, 1.0, 0.0, -0.75, -0.5, 0.0, 0.75, -0.5, -0.75, 0.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 0.5, 0.5, 0.75, -0.25, -0.25, 1.0, 0.0, 0.25, 1.0, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 1.0, ]);
    device130.destroy();
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array13 = new Float32Array([1.0, 0.75, -0.25, 0.5, -0.75, -0.25, 0.5, -0.5, -0.5, -1.0, 1.0, -0.25, 0.5, 1.0, 0.0, -0.75, -1.0, -0.5, -0.5, 0.75, 0.0, -0.5, 0.0, 0.75, -0.75, 0.5, -0.5, -0.5, 1.0, 1.0, -0.25, -1.0, -1.0, 0.75, 0.0, 0.5, 0.25, 0.0, 0.75, -1.0, 1.0, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, 0.5, 0.75, 0.75, 0.0, -1.0, 0.5, 0.5, 1.0, 0.75, -1.0, -0.75, 0.0, 0.75, -0.75, 0.75, 0.75, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, -0.25, 0.0, -1.0, 0.25, -1.0, -0.5, -1.0, -0.5, 0.75, 1.0, -0.25, -0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -0.75, -0.5, 0.0, 0.75, 0.25, -0.25, ]);
    texture1200.destroy();
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    device120.destroy();
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1400]
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1401]
    });
    const array14 = new Float32Array([-0.75, -0.75, 0.25, 0.25, 1.0, 0.5, -1.0, 1.0, 0.5, 0.0, 0.75, -1.0, -0.75, -0.5, 0.5, 1.0, -0.25, -0.25, -0.5, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -1.0, 0.5, -0.25, 0.0, 1.0, 0.5, -1.0, -1.0, 0.75, -0.75, 0.75, 0.25, 0.75, 0.25, 0.75, 0.0, 0.75, -0.5, 0.25, -0.5, -0.25, 1.0, 0.5, 1.0, 0.75, -0.25, -0.5, 0.5, -0.25, 0.5, 0.25, 0.0, 0.5, 1.0, 0.5, -0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 0.0, 0.5, 0.0, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, 0.75, 0.25, 0.75, 0.0, 0.5, 0.5, 0.25, 0.0, 0.5, -0.5, -0.75, 0.5, 0.0, -0.25, 0.25, ]);
    
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1402 = device140.createPipelineLayout({ 
        label: "pipeline_layout1402",
        bindGroupLayouts: [bind_group_layout1400]
    });
    const array15 = new Float32Array([-0.75, -1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -0.25, -1.0, -1.0, -0.75, 1.0, -1.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.5, -0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.25, 0.25, -0.75, -0.75, -0.75, -0.25, 0.0, -0.75, -0.25, -0.5, -0.75, 0.75, -1.0, 0.5, 0.0, -0.5, 0.25, 0.25, -0.25, 0.25, -0.5, 0.5, -0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, -0.25, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -0.5, -0.5, 0.25, -0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.5, ]);
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    const bind_group_layout1402 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1402",
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
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    
    device140.queue.writeBuffer(buffer1400, 0, array5, 0, array5.length);
    device140.queue.writeBuffer(buffer1400, 0, array0, 0, array0.length);
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device140.destroy();
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer1100.destroy()
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1102]
    });
    
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1101]
    });
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device110.destroy();
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const array16 = new Float32Array([0.0, -0.75, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.5, -0.5, -0.5, -1.0, -0.75, 0.5, 0.0, 0.25, -0.75, -0.25, 0.0, 1.0, 0.75, -0.25, -0.25, 0.25, -0.25, 0.5, -0.5, 0.5, -0.75, -0.25, 0.0, 0.75, 0.5, -0.25, 0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.75, -1.0, 0.0, -0.5, 0.5, 1.0, -1.0, -0.75, 0.0, 0.5, 0.25, -0.75, -0.75, -0.75, 1.0, 1.0, -0.25, -0.5, 0.75, 0.0, 0.75, -0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 1.0, 0.25, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 0.75, -0.5, -0.5, -0.75, -0.75, 0.0, -0.25, -0.25, -0.25, -0.5, -0.5, -1.0, 0.0, 1.0, -0.25, -0.5, 1.0, 0.0, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, 0.25, ]);
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    const array17 = new Float32Array([0.75, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.75, -1.0, -1.0, 0.75, 0.0, -0.25, 0.5, 0.5, -0.25, 0.25, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.25, 0.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.0, -0.25, 1.0, 0.0, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.75, -0.5, -0.5, -0.25, 0.0, -1.0, -0.25, 0.75, 0.0, -1.0, 0.25, 0.25, 0.5, 0.0, 0.5, 0.0, 0.25, -1.0, 0.25, -0.75, -0.25, 0.0, 0.75, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, 0.75, 1.0, 0.25, 0.75, -1.0, -0.5, 0.25, -0.75, 0.0, -0.75, 0.5, -0.25, 0.5, 0.5, 0.0, -0.25, 0.25, ]);
    
    
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    const array18 = new Float32Array([1.0, 0.5, -0.75, -0.5, 0.0, 0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 0.75, 0.0, 0.5, 0.0, 0.75, -0.25, 0.75, -1.0, 0.5, 0.75, -1.0, 1.0, -0.5, -0.5, -0.25, 0.0, 1.0, 0.75, 0.25, -1.0, 1.0, 1.0, 0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 1.0, -0.25, -0.75, -0.25, -0.75, 0.5, 0.5, 0.0, 1.0, 1.0, 0.0, -0.25, 0.5, 0.25, -1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.0, 0.25, 0.75, -0.75, 0.75, 0.25, 0.25, 0.0, -0.25, 0.5, 0.75, 0.5, 1.0, -1.0, -0.25, -1.0, -1.0, 0.75, 1.0, -1.0, -1.0, 0.25, -0.5, 1.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.5, 1.0, -0.5, -0.25, -0.25, 0.75, 0.5, 1.0, 0.75, ]);
    texture1600.destroy();
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    
    
    
    
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    
    
    
    
    
    
    
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const pipeline_layout1600 = device160.createPipelineLayout({ 
        label: "pipeline_layout1600",
        bindGroupLayouts: [bind_group_layout1600]
    });
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device150.destroy();
    
    
    
    device160.destroy();
    
    
    
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    
    
    
    
    
    
    
    device170.destroy();
    
    
    
    
    
    const array19 = new Float32Array([0.25, 0.75, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, 1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, 0.0, -1.0, -1.0, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, 0.75, -0.25, -0.25, 0.5, 0.5, -0.5, 0.0, -1.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, 0.0, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, -1.0, -0.25, 0.5, 0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 0.5, 0.75, -1.0, -0.25, -0.75, 1.0, -0.75, 0.0, -1.0, -0.25, 1.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.5, 0.5, -0.5, -0.25, 1.0, 0.5, -0.5, -0.75, 0.25, -0.5, -0.25, -0.25, -0.5, -1.0, -0.5, -0.5, 0.5, -0.5, 0.25, -0.5, 0.0, ]);
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    
    
    device180.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    const render_bundle_encoder2000 = device200.createRenderBundleEncoder({
        label: "render_bundle_encoder2000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture2000 = device200.createTexture({
        label: "texture2000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    render_bundle_encoder2000.pushDebugGroup("group_marker");
    
    const array20 = new Float32Array([0.5, -0.75, 0.5, 1.0, 0.25, -1.0, -1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.5, 1.0, -0.25, 1.0, 0.5, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, 0.25, -1.0, -0.25, -0.5, -1.0, 0.0, -0.25, 0.75, 1.0, 0.0, -0.25, 0.5, -1.0, 0.25, -0.25, -0.5, 0.25, 1.0, -0.5, -0.75, -0.25, -0.25, -0.25, 0.5, -0.5, 0.75, 0.75, 0.25, 0.5, -0.75, 1.0, 1.0, -0.75, -0.25, 0.75, -1.0, -1.0, -0.75, 0.5, -0.5, -0.5, 1.0, 0.75, 0.75, 0.5, -0.25, -0.25, -0.75, 0.75, 0.5, -0.25, 0.0, 0.5, 0.75, 0.0, -0.75, 0.0, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, 0.75, 1.0, 0.75, -1.0, -0.5, -1.0, 1.0, 0.75, 0.0, -1.0, -0.75, -0.75, 0.0, 1.0, ]);
    
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const array21 = new Float32Array([0.5, -0.5, -0.75, 0.75, -1.0, -0.75, 0.5, -0.5, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, -0.25, -0.25, 0.75, 0.25, 0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 0.5, 1.0, 0.75, -0.75, 0.0, -1.0, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, -0.5, 0.0, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.5, -1.0, -0.75, -0.75, 0.75, -1.0, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, -0.75, 1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -1.0, 0.5, -0.75, -0.75, 0.5, -0.75, 1.0, 0.5, 0.5, 0.5, 1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 0.5, 0.25, 0.5, 1.0, -0.75, 1.0, 0.75, -0.25, 0.25, 0.0, ]);
    
    device200.destroy();
    
    const array22 = new Float32Array([-1.0, 0.5, 1.0, 0.25, -0.75, -1.0, -1.0, 0.5, -0.25, -0.75, 0.25, -1.0, 1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 0.25, 0.0, -0.25, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.75, 0.75, 0.5, -0.5, 1.0, 0.25, 1.0, -1.0, 0.25, 0.0, 1.0, -0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 0.5, -1.0, 0.5, -1.0, 0.0, -1.0, 0.75, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 0.0, 0.0, -0.75, -0.25, -0.5, 0.0, 0.5, -1.0, 0.75, -1.0, -0.75, 1.0, 1.0, -0.5, 0.5, -1.0, -0.5, -0.25, 0.5, -0.25, -0.75, 1.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.0, 0.0, 0.0, ]);
    const texture1900 = device190.createTexture({
        label: "texture1900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    texture1900.destroy();
    
    
    const bind_group_layout1900 = device190.createBindGroupLayout({ 
        label: "bind_group_layout1900",
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
    
    
    const pipeline_layout1900 = device190.createPipelineLayout({ 
        label: "pipeline_layout1900",
        bindGroupLayouts: [bind_group_layout1900]
    });
}