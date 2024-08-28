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
    const array0 = new Float32Array([-0.5, 1.0, 0.5, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 0.5, -1.0, 0.25, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, 1.0, 1.0, 0.0, -0.5, -1.0, -0.75, -0.25, -0.75, 0.5, -0.5, 0.0, -0.5, 0.75, 1.0, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.25, 0.0, -0.5, -0.75, -1.0, 0.25, 1.0, -0.25, 0.5, 0.75, 0.5, 0.0, 1.0, 0.75, -0.25, 0.75, 0.25, 0.5, 0.5, -0.75, 0.75, 0.0, 0.0, 0.75, 0.75, 0.75, -0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 1.0, 0.5, 1.0, -1.0, -0.25, 0.5, 0.25, -0.5, 0.0, -0.75, 0.5, 0.0, 0.75, 0.75, 0.5, 0.5, 0.75, 1.0, 1.0, -0.75, 0.0, -0.25, -1.0, 0.5, 0.0, 0.75, 0.25, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.75, 0.5, 0.5, 0.0, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, 0.0, 0.75, -0.5, 0.5, -0.25, -0.25, 0.25, 0.5, 0.0, -1.0, -0.25, 1.0, 1.0, -1.0, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.5, 0.25, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.0, 0.25, 0.0, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.5, 0.25, -1.0, 0.25, -0.25, 0.5, -1.0, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, -1.0, -0.5, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
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
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    texture100.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    
    
    
    
    
    
    const array2 = new Float32Array([0.5, 0.0, 0.0, 0.0, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 0.25, 0.75, 0.25, 0.0, 0.25, 0.0, -1.0, 1.0, 0.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 0.75, 0.25, -1.0, -0.5, 0.0, 0.5, 0.25, 0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -0.5, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, 0.25, 0.25, 1.0, 0.75, 0.75, -0.25, -1.0, -1.0, -0.75, -0.75, -0.25, 0.25, -1.0, 0.75, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, -1.0, 0.5, 0.0, -0.25, 0.25, 0.0, -1.0, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, -1.0, 0.25, 1.0, -0.75, -0.25, -0.5, ]);
    
    const array3 = new Float32Array([-0.5, 0.25, -0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, -0.25, 0.75, 1.0, 0.25, -0.5, 1.0, 0.5, -1.0, 0.5, -1.0, -0.5, -1.0, -0.25, -1.0, 0.25, 0.5, 0.25, -0.25, 0.5, 0.25, 0.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.0, 0.0, -1.0, 0.5, -0.75, -0.75, 1.0, 1.0, 0.0, 0.75, -1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 0.5, 0.5, -1.0, -0.75, -0.25, 0.75, -0.25, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -0.25, 0.25, 0.0, 0.25, -0.25, -0.25, -0.5, 1.0, 1.0, 0.5, 0.75, 0.75, -0.75, 0.25, -1.0, 0.75, -0.75, 0.25, 0.25, -0.25, 0.5, 1.0, 0.75, 0.5, -0.25, -1.0, -1.0, -0.25, ]);
    
    const array4 = new Float32Array([-0.75, 0.25, -0.75, -0.25, 0.5, 0.25, -0.75, -0.5, -1.0, 0.75, -0.25, -0.5, 0.25, 0.75, 0.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.5, 0.5, 1.0, 0.75, 1.0, 0.0, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, 0.75, 0.5, -0.25, -1.0, -0.75, -0.5, 1.0, 0.25, -1.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.5, 0.5, 0.75, 0.0, 0.75, 1.0, 0.0, -0.75, 1.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.75, -0.75, -0.25, 1.0, -0.5, -0.25, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, -0.5, 0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.25, -0.25, -0.25, -0.75, 0.0, -0.25, 0.75, 0.5, 1.0, -1.0, 0.25, 0.0, 0.0, 0.0, 0.75, -0.25, -0.25, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    const array5 = new Float32Array([0.0, 0.5, -0.75, -0.5, -0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 0.75, -0.5, -0.5, -0.5, -0.5, 1.0, 0.5, 0.0, 0.0, -0.5, 1.0, 1.0, -0.25, -0.75, 1.0, 0.5, 0.5, 0.75, -1.0, 1.0, 0.75, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.25, -0.25, 0.75, 0.25, 0.25, -0.75, -0.5, -1.0, -0.25, 0.25, -0.5, 0.5, 1.0, -0.5, -0.75, -0.25, 0.0, -1.0, 1.0, 0.25, -0.25, 0.75, -0.25, -0.5, -0.75, -0.25, 0.75, -0.5, 0.75, 0.25, 0.75, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, 0.75, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, 0.0, 0.5, -0.25, 0.25, -0.25, 0.25, -0.5, 1.0, 0.0, 1.0, 0.0, 0.0, ]);
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array6 = new Float32Array([1.0, -0.75, -0.25, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, 0.25, -0.25, -0.25, 0.5, -0.25, -0.5, 0.25, -0.75, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, 0.25, -0.5, -1.0, 0.0, 0.75, 0.25, -0.25, 1.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.25, -0.25, 0.5, 0.25, 0.0, 0.0, -1.0, 1.0, -0.5, 0.25, 0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.25, 0.25, -0.5, 0.75, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 1.0, -1.0, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.25, -1.0, -0.75, -0.5, 0.25, -1.0, 0.25, 0.25, -0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.0, 0.25, -1.0, 0.75, -0.25, ]);
    
    
    
    const array7 = new Float32Array([-0.75, -1.0, -0.75, 0.0, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.75, -0.75, -1.0, 0.25, -0.75, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, 0.75, 1.0, -1.0, -1.0, -0.75, 0.0, -0.5, -0.75, -1.0, -0.75, 0.25, -0.75, -1.0, -0.25, 0.5, -0.25, 0.5, -0.25, 1.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.5, 0.75, -1.0, -0.75, -0.25, -0.5, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 1.0, 0.0, -1.0, -0.25, -1.0, -0.5, 1.0, 0.75, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, -0.75, -0.75, 0.75, 1.0, 0.0, -1.0, 0.0, -0.75, 0.75, -0.25, -0.75, -0.5, 0.5, 0.25, 0.25, 0.75, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("validation");
    const array8 = new Float32Array([-0.75, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, 0.75, -0.75, 0.0, 0.0, 0.25, -0.25, 0.0, -0.5, -1.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.5, 0.5, 0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 0.0, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.0, -0.5, -0.75, 0.5, -0.5, -1.0, -0.75, -1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.0, 0.5, -1.0, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, 0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.5, 0.0, 0.0, -1.0, -0.25, -0.75, -1.0, 0.25, 0.75, 0.0, 0.25, 0.75, 1.0, -1.0, 0.25, 0.5, 0.25, -0.5, 0.75, -0.25, ]);
    device50.pushErrorScope("validation");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    
    
    command_encoder500.insertDebugMarker("mymarker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
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
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    const command_buffer401 = command_encoder401.finish();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.75, -1.0, -0.75, -0.5, 0.0, -1.0, 0.75, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, -0.25, 0.25, -0.25, 0.0, -0.25, -0.5, 0.0, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.25, -1.0, -0.5, -0.25, -0.25, 0.0, -0.75, 0.0, -0.5, 0.5, -0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.25, 1.0, 0.25, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -1.0, -0.75, 0.0, 1.0, 0.25, -0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.25, -0.25, -1.0, 0.75, 1.0, -0.75, 1.0, 0.75, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 0.25, 0.75, 0.75, 1.0, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, 0.5, ]);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    device40.pushErrorScope("out-of-memory");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    texture500.destroy();
    const command_buffer502 = command_encoder502.finish();
    
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    query500.destroy()
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    compute_pass_encoder5010.insertDebugMarker("marker")
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    
    
    command_encoder503.insertDebugMarker("mymarker");
    
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    buffer400.destroy()
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
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
    
    query600.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    buffer500.destroy()
    render_bundle_encoder501.popDebugGroup();
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    
    render_bundle_encoder701.insertDebugMarker("marker");
    buffer503.destroy()
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder502.setPipeline(render_pipeline500);
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
    buffer502.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    compute_pass_encoder5030.insertDebugMarker("marker")
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder5030.popDebugGroup()
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device50.pushErrorScope("internal");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
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
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    
    compute_pass_encoder4020.setPipeline(compute_pipeline401);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer401.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    buffer600.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
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
    
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    query501.destroy()
    compute_pass_encoder5000.popDebugGroup()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    buffer505.destroy()
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    buffer501.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
    query400.destroy()
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    compute_pass_encoder4020.insertDebugMarker("marker")
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer504.destroy()
    query700.destroy()
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    texture502.destroy();
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    query701.destroy()
    query400.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const array10 = new Float32Array([-0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 1.0, 0.0, 1.0, 1.0, -0.75, -0.75, -1.0, 0.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.25, 0.25, 0.75, -0.25, 0.0, -0.25, -0.25, -1.0, 0.25, 0.75, -0.75, -0.25, 0.0, 0.25, -1.0, 1.0, -1.0, 0.75, 0.25, -0.5, 0.25, -1.0, -0.25, -0.5, 1.0, -1.0, -0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, 0.75, 1.0, -0.25, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.25, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, 1.0, -0.75, -0.25, 0.5, -1.0, -0.75, 0.25, -0.5, -1.0, -0.75, 0.0, -0.5, 0.25, -0.5, -0.75, 0.75, 1.0, -0.25, -0.75, -0.75, -0.75, 0.75, 0.75, -0.5, -1.0, 0.5, ]);
    render_bundle_encoder500.popDebugGroup();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    texture600.destroy();
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    query701.destroy()
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout404]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    query501.destroy()
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4020.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder702.insertDebugMarker("marker");
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
    render_bundle_encoder702.insertDebugMarker("marker");
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    command_encoder601.pushDebugGroup("mygroupmarker")
    device50.pushErrorScope("internal");
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    device70.destroy();
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query501.destroy()
    compute_pass_encoder4000.popDebugGroup()
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_bundle_encoder400.popDebugGroup();
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    command_encoder601.popDebugGroup()
    query400.destroy()
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.popDebugGroup();
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer502, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    query500.destroy()
    
    command_encoder800.insertDebugMarker("mymarker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    texture601.destroy();
    texture501.destroy();
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("out-of-memory");
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout404]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout407,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
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
    compute_pass_encoder5010.popDebugGroup()
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
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
    buffer800.destroy()
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder5030.setPipeline(compute_pipeline501);
    
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4000.end();
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
        layout: compute_pipeline501.getBindGroupLayout(0),
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

    compute_pass_encoder5030.setBindGroup(0, bind_group503);
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder5010.setPipeline(compute_pipeline500);
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group401);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4020.dispatchWorkgroups(100);
    compute_pass_encoder4020.popDebugGroup()
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group504);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5030.popDebugGroup()
    compute_pass_encoder4020.end();
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group505);
    const uint32_5030 = new Uint32Array(3);

    uint32_5030[0] = 100;
    uint32_5030[1] = 1;
    uint32_5030[2] = 1;

    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5015, 0, uint32_5030, 0, uint32_5030.length);

    compute_pass_encoder5030.dispatchWorkgroupsIndirect(buffer5015, 0);
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5016, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer5016, 0);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    compute_pass_encoder5030.end();
    const command_buffer503 = command_encoder503.finish();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder5010.end();
    device40.queue.submit([command_buffer400, ]);
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    command_encoder501.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    const command_buffer501 = command_encoder501.finish();
    device50.queue.submit([command_buffer501, command_buffer503, ]);
}