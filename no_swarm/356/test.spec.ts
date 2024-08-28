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
    const array0 = new Float32Array([0.75, 0.5, 1.0, -0.5, 0.0, 0.75, 0.25, 0.0, 1.0, -0.5, -0.75, -0.5, -0.25, -0.75, -0.25, 0.25, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 0.0, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, -0.75, 0.75, 0.5, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 0.5, -0.5, -1.0, -1.0, 0.75, -0.25, -1.0, -0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -0.25, -1.0, -0.75, 0.0, 0.75, 1.0, 0.75, 0.5, -0.75, 0.75, -0.75, -0.75, 1.0, 0.0, 0.5, -1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -0.75, -0.75, -1.0, 1.0, 1.0, ]);
    const array1 = new Float32Array([-0.75, -0.75, 0.5, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, -0.75, 0.5, 0.75, -0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 0.0, 0.25, -0.25, -1.0, -0.5, 0.5, 0.75, 0.75, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, 0.25, 0.75, 0.5, 0.75, 0.25, 0.75, 0.0, 0.0, 1.0, 0.0, 0.25, 0.75, -1.0, 0.75, 0.5, 0.75, 0.25, 0.5, -0.5, -1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, 0.75, -0.25, 0.0, -1.0, -0.5, -0.5, -0.25, -0.75, -1.0, 0.5, 0.25, -0.75, -0.75, -0.25, -1.0, -0.25, 0.75, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, 1.0, -0.25, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, 0.0, -0.5, 0.75, ]);
    
    const array2 = new Float32Array([0.75, -0.25, 0.25, 0.75, -0.25, 0.5, 0.25, 0.75, -0.75, 0.75, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, -0.5, -1.0, -0.75, -0.5, 0.25, 0.25, 1.0, -0.75, -1.0, 1.0, -0.5, 0.75, 0.75, 0.25, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, 1.0, 0.25, 0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.75, 0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -0.5, 0.75, -0.75, 0.0, 0.75, -0.75, 0.5, -1.0, -0.25, -0.5, -0.5, 0.5, 0.5, 0.75, 0.5, 0.25, 0.5, 0.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.25, -0.25, -1.0, -1.0, 0.75, 1.0, 0.75, 1.0, 1.0, -0.25, -0.25, -0.5, 1.0, 0.25, -0.75, -1.0, 0.0, -0.75, 1.0, -0.25, -0.5, -0.5, 0.75, -0.25, ]);
    
    const array3 = new Float32Array([-1.0, 0.0, 0.0, 0.5, 0.75, -0.75, -0.75, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.75, -0.5, -0.75, 1.0, 0.25, 0.5, 0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.5, 0.0, 0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.75, -0.75, -1.0, 1.0, -0.5, 1.0, -0.75, 0.75, -0.25, 0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 0.25, -1.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.75, -1.0, 0.0, 0.0, 0.5, 0.5, -0.75, 0.0, 0.0, 0.75, 0.25, -0.25, -1.0, 0.75, 1.0, -0.5, 0.75, -0.75, 0.5, -0.75, 0.0, 0.25, 1.0, 0.0, -0.75, -0.25, 0.25, -0.75, -0.75, -1.0, 1.0, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 1.0, -1.0, -0.5, 0.5, -1.0, 0.25, 0.0, ]);
    const array4 = new Float32Array([0.5, 1.0, 0.25, -0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.5, 1.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -1.0, 0.75, 0.75, 0.75, -0.75, 0.25, -1.0, -1.0, -1.0, -1.0, 0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 1.0, 0.75, -0.5, -0.25, -0.25, -0.25, -0.75, 0.25, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, -1.0, 0.25, 0.5, -0.5, -0.25, 0.25, 0.25, 0.25, 1.0, 0.0, -0.25, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, -0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, -1.0, -1.0, 0.75, -1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.5, 0.5, 0.0, -0.75, -0.25, 0.5, -0.5, 0.75, ]);
    const array5 = new Float32Array([-1.0, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, 0.25, 0.25, -1.0, 0.75, 0.25, -0.75, 0.75, -0.25, 1.0, -1.0, -0.5, -0.5, 0.75, 1.0, 0.0, -0.75, 0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 1.0, 0.5, -0.75, -1.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.75, 0.25, -0.25, -0.5, -0.25, -0.25, 1.0, -1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, -0.5, -0.75, 0.5, -0.75, -0.75, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, -0.25, -0.5, 0.25, -0.5, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 1.0, 0.75, -1.0, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, 1.0, 1.0, -0.75, -0.25, 0.25, -1.0, -0.5, 0.75, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([-0.5, 0.75, -1.0, -0.25, 0.0, -0.5, -0.5, 0.0, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, 0.75, 1.0, 1.0, 0.0, -1.0, 0.75, 1.0, 0.25, -1.0, -0.5, 0.5, -0.75, -1.0, -1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 0.5, 0.0, -0.25, -0.5, 0.5, 0.75, 0.5, -0.75, 0.25, 0.5, -0.25, 0.75, -0.25, 1.0, -1.0, -1.0, -0.5, 1.0, -0.25, 0.75, -0.25, 0.0, 1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.75, 0.5, -0.75, -0.25, 0.5, -0.5, 1.0, 0.25, -0.5, -0.25, 0.75, 0.0, 1.0, -1.0, -1.0, -1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -1.0, 1.0, -0.75, -0.75, -0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    query001.destroy()
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
    device00.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const command_buffer100 = command_encoder100.finish();
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
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
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const array7 = new Float32Array([-0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -0.5, 0.75, -0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.75, -0.75, -0.25, -0.25, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, 0.75, 1.0, -0.5, -1.0, 0.25, 0.75, 0.25, -0.25, 0.75, -0.25, 0.0, 0.75, -1.0, -0.25, -0.5, 1.0, 0.5, -0.25, -0.75, -0.5, -0.5, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 0.75, 0.5, 1.0, -0.75, 0.5, 0.25, -0.5, -0.25, 0.75, -1.0, 0.0, 1.0, -1.0, -1.0, 0.0, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, -1.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.75, 0.5, 0.75, 1.0, 0.25, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, 1.0, -0.5, 0.5, -1.0, -0.5, 1.0, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder103.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder103.popDebugGroup()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer101 = command_encoder101.finish();
    buffer100.destroy()
    
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.submit([command_buffer101, ]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device10.queue.submit([command_buffer100, ]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
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
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const array8 = new Float32Array([-0.75, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, 1.0, 1.0, 1.0, -0.5, 0.0, -1.0, 1.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.25, -0.5, -1.0, 0.25, -0.5, 0.75, 0.0, -1.0, 0.25, -0.25, -0.75, -0.5, -0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -1.0, -1.0, -0.25, 0.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.0, 1.0, -0.5, 0.25, 1.0, 1.0, -0.25, -0.5, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, -0.5, 1.0, 0.25, 0.0, -0.75, 0.5, 1.0, -0.75, -0.5, 1.0, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.0, 0.5, -1.0, 1.0, 1.0, 0.5, 0.75, -0.25, 0.75, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, -0.75, ]);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder104.popDebugGroup()
    command_encoder103.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group100);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    
    
    buffer101.destroy()
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline100);
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group101);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array9 = new Float32Array([-1.0, -0.75, 0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 0.25, 0.5, -1.0, 0.75, -0.75, 0.5, -1.0, 0.25, 0.25, -0.25, -0.5, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, 0.5, 1.0, 0.5, 0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -0.5, 0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 0.25, -1.0, 0.75, 1.0, 0.25, -1.0, 0.25, -0.5, 0.75, 1.0, 0.0, -0.5, 0.75, 0.0, -0.25, -0.5, 1.0, -0.25, -0.75, 0.0, 0.5, 0.0, 0.25, 1.0, 0.75, -0.75, -1.0, 0.25, -1.0, -0.25, 1.0, -1.0, -0.25, -1.0, 1.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, 0.0, 1.0, 1.0, 0.25, 1.0, -1.0, ]);
    
    
    query100.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    compute_pass_encoder1040.dispatchWorkgroups(100);
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer106.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1030.setPipeline(render_pipeline101);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer109, 0);
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer109, 0, array5, 0, array5.length);
    
    render_pass_encoder1030.beginOcclusionQuery(0)
    compute_pass_encoder1020.end();
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer108,
        0
    )
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.queue.writeBuffer(buffer109, 0, array6, 0, array6.length);
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device50.pushErrorScope("validation");
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer108,
        0
    )
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const array10 = new Float32Array([0.25, -0.5, -0.75, 0.5, 0.75, 0.5, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, -0.25, 0.25, 0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.5, -0.5, -0.5, -0.5, 0.75, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, -0.75, 0.0, 0.75, -0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 0.0, -0.25, 0.25, -0.75, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.0, -0.75, 0.5, 1.0, 0.25, -1.0, -0.75, -0.5, -1.0, 0.5, 0.0, 0.75, -1.0, 0.25, -0.5, -1.0, -1.0, -0.5, 0.25, 0.0, -1.0, -0.25, 0.0, 0.75, -0.25, 0.5, -1.0, 0.0, 0.0, 1.0, -0.5, -0.5, 0.5, 0.0, 1.0, 0.0, -0.25, -0.25, 0.5, -0.75, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer109, 0, array3, 0, array3.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("internal");
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer109, 0, array9, 0, array9.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_pass_encoder1020.setPipeline(render_pipeline105);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer108.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    buffer102.destroy()
    
    
    texture102.destroy();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    command_encoder300.popDebugGroup()
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
    
    
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group102);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    buffer109.destroy()
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.popDebugGroup()
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
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    
    
    texture100.destroy();
    
    buffer105.destroy()
    
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer103.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer200.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1020.setStencilReference(1);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder101.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
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
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
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
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_bundle_encoder500.popDebugGroup();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    texture200.destroy();
    command_encoder300.insertDebugMarker("mymarker");
    buffer107.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query300.destroy()
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    buffer1010.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.popDebugGroup();
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group104);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture301.destroy();
    render_pass_encoder1030.popDebugGroup();
    
    command_encoder301.insertDebugMarker("mymarker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query100.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3000.popDebugGroup()
    
    
    
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer1012.destroy()
    
    const render_pipeline1017 = device10.createRenderPipeline({
        label: "render_pipeline1017",
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
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query500.destroy()
    buffer1011.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1050.setPipeline(render_pipeline1017);
    device20.pushErrorScope("validation");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
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
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder1050.popDebugGroup();
    
    const render_pipeline1018 = device10.createRenderPipeline({
        label: "render_pipeline1018",
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
    buffer104.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder1050.setStencilReference(1);
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline1019 = device10.createRenderPipeline({
        label: "render_pipeline1019",
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
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
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
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    
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
    render_pass_encoder1030.endOcclusionQuery()
    query300.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer1015.destroy()
    buffer1013.destroy()
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_pass_encoder1030.setStencilReference(1);
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_bundle_encoder100.drawIndirect(buffer109, 0);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
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
    
    render_pass_encoder1020.setVertexBuffer(0, buffer107);
    render_bundle_encoder301.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device60.pushErrorScope("out-of-memory");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder3010.executeBundles([])
    buffer205.destroy()
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder1030.setVertexBuffer(0, buffer107);
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1030.end();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer103 = command_encoder103.finish();
    const command_buffer200 = command_encoder200.finish();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline1017.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group105);
    compute_pass_encoder1040.end();
    const command_buffer104 = command_encoder104.finish();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder1050.setVertexBuffer(0, buffer107);
    render_pass_encoder1050.draw(3);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1050.end();
    command_encoder105.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
}