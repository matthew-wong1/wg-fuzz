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
    const array0 = new Float32Array([1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 1.0, 0.75, -0.75, 1.0, 0.75, -0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -1.0, 0.75, -0.25, -0.25, -0.25, 0.5, -0.5, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, 0.75, -0.5, -0.75, 0.0, 0.25, 0.75, -1.0, 0.0, -0.5, 0.75, 0.0, 0.75, -1.0, 0.25, -0.5, 0.25, 0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 1.0, -1.0, -1.0, -0.75, -0.5, 0.0, -0.5, 1.0, 0.5, -0.25, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, 0.25, 0.75, -1.0, 1.0, -0.25, 0.25, 1.0, -0.75, 0.5, 1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.25, 1.0, 1.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.0, -0.5, -0.5, 0.5, -0.5, 0.5, 1.0, ]);
    const array1 = new Float32Array([1.0, -0.75, -0.5, 1.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.75, -1.0, -0.75, -0.25, -1.0, -0.75, -0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 0.75, -0.25, 0.75, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -1.0, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, -1.0, -0.5, -0.75, 0.75, -0.75, -0.5, -0.75, -0.5, 0.0, -0.75, -0.75, 0.0, 0.0, 0.5, 1.0, 0.25, 0.0, 1.0, -0.75, 1.0, -0.25, -0.5, 0.75, 0.25, -0.75, 0.25, -1.0, 0.5, -1.0, 0.0, 1.0, 0.0, -0.75, -0.5, 0.5, -0.5, -0.5, -1.0, -0.75, -1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.25, -0.75, 0.0, 0.75, -0.25, 0.75, -0.25, 0.0, -0.25, 0.0, 0.0, ]);
    const array2 = new Float32Array([0.75, 1.0, -0.5, 1.0, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, -0.5, 0.25, 0.5, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, -0.75, 0.25, 0.5, 0.25, 0.75, 0.5, -0.5, -1.0, 0.0, 0.25, 0.0, -1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.75, 0.75, -0.75, 0.75, -0.5, 1.0, 0.75, -0.75, -0.25, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 0.0, 0.75, -0.25, 0.75, -1.0, -0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.25, 0.5, 0.5, 1.0, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, 0.0, -1.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.5, 1.0, -0.75, -0.5, -0.75, 0.5, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array3 = new Float32Array([0.0, 0.75, -1.0, -0.5, -0.5, 0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 1.0, 0.75, -0.5, -0.5, -0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, 0.75, -0.5, -0.5, 0.75, 1.0, -0.75, -0.25, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.25, -0.25, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 0.25, 0.75, 0.5, -1.0, 0.25, -0.75, 0.75, 0.75, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, -1.0, -1.0, 0.0, 0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.0, 0.75, -0.5, 0.75, 0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 0.75, 0.5, -0.5, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    device20.destroy();
    
    
    
    const array4 = new Float32Array([-0.25, -0.5, -0.25, -0.25, -0.5, -0.75, -1.0, -0.25, 0.75, -0.75, 0.25, -1.0, 0.75, 0.5, 0.0, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, -1.0, 0.5, -0.5, 0.75, -0.75, 0.0, -0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, 0.0, -0.5, -0.75, -0.5, 0.5, -1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.25, 0.75, 0.0, -1.0, -1.0, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, -0.75, 1.0, 0.75, -0.25, -0.5, 0.75, 0.25, 0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array5 = new Float32Array([1.0, 0.0, -0.5, 1.0, -0.25, -0.5, -1.0, -0.25, 0.25, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, 0.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.0, 0.25, 0.0, 1.0, -1.0, 0.75, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.0, 0.75, -0.25, 0.0, -0.25, 1.0, 0.5, -1.0, 0.25, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -1.0, 0.75, 0.5, 0.0, 0.25, 0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.5, -1.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 0.75, -0.25, 0.75, 1.0, 0.5, 0.0, -0.75, 0.25, 0.25, -1.0, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device10.pushErrorScope("out-of-memory");
    const array6 = new Float32Array([-0.25, 0.5, 1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.5, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.0, -0.5, -0.75, -0.25, 0.75, -0.5, 0.0, -0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, -0.5, 0.75, -0.25, -0.25, 0.0, -1.0, -0.25, 0.0, -0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, 1.0, -0.5, 1.0, -0.25, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, 0.5, -0.5, 0.75, 0.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, -0.5, 0.25, 0.5, -0.25, -0.75, 0.0, -1.0, -0.5, -0.25, -1.0, 0.75, 0.25, 0.25, 0.5, 1.0, -0.75, 0.0, 0.5, ]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    query100.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.pushErrorScope("out-of-memory");
    device40.destroy();
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.pushErrorScope("validation");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    command_encoder300.insertDebugMarker("mymarker");
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture302.destroy();
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    const array7 = new Float32Array([1.0, -0.5, -0.5, 0.25, 0.75, -0.75, 0.5, 0.0, 0.25, 0.0, 0.25, 1.0, 0.25, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, -0.25, -1.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.5, -0.75, 1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 1.0, -0.5, -0.25, 0.0, 0.25, 0.75, -1.0, -1.0, 0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, -0.25, 1.0, 0.25, 0.0, -1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.0, 1.0, -1.0, 0.75, 0.25, 0.0, -0.75, 0.5, 0.75, -0.25, -0.5, -0.75, -0.5, 0.5, -0.25, 0.5, 0.5, -0.5, -0.75, -0.75, -0.5, 0.0, 0.5, 1.0, -1.0, -0.75, 0.75, 0.0, -0.25, -0.75, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, ]);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const array8 = new Float32Array([0.0, -0.25, 0.0, -1.0, 0.0, 0.75, -0.75, -0.5, 0.0, -0.75, -1.0, 1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -1.0, 0.5, -0.5, 0.5, -1.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 0.75, 1.0, -0.25, -1.0, 0.5, 0.5, -0.25, -0.5, 0.25, 0.0, 0.25, 0.0, -1.0, -0.25, -0.5, -0.5, 0.5, 0.0, 0.5, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 1.0, -0.5, -0.5, 0.75, 0.0, 0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.75, 0.25, -1.0, 0.5, -1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 0.0, 1.0, 0.0, 0.25, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer104.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.setStencilReference(1);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder102.setPipeline(render_pipeline104);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder302.popDebugGroup();
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    query001.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3010.setStencilReference(1);
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device60.pushErrorScope("validation");
    
    
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    texture301.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
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
    const array9 = new Float32Array([-0.5, -0.75, -0.25, 0.5, 1.0, 0.25, 0.75, -0.25, -0.75, 0.75, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, 0.5, 0.5, 0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.25, -1.0, -0.75, -0.5, -1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.5, 0.5, -0.5, 0.5, 0.0, 0.5, 0.0, -0.25, 0.0, 0.0, -1.0, 0.5, -1.0, 1.0, 0.25, 0.75, 1.0, -0.75, -0.5, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, 0.75, 0.25, 0.75, -0.25, -0.75, -1.0, 0.0, -1.0, -1.0, 1.0, -0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.75, 0.5, -1.0, 0.0, -0.25, 1.0, 0.25, -1.0, -0.75, -0.25, -0.25, 0.25, -0.5, -0.75, -0.5, 0.5, 0.0, 0.5, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
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
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder100.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer100.destroy()
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout106,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_pass_encoder3010.setStencilReference(1);
    query100.destroy()
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    
    buffer002.destroy()
    
    render_pass_encoder3000.popDebugGroup();
    
    render_pass_encoder3000.executeBundles([])
    
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
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer300.destroy()
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group300);
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    
    buffer301.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture601.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.executeBundles([])
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder302.popDebugGroup();
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.dispatchWorkgroups(100);
    
    query101.destroy()
    
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline000);
    
    device30.pushErrorScope("out-of-memory");
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    query102.destroy()
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer005, 0);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    texture300.destroy();
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    query003.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
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
    buffer001.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("validation");
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_bundle_encoder000.setPipeline(render_pipeline001);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    texture304.destroy();
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    query003.destroy()
    
    command_encoder101.insertDebugMarker("mymarker");
    texture303.destroy();
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    compute_pass_encoder3020.end();
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder302.insertDebugMarker("mymarker");
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    device60.queue.writeBuffer(buffer602, 0, array6, 0, array6.length);
    texture602.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    device60.queue.writeBuffer(buffer602, 0, array3, 0, array3.length);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array10 = new Float32Array([-0.75, 1.0, -0.25, 0.75, 0.0, 0.25, 1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 1.0, -1.0, 0.0, -1.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, -0.25, -0.25, 0.0, -0.75, -0.75, 0.25, 0.25, -0.25, 0.25, 1.0, -1.0, 1.0, 0.25, -0.75, 0.5, 0.5, 0.5, 0.75, 0.0, -1.0, 0.0, 1.0, 1.0, 0.75, -1.0, 0.75, -0.75, -0.75, 0.0, 0.0, -1.0, 0.5, 0.0, 1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, -1.0, 0.0, -0.75, -1.0, -0.5, -0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 0.0, -0.25, 1.0, -0.25, -0.25, -1.0, 0.0, -1.0, -1.0, -1.0, 0.5, 0.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, -0.75, 0.75, -1.0, 1.0, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_pass_encoder3000.executeBundles([])
    command_encoder306.pushDebugGroup("mygroupmarker")
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder3000.setStencilReference(1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder102.popDebugGroup();
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline1010);
    query000.destroy()
    buffer008.destroy()
    buffer105.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array11 = new Float32Array([0.25, 0.0, -0.75, -0.5, -0.25, 1.0, -1.0, -0.75, 1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.75, 0.75, 0.25, -0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 0.25, 0.75, -0.25, -1.0, 0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.25, 1.0, 0.5, -1.0, -0.25, 0.75, -0.5, 0.0, 1.0, -1.0, 0.0, 0.5, 0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 1.0, 0.25, -0.5, -1.0, -1.0, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 0.75, 0.0, -0.75, 1.0, 0.25, -0.5, -0.75, 0.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, 1.0, 0.5, 0.75, 0.0, 0.0, ]);
    
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group003);
    compute_pass_encoder0040.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline1010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    const command_buffer100 = command_encoder100.finish();
    const command_buffer303 = command_encoder303.finish();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer005 = command_encoder005.finish();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer109, 0);
    device30.queue.submit([command_buffer303, ]);
    command_encoder306.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const command_buffer306 = command_encoder306.finish();
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer306, ]);
    compute_pass_encoder0010.end();
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1010.end();
    command_encoder101.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer101 = command_encoder101.finish();
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder0040.end();
    compute_pass_encoder0020.end();
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer004, ]);
}