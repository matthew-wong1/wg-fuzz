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
    const array0 = new Float32Array([-0.75, 1.0, -0.5, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 1.0, 1.0, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -0.75, 1.0, 0.5, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.0, -1.0, -1.0, -1.0, 1.0, 0.5, 0.75, 0.5, 0.5, 0.25, -0.25, 0.5, -0.75, 0.0, -0.5, -0.75, 1.0, 0.25, -0.5, 0.25, -0.25, 0.0, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, -0.25, -0.25, 0.75, 0.0, 0.5, -0.75, -0.75, -0.75, -0.5, -0.5, -0.25, 0.25, -0.5, -1.0, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, 0.5, -0.5, 0.75, -0.25, 0.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 0.25, 0.25, -0.25, 1.0, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, ]);
    const array1 = new Float32Array([-0.25, -1.0, 0.5, 1.0, 0.25, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 0.0, -0.25, -0.75, -0.75, 1.0, 0.0, -0.25, 0.5, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, -1.0, 0.25, -0.25, -0.5, -1.0, -1.0, -1.0, -0.25, -0.25, -0.75, -0.25, 0.5, -0.5, -0.75, -0.25, 0.0, -0.25, 0.0, 0.0, -0.5, -0.5, 0.0, 0.5, -0.5, 0.5, -1.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.0, 1.0, -0.75, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, -0.25, -0.25, -0.5, -1.0, 0.5, -0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.0, 0.0, -0.5, -0.5, -0.75, ]);
    const array2 = new Float32Array([-0.25, -0.5, -0.5, 0.0, 1.0, 0.75, 1.0, 0.25, -0.5, 1.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.25, 0.75, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, 0.5, -0.25, 0.25, 1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, -0.25, -0.75, -0.75, 1.0, 0.0, -0.25, -0.25, 0.75, -0.5, 0.5, -1.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.5, -1.0, -0.25, 1.0, -0.25, 1.0, 0.0, 0.0, 0.25, -0.75, 0.5, 0.25, 0.75, -0.25, 0.75, -0.5, -1.0, -0.5, -0.75, 0.25, -1.0, -0.5, -0.5, 0.25, -1.0, 0.25, 0.5, -0.5, 0.75, -0.25, -1.0, 0.0, 0.5, -0.75, 0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 0.5, 0.5, -0.5, 0.5, 0.75, 0.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array3 = new Float32Array([0.75, 0.5, 0.25, 0.25, -0.25, 0.75, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, -0.25, -0.25, -0.5, -0.25, -0.25, 0.25, 0.25, 1.0, 1.0, 0.5, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 0.75, 0.75, -0.25, -0.5, 1.0, 0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 1.0, 0.5, -1.0, -1.0, 0.25, 0.25, -0.75, 0.75, -1.0, -0.75, -0.25, -1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 0.5, 0.75, -1.0, 0.75, -0.75, -1.0, 0.0, -0.25, 0.25, 0.25, 1.0, 0.0, -0.75, -1.0, 0.0, 1.0, -0.25, 0.25, -1.0, 0.0, -0.5, 0.25, -0.5, 0.0, -0.5, -0.75, 0.75, -0.25, -1.0, -1.0, -1.0, 0.0, 1.0, ]);
    const array4 = new Float32Array([0.0, 0.25, -0.5, 0.0, -0.25, -0.75, -1.0, 0.5, 1.0, 0.0, 0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, 1.0, -0.5, -0.5, -1.0, 0.0, -0.75, 1.0, 1.0, 0.5, -0.75, -0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, 0.0, -0.25, 0.5, -1.0, -0.75, 1.0, -1.0, 0.75, -1.0, 0.75, 0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, 0.75, -0.5, 1.0, -1.0, -0.25, 0.0, 0.75, -0.5, -1.0, -1.0, 0.5, 0.75, -0.25, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, -0.25, -0.75, -0.5, 0.75, -1.0, 0.5, 0.5, 0.0, -0.5, -0.25, -0.75, 0.25, -1.0, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const array5 = new Float32Array([-0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.25, -0.5, 1.0, -0.75, -0.75, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 1.0, 0.25, -0.25, 0.5, 0.25, 1.0, 1.0, 0.75, 0.5, -0.25, 1.0, -1.0, 0.5, 0.0, 1.0, 0.75, 0.25, 0.0, -0.75, 0.5, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.0, 1.0, 0.0, 0.75, 0.0, 1.0, -1.0, 0.25, 0.25, -0.25, 0.0, -0.5, -0.5, -0.25, 0.5, 0.0, 1.0, -1.0, -1.0, -0.75, 0.5, -0.5, 0.75, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, -0.5, 0.5, 0.75, -0.5, 0.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.25, 0.25, -1.0, -0.25, -1.0, 1.0, -0.75, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    
    
    
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([1.0, 0.25, -0.5, 0.0, 0.25, 0.0, -0.5, -0.75, -1.0, -1.0, -0.25, 0.25, 0.25, 0.25, 0.75, 0.25, -0.75, -0.25, -1.0, 0.75, -0.25, 0.5, 0.75, -1.0, -0.25, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -0.25, -0.5, 1.0, -0.5, 0.75, -0.75, -0.5, 1.0, 1.0, -0.25, -0.75, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, -0.75, 0.5, -0.5, 0.5, -1.0, -0.5, 0.25, -0.75, 0.75, 0.75, 0.25, 1.0, -0.5, -0.75, 0.0, 0.0, -0.25, -0.25, -0.75, -0.25, 0.0, -0.5, -1.0, 0.0, -0.5, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query200.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    query200.destroy()
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    
    command_encoder200.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    command_encoder200.popDebugGroup()
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    const command_buffer200 = command_encoder200.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder201.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.75, 0.75, 0.5, -1.0, 0.75, 0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 0.5, 0.0, -1.0, -1.0, -1.0, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, -1.0, 0.75, -0.25, -1.0, 0.75, -0.75, 0.5, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.75, -1.0, 0.5, 0.0, 0.0, -0.25, 0.25, 0.0, -0.75, 0.5, 0.75, -0.75, 1.0, 0.75, -0.25, 0.75, 0.5, 0.0, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 1.0, 0.25, 0.5, -0.25, -0.5, -0.25, 1.0, 0.75, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, 0.75, -0.5, -1.0, -1.0, -1.0, -0.75, -0.75, -0.75, -0.75, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.25, 0.5, -0.5, 1.0, 0.5, -0.75, 0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    command_encoder202.insertDebugMarker("mymarker");
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const command_buffer201 = command_encoder201.finish();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device50.destroy();
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    query201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    query202.destroy()
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    
    texture201.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    device20.pushErrorScope("validation");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer204, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer204, 0);
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    buffer202.destroy()
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    device70.pushErrorScope("out-of-memory");
    query203.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.end();
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer201.destroy()
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    query201.destroy()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query206.destroy()
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    command_encoder700.pushDebugGroup("mygroupmarker")
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout209,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
        occlusionQuerySet: undefined
    });
    command_encoder700.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.setPipeline(render_pipeline208);
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
        layout: render_pipeline208.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query205.destroy()
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout208,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    texture200.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query205.destroy()
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout205,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    
    
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const command_buffer600 = command_encoder600.finish();
    
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
    const array8 = new Float32Array([0.5, 0.25, -1.0, -0.5, -0.25, 0.0, -0.25, 1.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.25, -0.25, 0.0, -0.25, -1.0, -0.5, 0.5, -1.0, -0.75, -1.0, 0.0, 0.0, 1.0, -0.25, -1.0, -0.5, 0.0, 1.0, 0.0, 0.75, -0.25, -0.75, -0.25, 1.0, 0.25, -1.0, -0.75, -0.5, 0.25, 0.25, -0.75, -0.25, 0.75, -0.5, 1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -1.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, -0.25, -1.0, -0.75, -0.75, 0.75, 0.75, 0.25, -0.25, 0.25, -0.5, -1.0, 0.5, 0.75, -0.5, -0.75, 1.0, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, 0.25, 0.0, -0.25, -0.25, ]);
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    query701.destroy()
    const array9 = new Float32Array([0.5, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, -0.5, 0.5, 0.0, 0.0, 0.0, 0.0, -0.25, 0.5, 0.5, 1.0, 0.75, 0.25, -0.75, 1.0, -0.5, -0.25, -1.0, -1.0, -0.5, 1.0, 0.0, -0.75, 1.0, -0.5, 0.75, 0.0, -1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 1.0, -0.25, 1.0, 0.25, -0.5, -1.0, -1.0, 0.5, -0.5, 0.0, -0.25, -0.5, 0.5, -0.25, -0.75, 1.0, 0.75, 0.25, 0.25, -0.25, 1.0, -1.0, -0.25, 1.0, -0.25, -0.75, 0.75, -1.0, 0.0, 0.75, -0.75, -1.0, -0.75, 0.0, 0.75, -0.25, -0.25, 0.75, 1.0, 0.0, 0.75, 0.5, 1.0, -1.0, 0.25, -1.0, 0.0, 0.0, -0.5, 0.75, 0.75, -1.0, 0.75, 0.25, -0.75, -0.25, -1.0, -0.5, -0.5, -0.25, 0.75, ]);
    buffer206.destroy()
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    {
        await buffer207.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer207.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer207.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout201,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    buffer200.destroy()
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.setStencilReference(1);
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    query205.destroy()
    
    
    compute_pass_encoder7000.popDebugGroup()
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    query202.destroy()
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder601.popDebugGroup();
    device60.queue.submit([command_buffer600, ]);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const array10 = new Float32Array([0.0, -1.0, -0.75, -0.25, 0.0, -0.75, -1.0, 0.25, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.0, 0.5, -1.0, -0.75, 1.0, -0.75, 0.75, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, -1.0, 0.75, 1.0, 0.0, 0.5, 0.5, -0.25, -0.5, 1.0, 0.25, -0.25, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, 1.0, -0.75, 1.0, 0.0, -0.5, 0.25, -0.5, -1.0, -0.25, -0.25, -0.25, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, -0.5, 0.5, -0.5, -0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -1.0, 0.0, -0.5, 0.0, 0.5, -0.25, 0.25, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, ]);
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout206,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query700.destroy()
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout205,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout203,
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    
    
    
    device20.queue.writeBuffer(buffer204, 0, array8, 0, array8.length);
    render_pass_encoder2020.setStencilReference(1);
    
    device90.destroy();
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    buffer207.destroy()
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    
    
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    buffer204.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query201.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    render_pass_encoder2020.setStencilReference(1);
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout202,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module2010,
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
            module: shader_module2010,
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
    
    
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    const pipeline_layout2016 = device20.createPipelineLayout({ 
        label: "pipeline_layout2016",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder600.setPipeline(render_pipeline601);
    query205.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.setPipeline(render_pipeline601);
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.setPipeline(render_pipeline701);
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
        layout: render_pipeline701.getBindGroupLayout(0),
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

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    const pipeline_layout2017 = device20.createPipelineLayout({ 
        label: "pipeline_layout2017",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module2012,
            entryPoint: "main"
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
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
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("internal");
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    render_pass_encoder2020.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
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
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer604, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer604, 0);
    compute_pass_encoder6010.end();
    const command_buffer601 = command_encoder601.finish();
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    device20.queue.submit([command_buffer201, ]);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    render_pass_encoder2020.end();
    command_encoder202.popDebugGroup()
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer707, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer707, 0);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder7000.end();
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group702);
    device60.queue.submit([command_buffer601, ]);
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7010, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer7010, 0);
    command_encoder700.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder7010.end();
    device70.queue.submit([command_buffer700, ]);
    const command_buffer701 = command_encoder701.finish();
    device70.queue.submit([command_buffer701, ]);
}