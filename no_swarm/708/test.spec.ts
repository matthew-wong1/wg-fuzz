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
    
    
    const array0 = new Float32Array([0.5, -0.25, 1.0, 0.0, 0.75, -0.75, 0.5, -0.25, -0.75, -0.5, -0.75, 0.25, -0.25, 0.75, 0.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, -0.25, -0.25, 0.5, 0.75, -0.25, -0.25, 0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, 0.25, -1.0, -0.5, -0.75, 1.0, 0.5, -0.5, -0.5, 1.0, 0.25, -0.5, -0.25, 0.25, 0.0, 0.0, 0.0, -0.5, 0.75, -0.5, 0.25, 0.5, 0.75, 0.5, -0.75, 0.75, 0.0, 0.5, 0.75, -0.5, -1.0, 1.0, 0.5, -0.5, 0.25, -1.0, 0.5, -0.75, -1.0, -0.25, -1.0, -0.5, 1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, ]);
    
    const array1 = new Float32Array([0.5, 0.25, 0.75, 1.0, -0.75, -0.25, 0.5, 0.5, 0.25, 0.75, -1.0, -0.25, 0.75, 0.75, -0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 0.25, 0.0, 0.5, 0.25, 0.75, -0.75, -0.25, 0.0, 1.0, -0.25, -1.0, 1.0, 0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, 0.5, 0.25, -0.25, -0.25, -0.25, -0.25, 0.25, -1.0, 0.5, 0.25, -1.0, -1.0, 1.0, -0.5, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.75, 0.25, 0.75, 1.0, -0.75, -0.5, 0.0, -0.5, 1.0, -0.75, 0.0, 1.0, 0.0, 1.0, -0.25, 0.25, 1.0, 0.5, -0.5, -1.0, 0.75, 0.0, ]);
    const array2 = new Float32Array([0.75, -0.75, 0.25, -0.5, -0.5, -0.75, -0.75, 0.25, 0.0, 0.0, -0.25, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 0.25, -0.5, -1.0, 0.25, 0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 0.75, -0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.75, 0.75, 0.5, -0.75, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -0.75, 1.0, -0.25, -0.75, -1.0, 0.25, 0.25, -0.75, -0.75, 1.0, 1.0, -1.0, 0.5, 0.25, -0.25, -0.75, -0.75, 0.75, -0.25, 0.25, -0.75, -0.75, -1.0, 0.5, 0.5, -1.0, 0.0, 1.0, 0.75, -1.0, 0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 1.0, -0.75, -0.75, -1.0, -1.0, 0.0, -0.25, 0.25, ]);
    
    const array3 = new Float32Array([-1.0, 1.0, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 1.0, -0.75, 0.25, -0.5, -0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, 1.0, -0.5, -1.0, 0.25, 0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 0.75, -0.75, -0.75, -0.25, 0.75, -0.75, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, 0.75, -1.0, -1.0, -0.25, -1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.0, 0.5, -0.75, 1.0, -0.75, -1.0, 0.0, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, -0.5, -0.75, 0.0, 1.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.75, 1.0, -0.25, -1.0, 0.75, -0.75, 0.25, -0.75, -1.0, 0.25, 0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.0, 1.0, 1.0, -0.5, 0.0, -0.75, 0.0, 1.0, -1.0, 0.25, 0.25, 0.25, 0.5, 1.0, -0.25, 1.0, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.25, -0.75, 0.25, -0.25, -0.5, 1.0, 0.5, 0.25, 0.5, 0.75, 1.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 0.5, 0.75, -0.75, 1.0, 0.5, 1.0, -0.75, -0.25, 0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.5, -1.0, -0.5, -0.75, -0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, 1.0, -0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, -0.5, 0.25, 1.0, -0.25, -1.0, 0.75, 0.5, ]);
    
    
    const array5 = new Float32Array([-1.0, 0.75, 0.5, -1.0, 0.0, -0.5, 1.0, 1.0, 0.0, 0.25, 0.25, 0.25, 0.75, 0.75, -0.75, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, 0.75, 0.5, 0.25, 0.5, 0.5, 1.0, 0.0, 0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, 1.0, -0.75, -0.5, 0.0, 0.5, 0.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.25, 1.0, 1.0, 0.25, -0.5, -0.75, 1.0, 0.5, -1.0, -0.25, 1.0, -0.25, -1.0, 0.5, -0.75, 0.0, -0.25, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.75, -1.0, 0.75, -1.0, -1.0, 1.0, 0.0, -0.75, -0.75, -0.5, -0.75, 0.0, 0.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    
    const array6 = new Float32Array([-1.0, 0.5, -0.75, -1.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.75, 0.5, -0.75, 1.0, 0.5, 0.75, 0.5, -0.5, 0.25, 0.75, 0.0, 0.75, 1.0, 1.0, 0.5, 0.0, -0.75, -1.0, -1.0, -0.75, 0.5, 0.25, -0.75, -0.75, -1.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, 0.5, 1.0, 0.25, -0.5, 0.25, 0.0, 0.25, 0.75, -0.25, 0.0, -0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -0.5, 0.25, -0.5, -0.25, -1.0, -1.0, 0.25, -0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, 0.75, -0.75, 1.0, 0.5, -0.5, -1.0, -0.5, 0.5, 1.0, -0.5, -1.0, 0.25, -0.75, 1.0, -0.75, 0.75, ]);
    
    
    const array7 = new Float32Array([0.25, 0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, -1.0, -0.75, 0.75, -0.75, -0.25, 0.25, 0.5, -0.25, 0.5, 0.0, -1.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.5, -0.5, 0.75, 1.0, -1.0, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, -1.0, 0.0, -0.25, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, 0.0, 0.25, 0.5, -0.75, 0.5, -0.25, -0.5, -0.75, -0.5, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 0.5, 0.25, 1.0, -0.75, -0.5, 1.0, 0.5, 0.25, 0.5, -0.5, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
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
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 1.0, 1.0, -0.75, -0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, -0.5, -1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.0, 0.0, -0.25, -0.75, -0.5, 0.25, 0.75, 0.5, 0.75, 1.0, -0.5, 0.5, -0.75, 0.75, -0.5, -0.25, -0.75, 0.75, -0.25, -0.5, 1.0, 1.0, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, -0.75, -1.0, 0.75, 0.75, 0.0, 0.25, -0.5, -0.75, -0.75, 0.25, -0.25, 0.75, -0.75, -0.25, 0.25, -0.5, -0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.5, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 0.0, -0.75, 1.0, -0.75, 0.25, -1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.25, 0.75, 0.25, -1.0, 1.0, 0.75, -1.0, ]);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer101.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture300.destroy();
    
    const array9 = new Float32Array([0.75, -0.75, 0.25, -0.5, 0.5, 0.5, 0.25, 0.5, -1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.25, 1.0, 0.25, 0.25, -0.75, 0.25, -1.0, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, 0.75, -0.5, 1.0, -0.25, 0.25, -0.25, -0.5, -1.0, -1.0, 0.75, 0.0, 1.0, -0.5, -0.5, -0.5, -0.75, 0.0, 0.25, 0.25, -0.25, -0.5, -1.0, 0.0, 0.25, -1.0, 0.75, -1.0, 0.75, 0.0, -1.0, 1.0, -0.5, 0.25, 0.0, 1.0, 0.5, -0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.25, 0.0, 0.75, -0.5, -0.25, -0.5, 0.75, -0.25, 0.25, -0.25, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, 0.5, 1.0, -0.75, 0.5, 0.5, 0.0, -0.25, 1.0, -0.5, -0.5, 0.75, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.pushErrorScope("validation");
    
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer300.destroy()
    query101.destroy()
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
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.pushErrorScope("internal");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device30.pushErrorScope("out-of-memory");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    buffer102.destroy()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query101.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-0.25, 0.25, -0.75, 0.5, -0.5, 0.0, 0.75, -1.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.0, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -1.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, -1.0, 0.5, 0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 1.0, 0.5, -1.0, -0.5, -0.25, 0.25, -1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 0.25, -1.0, -0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, 0.5, -0.25, 0.25, -1.0, -0.5, -0.75, -1.0, 1.0, 0.25, -0.75, -0.25, -0.5, 0.25, -0.25, -1.0, 0.75, -0.5, -0.75, 0.0, -0.5, 0.75, -1.0, -1.0, 0.75, 0.0, 0.25, 1.0, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1010.setPipeline(compute_pipeline1010);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device40.destroy();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query101.destroy()
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer104.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder300.insertDebugMarker("mymarker");
    const array11 = new Float32Array([0.0, -0.25, -0.75, -0.25, 0.5, -0.5, 1.0, -0.5, -0.5, 1.0, -0.25, -0.75, -0.75, -0.25, -1.0, 0.5, -1.0, -1.0, 0.5, 0.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.25, 0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -0.75, 0.75, 1.0, 0.75, -0.5, -0.75, 1.0, 0.25, 1.0, -0.75, -0.5, -1.0, 0.5, 0.0, 0.0, 0.75, -1.0, 1.0, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, -0.75, 0.75, -0.75, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.75, 0.75, -0.5, 1.0, 1.0, 1.0, -1.0, 0.25, 0.0, 0.75, 0.25, -0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.5, 0.25, -0.75, -0.5, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.5, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder300.popDebugGroup()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    buffer103.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer107.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    query102.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture302.destroy();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout105]
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.destroy();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    device10.queue.writeBuffer(buffer108, 0, array4, 0, array4.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.popDebugGroup();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    query102.destroy()
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer109, 0, array9, 0, array9.length);
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
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
    
    device50.destroy();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer109, 0, array7, 0, array7.length);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer303.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    texture101.destroy();
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer109, 0, array11, 0, array11.length);
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    compute_pass_encoder1000.end();
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout108,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device60.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout1013,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query101
    });
    texture301.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.popDebugGroup()
    device10.queue.writeBuffer(buffer109, 0, array0, 0, array0.length);
    
    buffer1013.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer304.destroy()
    
    buffer301.destroy()
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_buffer103 = command_encoder103.finish();
    texture102.destroy();
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
    render_pass_encoder1000.setPipeline(render_pipeline101);
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1062 = device10.createComputePipeline({
        label: "compute_pipeline1062",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group104);
    const compute_pipeline1063 = device10.createComputePipeline({
        label: "compute_pipeline1063",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1064 = device10.createComputePipeline({
        label: "compute_pipeline1064",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1065 = device10.createComputePipeline({
        label: "compute_pipeline1065",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1066 = device10.createComputePipeline({
        label: "compute_pipeline1066",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1067 = device10.createComputePipeline({
        label: "compute_pipeline1067",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline1068 = device10.createComputePipeline({
        label: "compute_pipeline1068",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1069 = device10.createComputePipeline({
        label: "compute_pipeline1069",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1070 = device10.createComputePipeline({
        label: "compute_pipeline1070",
        layout: pipeline_layout109,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline1071 = device10.createComputePipeline({
        label: "compute_pipeline1071",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.popDebugGroup();
    buffer1017.destroy()
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const compute_pipeline1072 = device10.createComputePipeline({
        label: "compute_pipeline1072",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1073 = device10.createComputePipeline({
        label: "compute_pipeline1073",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer1018, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1018, 0, array6, 0, array6.length);
    const compute_pipeline1074 = device10.createComputePipeline({
        label: "compute_pipeline1074",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1075 = device10.createComputePipeline({
        label: "compute_pipeline1075",
        layout: pipeline_layout105,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer109, 0, array2, 0, array2.length);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer1017);
    render_pass_encoder1000.draw(3);
    compute_pass_encoder1010.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1000.end();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder3000.end();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group105);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1020.setVertexBuffer(0, buffer1017);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
}