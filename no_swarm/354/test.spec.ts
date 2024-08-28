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
    
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([0.0, -0.75, -0.75, -0.25, -0.5, -0.75, 0.0, -0.25, 1.0, 1.0, 0.75, 0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, 0.5, -0.75, 1.0, 0.0, -1.0, -0.25, 0.0, -1.0, -0.5, 0.0, -0.75, -0.25, -1.0, 1.0, 0.5, -1.0, 0.75, 0.5, 0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 1.0, -0.75, 0.75, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.75, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.25, -0.75, -0.75, 0.75, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, -0.25, -0.5, 1.0, -0.25, 0.0, 0.75, -1.0, 0.75, 1.0, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.destroy();
    const array1 = new Float32Array([0.25, 1.0, -0.75, -0.5, 0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 0.5, 0.75, 0.0, -0.25, -1.0, -0.5, 0.25, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -0.25, 0.25, 0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -0.75, 0.75, -0.5, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 0.5, 0.25, 1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.0, 0.0, 0.75, -0.75, 0.75, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, -1.0, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, -0.75, -1.0, 0.75, 0.0, 0.0, -0.75, 0.25, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, -1.0, -0.5, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, 0.25, -1.0, -0.5, 0.0, ]);
    
    
    
    
    
    
    
    
    
    const array2 = new Float32Array([0.75, -1.0, -0.75, 0.75, 0.0, 1.0, -0.75, -1.0, 0.0, 0.5, 0.75, -0.25, 0.0, -0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, -1.0, -0.5, 1.0, 0.25, 0.5, 0.75, -0.75, -1.0, -1.0, -0.5, 1.0, 0.25, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 1.0, -0.75, 0.0, -1.0, 0.25, -0.75, -0.5, -0.5, -0.25, 0.25, 0.75, -0.25, 0.0, 0.0, 0.75, -0.75, -0.75, 0.75, -0.75, 0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 1.0, -0.75, -0.5, 0.75, -0.75, 0.0, -0.5, 0.75, -0.5, 0.5, 0.0, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 0.75, 0.5, 0.5, 0.75, 1.0, 0.0, 1.0, -0.75, 0.5, 0.0, 0.0, 0.75, 0.75, ]);
    
    
    
    
    const array3 = new Float32Array([-0.5, 0.25, 0.75, 0.75, -0.25, 0.5, -0.5, 0.5, 1.0, 1.0, 0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 0.5, -0.25, 0.25, 1.0, 0.5, 1.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -1.0, 0.75, 0.75, 1.0, -0.5, 0.75, -0.5, 0.25, -1.0, -1.0, -0.25, 0.25, -0.5, 0.5, 0.0, -1.0, -0.75, 0.25, -1.0, 1.0, -0.75, -1.0, -1.0, 0.0, 0.5, 0.0, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.5, -1.0, 0.5, 0.5, -1.0, 0.25, 1.0, 0.0, -0.75, 0.0, 1.0, -0.25, -0.25, 0.5, 1.0, -1.0, 0.0, -0.25, -0.75, 0.25, 0.75, 1.0, 0.25, -0.75, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, ]);
    
    
    
    
    const array4 = new Float32Array([0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.25, 0.5, 0.0, 0.0, -0.25, -0.75, -0.75, -1.0, -0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 0.5, 0.25, 0.25, 1.0, -0.5, 0.75, -0.75, 1.0, -0.25, 0.25, 0.75, 1.0, 0.5, 0.0, 1.0, 0.25, 0.25, 0.0, 1.0, -0.5, -1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.25, -0.5, -1.0, 0.5, -0.75, 0.75, 0.25, -0.75, 0.25, -1.0, -0.25, 0.0, 0.5, -0.5, -1.0, 0.25, 0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.5, -0.25, -0.75, 1.0, 1.0, -0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 0.0, -0.25, 1.0, 0.5, -0.25, -0.25, -0.25, -1.0, -0.75, -0.25, -0.25, -1.0, -1.0, ]);
    
    
    const array5 = new Float32Array([-0.5, -0.75, 1.0, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, 1.0, -1.0, -1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 0.0, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, -0.25, 0.5, 0.5, 0.25, 0.0, -0.5, -0.75, -0.25, 0.5, 1.0, -0.5, 0.75, -0.25, -0.25, 0.25, -1.0, 0.5, 0.5, 0.75, 0.0, 0.5, 0.5, -0.25, 0.5, -1.0, 0.5, -0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, 1.0, -1.0, -1.0, 0.5, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -0.25, 0.5, -0.5, -1.0, 0.25, 1.0, -0.75, -0.75, -1.0, 0.75, 0.5, 0.75, -0.5, 0.5, -0.25, -0.75, -0.25, 0.25, 1.0, -0.75, ]);
    const array6 = new Float32Array([0.75, -1.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.5, -1.0, 0.5, -0.75, 0.5, -1.0, -0.75, 0.75, 1.0, -0.75, 0.25, 0.0, -0.25, -0.5, -0.5, 1.0, 0.25, -1.0, 1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.75, -0.75, 0.5, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, 0.0, -1.0, 0.25, -0.25, -0.75, -0.75, 0.5, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, -0.75, 0.25, 0.0, -1.0, 0.75, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -0.75, 0.0, -0.25, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, -1.0, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.0, -1.0, 0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 0.75, 0.25, -0.75, 0.75, 0.5, -1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const array7 = new Float32Array([1.0, 0.0, 1.0, -0.5, 0.75, 0.25, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 0.0, 0.5, -0.25, 0.5, 0.5, 1.0, -0.25, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -0.75, 0.25, 1.0, 0.0, 0.25, -0.25, -0.25, 0.75, -0.25, 0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.0, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 0.0, -1.0, -0.25, 0.0, 0.0, 0.75, -0.5, -0.25, 0.0, -0.5, -1.0, 0.0, ]);
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    
    device40.destroy();
    
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer500 = command_encoder500.finish();
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    buffer500.destroy()
    buffer600.destroy()
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device60.pushErrorScope("out-of-memory");
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    texture601.destroy();
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.0, -0.75, -0.25, 0.75, -0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 1.0, -0.75, 0.0, 0.25, -0.75, -0.25, -0.5, -1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.5, -1.0, 0.25, -0.75, -0.5, 0.75, 0.5, -0.25, 1.0, -0.25, -0.25, 0.0, 0.5, -0.25, 0.0, -0.75, 0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 0.75, 0.75, 0.25, 1.0, -0.5, -1.0, 0.25, -1.0, 0.5, 0.25, -0.5, 0.5, 0.75, 0.25, 0.5, 0.75, -1.0, -0.5, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, -0.25, -0.25, -1.0, -0.75, 0.0, -0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 1.0, 0.75, -0.25, 0.5, -1.0, -0.5, -0.5, 1.0, -1.0, 1.0, -0.5, 0.25, 1.0, 0.25, 0.25, -0.5, 0.75, 0.5, 0.5, -1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    query501.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder5010.setPipeline(compute_pipeline502);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query500.destroy()
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    texture501.destroy();
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder500.setPipeline(render_pipeline500);
    query502.destroy()
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture602.destroy();
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device70.pushErrorScope("internal");
    
    command_encoder800.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    query501.destroy()
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    render_bundle_encoder701.insertDebugMarker("marker");
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query501.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    query500.destroy()
    render_bundle_encoder502.setPipeline(render_pipeline500);
    compute_pass_encoder5020.setPipeline(compute_pipeline507);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    buffer602.destroy()
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setPipeline(render_pipeline601);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder800.insertDebugMarker("mymarker");
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer601.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    
    render_pass_encoder6000.setViewport(0, 0, texture602.width / 2, texture602.height / 2, 0, 1);
    render_bundle_encoder502.insertDebugMarker("marker");
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    buffer700.destroy()
    command_encoder700.insertDebugMarker("mymarker");
    buffer603.destroy()
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    texture700.destroy();
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout802]
    });
    
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_pass_encoder7000.insertDebugMarker("marker");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    buffer501.destroy()
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    query503.destroy()
    query800.destroy()
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    query601.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.popDebugGroup();
    render_bundle_encoder500.popDebugGroup();
    
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder7000.setStencilReference(1);
    
    render_bundle_encoder800.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer503, 0, array4, 0, array4.length);
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
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
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
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
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    compute_pass_encoder5030.insertDebugMarker("marker")
    query502.destroy()
    
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder5030.setPipeline(compute_pipeline5017);
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder7000.setStencilReference(1);
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    render_pass_encoder8000.setViewport(0, 0, texture801.width / 2, texture801.height / 2, 0, 1);
    query600.destroy()
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.pushErrorScope("internal");
    device50.pushErrorScope("out-of-memory");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder501.popDebugGroup();
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("internal");
    buffer503.destroy()
    
    query800.destroy()
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline5017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group501);
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    texture603.destroy();
    
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    buffer505.destroy()
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5030.dispatchWorkgroups(100);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout506,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.insertDebugMarker("marker")
    render_bundle_encoder601.insertDebugMarker("marker");
    device90.destroy();
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device80.queue.writeTexture({ texture: texture801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    render_pass_encoder8000.insertDebugMarker("marker");
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query502.destroy()
    render_pass_encoder8000.executeBundles([])
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group502);
    const array9 = new Float32Array([0.5, -0.25, 0.25, 0.0, 0.5, 1.0, -0.25, 1.0, -1.0, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, -0.25, 0.0, 0.25, 1.0, 1.0, -0.75, 0.25, 1.0, 0.0, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, -0.75, 0.75, -0.5, 0.25, -0.75, 0.0, 1.0, -0.25, -0.75, -0.5, -0.75, -0.25, 0.0, -0.25, 1.0, 0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 0.25, 1.0, 0.75, 1.0, 1.0, -0.75, 0.75, 1.0, -0.75, 0.5, -1.0, -1.0, 0.75, -0.75, 0.25, 1.0, -0.25, 0.25, 0.75, -0.25, 0.25, -0.25, 1.0, -0.25, -0.25, -0.25, -1.0, 0.5, 1.0, -0.5, 0.25, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.75, -0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 0.5, ]);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout502,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    texture802.destroy();
    buffer507.destroy()
    render_pass_encoder7000.setStencilReference(1);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const texture_view8030 = texture803.createView({ label: "texture_view8030" });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    device50.pushErrorScope("internal");
    
    
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: compute_pipeline507.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group503);
    render_pass_encoder6000.insertDebugMarker("marker");
    
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8031 = texture803.createView({ label: "texture_view8031" });
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder7000.setViewport(0, 0, texture700.width / 2, texture700.height / 2, 0, 1);
    render_pass_encoder7000.executeBundles([])
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout802 = device80.createPipelineLayout({ 
        label: "pipeline_layout802",
        bindGroupLayouts: [bind_group_layout800]
    });
    query601.destroy()
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    const uint32_5020 = new Uint32Array(3);

    uint32_5020[0] = 100;
    uint32_5020[1] = 1;
    uint32_5020[2] = 1;

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5011, 0, uint32_5020, 0, uint32_5020.length);

    compute_pass_encoder5020.dispatchWorkgroupsIndirect(buffer5011, 0);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    
    device50.queue.writeBuffer(buffer5011, 0, array2, 0, array2.length);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    device50.queue.writeBuffer(buffer5011, 0, array5, 0, array5.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder5030.insertDebugMarker("marker")
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_bundle_encoder602.setPipeline(render_pipeline603);
    query603.destroy()
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    device50.queue.writeBuffer(buffer5011, 0, array0, 0, array0.length);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder702.insertDebugMarker("marker");
    buffer800.destroy()
    
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer5011, 0, array0, 0, array0.length);
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout504,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5035 = device50.createComputePipeline({
        label: "compute_pipeline5035",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const compute_pipeline5036 = device50.createComputePipeline({
        label: "compute_pipeline5036",
        layout: pipeline_layout504,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5037 = device50.createComputePipeline({
        label: "compute_pipeline5037",
        layout: pipeline_layout503,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder8000.insertDebugMarker("marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pipeline5038 = device50.createComputePipeline({
        label: "compute_pipeline5038",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.submit([command_buffer500, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5010.end();
    compute_pass_encoder5020.end();
    const command_buffer501 = command_encoder501.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder7000.setPipeline(render_pipeline700);
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
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group700);
    compute_pass_encoder5030.popDebugGroup()
    command_encoder502.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5030.end();
    const command_buffer503 = command_encoder503.finish();
}