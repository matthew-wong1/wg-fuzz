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
    const array0 = new Float32Array([-0.5, 0.0, 1.0, -0.5, 0.25, 1.0, 0.25, 0.75, -0.75, 1.0, -0.25, 0.5, -0.75, -0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.5, -0.5, -0.5, 0.25, 0.0, 0.75, 0.25, -0.25, 0.75, 1.0, 0.75, -0.75, -0.5, 0.75, -0.25, 0.25, 0.75, 0.0, -1.0, 0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 1.0, -0.75, 0.5, 0.25, 0.0, 1.0, -0.5, -0.5, 0.5, -1.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.0, 0.75, 0.0, -0.25, -0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 1.0, -0.25, 0.5, -0.5, 0.0, -0.5, 1.0, -0.5, 0.0, 0.75, -0.25, -1.0, -0.25, 0.25, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, -0.5, 0.0, 1.0, -0.5, 0.75, -0.5, 0.75, 0.5, 1.0, ]);
    const array1 = new Float32Array([1.0, 0.25, -1.0, 0.0, 0.75, 0.75, 0.25, 1.0, 0.75, 1.0, -0.75, 0.5, 0.0, 0.5, 0.5, 0.0, 0.75, 0.75, -0.75, -0.25, -0.5, 0.5, 0.5, -1.0, 0.75, 0.5, 0.75, 1.0, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, -0.75, 0.0, 1.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.0, 0.5, -0.25, 0.25, -0.25, -1.0, -0.5, -0.5, 0.5, 0.75, -0.75, -0.75, 1.0, 0.5, -0.75, -0.5, 1.0, 0.25, 0.5, 0.25, -0.75, 0.75, -0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 1.0, -1.0, -0.5, 0.25, 1.0, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, 0.5, 0.75, -0.75, 0.5, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.75, 0.75, ]);
    
    const array2 = new Float32Array([0.5, -0.5, -0.75, 1.0, -1.0, -0.25, -1.0, 0.5, 0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, -1.0, 0.75, 0.75, 1.0, 1.0, 0.0, -0.25, 0.5, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, 0.0, 1.0, -1.0, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -1.0, 0.0, -0.75, 0.75, -0.5, 0.5, 0.75, 1.0, 0.75, -1.0, 0.0, 0.25, 0.25, 0.5, 0.75, 0.0, 0.5, 0.5, 0.0, 0.5, 0.0, 0.25, 0.75, 1.0, -0.5, 1.0, -1.0, 1.0, -1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 1.0, -0.5, -0.5, 1.0, -1.0, -0.25, 0.75, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.75, 0.5, -0.5, -1.0, 0.0, -0.5, -0.5, -0.25, 0.5, 0.5, -0.25, 0.5, 0.25, -0.5, 0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.0, 0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 0.0, 0.5, 0.25, -0.5, 0.0, -0.75, -0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.75, 1.0, -0.25, -0.25, 0.75, -1.0, 1.0, 0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -0.25, 0.25, -0.75, 0.0, -0.25, -1.0, -0.75, 0.5, 0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 0.5, -0.5, -0.5, -1.0, 0.75, 0.25, 0.75, 0.0, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 0.5, 0.75, 0.5, ]);
    const array4 = new Float32Array([-0.5, -0.25, -0.75, 1.0, 0.0, -1.0, 1.0, 0.0, -0.75, 0.75, -1.0, 0.0, -1.0, 0.75, 0.25, -1.0, 0.5, 0.25, 0.75, 1.0, 0.0, 1.0, -0.75, -0.5, -0.75, -0.25, 1.0, 0.75, 0.25, 1.0, 0.75, 0.25, 0.25, -0.25, 0.25, -1.0, -0.75, 0.5, 0.25, 0.25, 1.0, 0.5, 0.0, 0.75, -0.25, -0.5, -0.5, 1.0, -1.0, 0.5, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -0.75, 0.75, 0.25, -0.75, -0.75, 1.0, -0.5, -0.25, -1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, -0.5, -1.0, 0.5, 1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 1.0, 0.25, 1.0, 0.25, 0.75, -0.25, 0.0, -0.25, -0.75, 0.0, -1.0, ]);
    const array5 = new Float32Array([-1.0, -0.75, -0.75, 0.0, 0.5, -1.0, -0.25, 0.0, 1.0, -1.0, -0.25, 0.75, 0.0, -0.5, -0.75, 0.75, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.0, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, 0.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.5, -0.25, -0.25, 0.75, -1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.75, -0.25, 0.25, 1.0, -1.0, 1.0, -0.25, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 1.0, -0.5, -0.25, -0.25, 0.0, 0.25, -0.5, 0.5, 0.75, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.0, 0.25, -0.75, -0.5, 1.0, 0.75, -0.5, 0.5, -0.25, -0.75, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array6 = new Float32Array([0.5, -0.25, -0.25, -1.0, 0.0, 0.5, 0.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -0.5, 1.0, 0.5, 0.0, -1.0, 0.0, 0.25, 0.75, 0.75, 0.25, 0.0, -0.5, 0.25, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, -1.0, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, 0.5, -1.0, 0.75, 0.25, 0.0, 0.25, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -0.75, 0.5, 0.0, 0.0, 0.0, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 1.0, 1.0, 0.0, 0.5, 0.25, 0.0, -0.5, 0.25, -0.5, 0.5, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, 0.75, ]);
    texture000.destroy();
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    buffer000.destroy()
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const array7 = new Float32Array([-1.0, 0.75, -0.5, 0.75, -0.25, 0.25, 1.0, -1.0, -1.0, 0.5, 1.0, 0.0, -0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -1.0, 1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 0.25, 1.0, -1.0, 0.25, 0.75, 0.0, 0.5, 0.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.0, 1.0, 0.25, -0.25, -0.75, 0.0, -0.25, 0.0, -1.0, -0.75, -0.75, -0.75, 1.0, -0.75, 0.25, 1.0, 0.25, 0.75, -0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.0, 0.25, -0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.25, -0.25, -0.75, -0.5, -1.0, 0.25, 0.75, 0.75, -0.25, -0.5, 0.5, 0.25, 1.0, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, -1.0, 0.5, -0.25, -0.5, 0.25, 1.0, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    command_encoder002.pushDebugGroup("mygroupmarker")
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    command_encoder003.clearBuffer(buffer002);
    device00.pushErrorScope("out-of-memory");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline004);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0030.setPipeline(compute_pipeline003);
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array8 = new Float32Array([-0.25, -1.0, -0.5, 1.0, -0.5, 0.25, 0.25, -1.0, 0.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.25, -0.25, -0.25, 0.5, -0.5, 0.5, -1.0, -1.0, 1.0, -1.0, 0.25, -1.0, 0.5, 0.5, 0.0, 0.0, -0.5, 0.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, -0.5, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.5, -0.75, 0.75, -0.5, 0.0, 0.5, 1.0, 1.0, -0.25, -1.0, 0.5, -0.25, 1.0, -1.0, 0.75, 1.0, -0.5, 0.5, 0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 0.75, 1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.0, -0.75, -0.25, 1.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, ]);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    buffer100.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    
    compute_pass_encoder0000.popDebugGroup()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    texture001.destroy();
    query100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
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
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0020.popDebugGroup()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query000.destroy()
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    buffer005.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    query100.destroy()
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture002.destroy();
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group002);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    
    query100.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    buffer006.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.setPipeline(render_pipeline002);
    
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer009, 0);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const array9 = new Float32Array([0.25, 0.25, 1.0, 0.0, 0.5, 0.0, -0.5, 0.0, 0.75, -0.75, 0.0, 0.5, 0.75, 0.75, -0.25, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, 0.0, -0.5, -0.5, 1.0, -0.5, 0.75, 1.0, 0.25, -0.5, 0.75, 0.0, 0.0, 0.75, 1.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 0.25, 0.75, 0.25, 1.0, 0.75, -0.25, 0.0, 0.75, 0.0, -1.0, -1.0, -0.75, 0.5, 0.0, -0.5, 0.5, -0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.0, 0.75, 0.25, 1.0, -1.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.5, 1.0, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, 0.5, 1.0, -1.0, -0.75, -0.5, 0.5, 1.0, ]);
    compute_pass_encoder1000.popDebugGroup()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    query102.destroy()
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout005]
    });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    buffer103.destroy()
    
    buffer003.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    device00.pushErrorScope("validation");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0011, 0);
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    query101.destroy()
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    
    device00.queue.writeBuffer(buffer009, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer0011, 0, array9, 0, array9.length);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.popDebugGroup()
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder101.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer009, 0, array5, 0, array5.length);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    texture200.destroy();
    const array10 = new Float32Array([0.5, 0.0, 1.0, 0.5, 0.0, 1.0, -0.75, -0.5, -0.5, 0.25, -0.25, 0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.75, 1.0, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.25, 1.0, 1.0, -0.25, -0.5, -0.25, -0.75, -0.5, -0.5, 0.75, 0.0, 0.25, 0.75, 1.0, -1.0, -1.0, -0.5, 1.0, -0.5, 1.0, 0.75, -0.5, -0.75, -0.75, 1.0, -1.0, 0.75, -0.75, 0.25, 1.0, 0.0, 1.0, -0.5, -1.0, 0.0, 0.25, -0.75, 1.0, 0.75, -0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.5, -1.0, 1.0, -1.0, -0.75, 0.75, 0.25, -0.25, -1.0, 0.5, -0.75, 1.0, -0.25, -0.25, 0.5, 0.25, -1.0, 0.25, 0.25, -1.0, 0.25, -0.25, 1.0, 0.0, ]);
    device00.queue.writeBuffer(buffer009, 0, array10, 0, array10.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    query103.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.end();
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query103.destroy()
    buffer0012.destroy()
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array0, 0, array0.length);
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setPipeline(render_pipeline008);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    
    buffer007.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    query000.destroy()
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    render_pass_encoder0040.setPipeline(render_pipeline002);
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query100.destroy()
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    query102.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group003);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer0011, 0, array8, 0, array8.length);
    render_pass_encoder0040.setVertexBuffer(0, buffer0010);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    
    device00.queue.writeBuffer(buffer0011, 0, array7, 0, array7.length);
    
    buffer002.destroy()
    render_pass_encoder0040.draw(3);
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
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
    compute_pass_encoder0010.end();
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0040.end();
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    command_encoder102.pushDebugGroup("mygroupmarker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    buffer102.destroy()
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0041.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group005);
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0000.end();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group006);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    device00.queue.writeTexture({ texture: texture004 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0010,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer009);
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    buffer200.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline004);
    query200.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array10, 0, array10.length);
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    query200.destroy()
    render_pass_encoder0041.setPipeline(render_pipeline0012);
    const command_buffer300 = command_encoder300.finish();
    command_encoder103.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline0012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group007);
    command_encoder102.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0023, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    compute_pass_encoder0030.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group008);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder0041.popDebugGroup();
    const command_buffer003 = command_encoder003.finish();
    command_encoder001.popDebugGroup()
    render_pass_encoder0020.end();
    const command_buffer001 = command_encoder001.finish();
    command_encoder200.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0000.setVertexBuffer(0, buffer0010);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0041.setVertexBuffer(0, buffer0010);
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    command_encoder002.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.end();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.end();
    const command_buffer004 = command_encoder004.finish();
    const command_buffer000 = command_encoder000.finish();
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
}