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
    
    const array0 = new Float32Array([-0.25, 0.25, 1.0, 0.25, 0.25, -0.75, -0.75, 1.0, -0.25, 0.75, 1.0, 0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.75, 1.0, -0.75, 0.25, -0.75, 0.5, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.5, 0.0, 1.0, -0.25, -0.5, 1.0, -0.5, 0.75, 0.75, 0.75, -1.0, -0.5, 1.0, -0.5, 0.25, 0.5, 0.75, 1.0, 0.5, 0.0, -1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.5, -0.75, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.25, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, -1.0, -0.5, -0.5, 1.0, -0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, -1.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.25, 0.5, 0.0, -1.0, 0.75, -0.25, -0.75, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.5, -0.5, -0.75, -0.5, 0.0, -1.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 0.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.0, -0.25, -1.0, -0.75, -0.25, 0.0, 0.5, -0.25, -1.0, 0.0, 0.5, 0.5, -0.5, 0.75, -1.0, 0.25, 0.5, -0.25, -0.5, 1.0, 1.0, -0.75, 0.25, 0.0, 0.25, -0.25, 1.0, -0.25, 0.25, -0.5, -0.5, -0.5, -0.25, -0.75, 0.25, -1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 0.75, -0.25, 0.25, -0.25, 0.25, 0.75, 0.75, 0.5, 0.5, -1.0, -0.25, -0.75, -0.25, 0.25, 0.5, -0.5, -0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const array2 = new Float32Array([0.25, -0.5, -0.25, 0.0, -0.75, 0.25, 0.5, -0.25, 0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, -0.75, 0.25, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, -0.5, -0.25, 0.5, -1.0, 0.0, -0.75, -0.5, -1.0, -0.75, 0.5, -0.75, 0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 0.75, 0.0, 0.0, -0.75, -0.25, 0.0, -0.75, 0.75, -0.75, 0.0, 0.25, 0.75, -0.25, 1.0, 0.75, 0.25, 1.0, 0.75, -1.0, 1.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.75, -0.75, -1.0, 0.5, 0.75, 0.5, 0.5, 0.75, 0.75, ]);
    const array3 = new Float32Array([0.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.5, 1.0, -0.75, -0.5, -0.5, 0.5, -0.75, -0.25, 0.5, 0.0, 1.0, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.5, 0.25, -0.25, -0.25, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, -0.5, -0.25, 0.0, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.75, 0.5, 1.0, -1.0, -0.75, -0.25, 0.25, -0.5, -0.25, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, 0.0, 0.0, 0.75, 0.25, 0.25, -0.25, -0.75, 0.0, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 1.0, 0.0, -0.25, 0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 0.0, 0.5, 0.25, 0.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.25, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-0.25, 0.0, -0.5, -0.25, 1.0, 0.75, -0.75, 0.25, 0.5, -0.25, -0.25, 0.5, 1.0, 0.75, 0.5, -0.25, 0.0, 0.0, 0.25, -0.75, 0.5, 0.5, -0.75, 0.75, 1.0, 0.25, 0.25, -0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.5, 1.0, 0.75, 1.0, -0.25, 0.75, -0.5, -0.5, 0.5, 0.0, -0.25, 0.0, 0.0, -0.75, 1.0, -1.0, 0.25, 0.25, -1.0, 0.25, 0.75, -0.25, 1.0, 0.0, 0.75, -0.75, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, -0.5, 0.5, 0.5, -0.25, -0.75, 0.75, 0.0, -0.5, 0.25, -0.25, 0.5, -1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.5, -0.75, 0.25, -1.0, 0.75, -0.25, 0.0, 0.25, -0.75, ]);
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array5 = new Float32Array([-1.0, -1.0, 1.0, -0.75, -0.25, 0.0, 0.75, 0.0, 0.0, 0.5, 0.5, 0.5, -0.5, 0.0, -0.25, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.5, 0.0, -0.5, 0.0, -0.5, -0.25, -0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.75, -0.75, -0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, 0.25, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, 0.0, -1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 0.75, -0.5, -1.0, 1.0, -0.5, -1.0, -0.75, 0.5, 0.25, 0.75, -0.25, 0.0, -0.75, -0.75, 1.0, -0.25, -1.0, 0.25, 0.25, ]);
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer500 = command_encoder500.finish();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    texture500.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const array6 = new Float32Array([-0.25, 0.0, 1.0, 0.75, 0.0, -1.0, -1.0, 0.25, -0.5, -1.0, 0.5, -0.5, -1.0, 0.75, -0.75, 0.25, 0.5, 0.25, -0.75, -0.75, 1.0, 0.5, 0.5, -1.0, -0.75, -0.25, -1.0, 0.75, 0.0, -0.75, -0.75, -1.0, -0.5, 0.75, -0.5, 1.0, 0.5, -0.75, 0.5, -0.25, 1.0, 0.75, 0.5, -0.75, -1.0, 1.0, 0.0, 1.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.5, -0.75, -0.75, 0.75, 1.0, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 0.25, -0.75, 0.0, -1.0, -0.25, 0.0, -1.0, 0.0, 0.5, 0.25, 0.25, 0.75, -0.5, 0.75, -0.25, -1.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 0.25, -1.0, -0.25, 0.25, -0.5, -0.5, 1.0, ]);
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    
    
    buffer400.destroy()
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
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
    
    device60.pushErrorScope("internal");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
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
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
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
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    device50.queue.submit([command_buffer500, ]);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder600.insertDebugMarker("mymarker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    command_encoder600.insertDebugMarker("mymarker");
    
    
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
    command_encoder600.insertDebugMarker("mymarker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("out-of-memory");
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    texture601.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
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
    const array7 = new Float32Array([0.25, -0.75, 0.0, -1.0, 0.0, -1.0, 0.25, 0.0, -0.75, -0.75, 1.0, 0.0, 0.75, 0.75, -0.25, -0.75, -1.0, 0.5, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, 0.75, -1.0, 0.5, 0.5, 1.0, 1.0, 0.25, 0.0, -0.25, 0.5, -1.0, -0.75, 1.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, -0.75, -1.0, -1.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.5, 0.5, 0.5, 0.0, 0.0, 0.5, -0.5, 0.5, -0.75, -0.25, -0.75, 0.25, 0.75, -0.25, 0.0, -0.25, -0.5, 0.5, 0.75, 0.25, 0.25, -0.5, -0.75, -0.75, 0.75, 0.75, -0.5, -0.25, -1.0, 0.0, -1.0, 0.25, -0.5, 0.5, -0.5, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, ]);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
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
        occlusionQuerySet: query600
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
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
    query800.destroy()
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
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
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
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
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    query500.destroy()
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device80.queue.writeTexture({ texture: texture800 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    render_pass_encoder6030.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    const command_buffer400 = command_encoder400.finish();
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
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    render_pass_encoder6030.pushDebugGroup("group_marker");
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
    
    
    const command_buffer501 = command_encoder501.finish();
    
    const command_buffer502 = command_encoder502.finish();
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    buffer500.destroy()
    
    const array8 = new Float32Array([0.5, -1.0, -0.25, 0.75, 0.5, 0.0, -0.5, 1.0, -0.5, 0.0, 1.0, -0.25, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, -0.75, 0.5, 0.5, 0.75, 0.5, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.25, 0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.5, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.75, 0.75, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.5, -0.5, 0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.0, -0.25, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 1.0, 0.75, 0.25, ]);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture602.destroy();
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6030.popDebugGroup();
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder6030.executeBundles([])
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
    
    
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    query801.destroy()
    render_pass_encoder6000.executeBundles([])
    query800.destroy()
    
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    buffer401.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline502);
    render_pass_encoder6030.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_bundle_encoder600.popDebugGroup();
    
    device80.queue.writeTexture({ texture: texture800 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture400.destroy();
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([1.0, 0.75, 0.75, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, 0.25, -1.0, -0.5, 1.0, -1.0, -0.25, 1.0, -0.75, 0.5, -1.0, -0.75, 0.5, -0.5, -1.0, 0.5, 0.5, 1.0, -0.25, 0.0, -0.75, 0.0, 0.25, -0.5, -1.0, 1.0, -0.25, -0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 1.0, -0.75, 0.25, -0.75, 0.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.5, -1.0, -1.0, -1.0, 1.0, 0.75, -1.0, -0.5, -0.5, -1.0, 0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 0.25, -0.25, -0.75, -0.5, 0.75, 0.0, 0.75, 0.75, 0.0, -0.75, 1.0, 1.0, -0.75, 0.25, 0.25, -0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 0.25, 1.0, 0.25, ]);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    device50.pushErrorScope("internal");
    
    
    
    render_pass_encoder6000.insertDebugMarker("marker");
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    query900.destroy()
    render_pass_encoder6000.setPipeline(render_pipeline600);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    render_pass_encoder6000.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    compute_pass_encoder6010.insertDebugMarker("marker")
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    texture800.destroy();
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    query400.destroy()
    render_pass_encoder6030.executeBundles([])
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    buffer402.destroy()
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.insertDebugMarker("marker");
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
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
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    
    
    render_pass_encoder6000.popDebugGroup();
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8001,
            },
        ],
        occlusionQuerySet: query801
    });
    query500.destroy()
    render_pass_encoder6020.beginOcclusionQuery(0)
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.setPipeline(render_pipeline503);
    render_pass_encoder6030.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    command_encoder900.pushDebugGroup("mygroupmarker")
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.pushErrorScope("internal");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder601.setPipeline(render_pipeline601);
    render_bundle_encoder500.popDebugGroup();
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    buffer900.destroy()
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_pass_encoder8000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device80.pushErrorScope("validation");
    query400.destroy()
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder802.insertDebugMarker("marker");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query502.destroy()
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
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    texture901.destroy();
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder6030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    query800.destroy()
    compute_pass_encoder4010.insertDebugMarker("marker")
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder802.insertDebugMarker("marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group500);
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([1.0, 0.0, -0.75, 0.0, -0.75, 0.0, -0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 0.5, 0.0, -0.25, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.75, 0.5, -0.25, -1.0, -0.75, 1.0, -0.25, 0.5, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, -0.75, -0.5, -0.75, 0.0, 0.5, -0.5, -0.5, 0.5, -1.0, 1.0, 0.25, 0.75, 0.75, -1.0, -0.25, -0.5, -0.75, -1.0, 1.0, -0.75, 1.0, -0.75, -0.25, -1.0, -0.5, 0.75, -1.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 0.75, -0.5, 0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, 0.25, -0.25, 0.0, -0.5, 0.75, ]);
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module903,
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
            module: shader_module903,
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
    
    render_pass_encoder6020.setPipeline(render_pipeline601);
    render_bundle_encoder502.popDebugGroup();
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device100.pushErrorScope("internal");
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder6030.setStencilReference(1);
    render_pass_encoder6020.endOcclusionQuery()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder8000.setScissorRect(0, 0, texture800.width / 2, texture800.height / 2);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder6020.beginOcclusionQuery(1)
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.pushErrorScope("out-of-memory");
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder503.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    buffer502.destroy()
    device60.queue.writeBuffer(buffer602, 0, array0, 0, array0.length);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture900.destroy();
    
    device60.queue.writeBuffer(buffer602, 0, array10, 0, array10.length);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout604,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer602, 0, array1, 0, array1.length);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.setPipeline(render_pipeline404);
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder6020.pushDebugGroup("group_marker");
    device100.queue.writeBuffer(buffer1000, 0, array7, 0, array7.length);
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    render_bundle_encoder802.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6020.popDebugGroup();
    query400.destroy()
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    command_encoder503.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    query501.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    render_pass_encoder6020.setStencilReference(1);
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    compute_pass_encoder6010.insertDebugMarker("marker")
    render_pass_encoder6030.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    
    
    render_pass_encoder6020.insertDebugMarker("marker");
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout602]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    query801.destroy()
    device40.pushErrorScope("validation");
    
    device60.queue.writeBuffer(buffer602, 0, array8, 0, array8.length);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    render_pass_encoder6030.setPipeline(render_pipeline601);
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer604 = device60.createBuffer({
        label: "buffer604",
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
                    buffer: buffer603,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer604,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group600);
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer504 = command_encoder504.finish();
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline601.getBindGroupLayout(0),
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

    render_pass_encoder6020.setBindGroup(0, bind_group601);
    command_encoder900.popDebugGroup()
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

    render_pass_encoder6030.setBindGroup(0, bind_group602);
    command_encoder503.popDebugGroup()
    render_pass_encoder6020.endOcclusionQuery()
    compute_pass_encoder6010.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
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

    compute_pass_encoder6010.setBindGroup(0, bind_group603);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer503 = command_encoder503.finish();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    const command_buffer900 = command_encoder900.finish();
    compute_pass_encoder6010.end();
    const command_buffer601 = command_encoder601.finish();
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([command_buffer601, ]);
}