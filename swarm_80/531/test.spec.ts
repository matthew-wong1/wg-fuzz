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
    const array0 = new Float32Array([-0.5, 1.0, 0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.75, 0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, -1.0, -0.75, -1.0, 0.75, 0.25, -1.0, -0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 0.25, 0.25, 0.5, 1.0, -0.25, -0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -1.0, -0.75, 1.0, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -0.75, -1.0, 0.5, 0.5, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.0, ]);
    const array1 = new Float32Array([0.75, 0.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, -0.5, 0.0, 0.5, 0.25, -0.75, -0.25, 0.25, -0.25, 1.0, 0.75, 0.5, -0.5, -0.5, 0.75, -0.25, 0.5, 0.75, 0.25, 0.0, 0.0, 0.25, -1.0, 0.0, 1.0, -0.5, 0.0, -0.5, 0.0, 0.0, -0.75, 1.0, -0.25, 0.25, -0.75, 0.0, -1.0, 1.0, 1.0, 0.75, -0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -1.0, 0.25, 0.25, -0.5, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.5, -0.75, 1.0, 0.5, -1.0, -1.0, -0.5, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, 0.25, -0.75, 0.25, -0.25, -0.25, -0.5, 0.5, 1.0, 1.0, 0.5, -1.0, 0.25, -0.5, 0.0, 0.5, 0.0, -0.75, 0.5, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array2 = new Float32Array([0.25, 0.25, 1.0, -0.25, 0.75, -1.0, -0.75, 0.75, 0.0, 0.5, -1.0, 0.5, -0.25, 0.0, 0.75, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 0.5, 1.0, 0.5, 0.0, 0.25, 1.0, -0.75, 0.25, -1.0, 1.0, -1.0, 0.5, 0.25, -0.5, 1.0, 0.0, -0.5, 0.25, 0.75, 1.0, -0.25, -1.0, -1.0, 1.0, 0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -0.25, 0.5, 0.5, 0.75, -0.5, 0.5, -1.0, 0.0, 1.0, -0.75, 0.75, 0.25, 0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 0.0, -0.5, -1.0, -0.5, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, -0.25, 0.75, 0.5, 1.0, 0.5, -0.25, 0.0, -0.75, 1.0, -1.0, -0.75, -0.75, 0.25, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const array3 = new Float32Array([1.0, 0.0, 1.0, 0.0, -1.0, 0.5, 0.25, 0.0, 1.0, -0.5, 0.25, 0.0, 0.5, 0.75, 0.25, 0.75, -1.0, -0.75, -0.5, -0.5, 0.0, 1.0, 0.5, 0.75, 0.75, 0.75, -0.25, -1.0, 1.0, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, 1.0, 0.25, 0.25, 0.0, 0.75, 0.75, -0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.5, 0.25, 0.5, -0.5, -1.0, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, 1.0, 0.75, -0.25, 0.25, -0.5, 1.0, -0.25, 0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.75, 0.0, -0.5, -0.75, -0.25, 0.5, 0.25, 0.5, 1.0, -0.75, -1.0, 0.75, -0.5, 1.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.5, 1.0, 0.0, -0.25, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.75, 0.25, 0.25, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, 0.0, 0.75, -0.5, 0.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.5, -1.0, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, 0.75, -0.75, -0.75, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.5, -0.5, -0.25, 0.0, -1.0, -0.75, -1.0, 0.75, 0.0, -0.75, 0.25, -1.0, -0.75, 0.5, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, 0.5, -1.0, -0.75, -0.5, -0.75, -0.25, -0.25, 0.75, 0.0, -1.0, -0.75, -0.75, -0.75, 0.0, -0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 0.25, 0.5, 0.0, 0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -1.0, 1.0, -1.0, 0.25, 0.0, 0.25, -0.75, -1.0, 0.0, 1.0, 0.0, -0.5, 0.0, 0.75, ]);
    const array5 = new Float32Array([0.5, -1.0, 0.0, -0.5, -0.25, 0.5, -1.0, 1.0, 0.0, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 0.5, -0.25, -1.0, -0.25, -1.0, 1.0, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, -0.5, -0.5, -0.75, -0.5, 0.0, 0.75, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, 0.75, 0.0, 0.75, 1.0, 0.25, 0.25, 0.75, -1.0, -1.0, 0.25, -0.25, -0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.5, -0.75, -0.5, -0.75, -0.75, 0.5, 1.0, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, 0.75, -0.25, 0.5, 0.0, 0.75, 1.0, 1.0, 0.0, ]);
    
    
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const array6 = new Float32Array([0.25, 0.5, 1.0, 0.75, 0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.75, 1.0, 0.75, 0.0, 0.0, -0.25, 0.25, 0.25, -0.25, -0.75, -0.25, 0.5, 1.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.75, -0.75, -0.5, 0.75, -1.0, 0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, -0.5, 0.75, 0.0, 1.0, -0.5, -1.0, -1.0, 0.0, 1.0, -0.75, 1.0, 0.75, 0.25, 0.75, 1.0, -0.25, -1.0, 0.75, 0.0, 0.0, 0.75, -0.75, -0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.75, 0.25, 0.5, 0.0, 0.0, ]);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    command_encoder100.insertDebugMarker("mymarker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
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
    query100.destroy()
    device10.pushErrorScope("internal");
    
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    query100.destroy()
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    compute_pass_encoder1000.popDebugGroup()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([1.0, 1.0, 0.75, 0.0, 0.25, 1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, -0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -1.0, -0.25, -1.0, 0.5, -0.5, 0.5, -0.5, -0.25, -0.75, 0.25, -0.25, -0.75, -1.0, -0.75, -0.25, 0.25, 0.5, 0.0, -0.5, 0.75, 0.0, 0.0, -1.0, 0.75, 1.0, 1.0, -0.25, 0.0, -0.25, -0.75, 1.0, 0.5, 1.0, 0.0, -0.75, 0.0, 0.75, 1.0, -0.25, -0.25, -0.25, -0.75, 0.25, -1.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.5, -0.75, 0.5, 0.75, 1.0, -0.75, -0.25, -1.0, 0.5, -1.0, -0.75, -1.0, 1.0, 0.25, 0.0, 0.75, -1.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.5, 0.25, -0.75, -0.25, ]);
    device10.pushErrorScope("out-of-memory");
    device40.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const array8 = new Float32Array([0.5, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.25, -0.5, 0.25, 1.0, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, -1.0, 1.0, 1.0, -0.5, 1.0, 0.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.75, -1.0, -0.75, -1.0, -0.5, 0.75, 0.0, -1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 0.75, -0.25, 0.5, -0.5, 0.75, -0.5, -0.75, -0.5, 0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.25, 0.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.5, -0.5, -0.25, -0.5, 0.0, 0.5, 1.0, 0.0, 1.0, -0.75, 0.0, 0.75, 0.75, 0.75, -1.0, -0.75, 0.5, -1.0, -0.75, -0.5, -1.0, -0.25, 0.5, 0.25, -1.0, -0.25, ]);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    command_encoder300.insertDebugMarker("mymarker");
    query100.destroy()
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    command_encoder300.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const array9 = new Float32Array([0.0, -1.0, -0.5, -0.25, 0.5, -0.75, 0.5, 0.5, 0.25, -0.5, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, 0.5, -0.5, -1.0, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, 0.0, -0.5, -1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.75, -0.75, 0.25, -0.5, -1.0, 0.25, 0.25, 0.0, -0.5, 0.25, 0.5, -0.75, -0.25, 1.0, -0.5, 0.25, 0.0, 0.0, -0.5, 0.0, -0.5, -0.5, 1.0, 0.75, -1.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 0.25, -1.0, -1.0, 0.0, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, -0.25, -0.75, -1.0, -0.5, 0.0, -1.0, 1.0, 0.0, -0.75, 0.75, -0.5, 0.5, -0.25, 1.0, 0.25, 0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 0.25, -0.25, -0.5, -0.25, ]);
    
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
    device30.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder400.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
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
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    device10.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const array10 = new Float32Array([-1.0, -0.25, 1.0, -0.5, 0.25, -0.75, -1.0, 0.5, -0.75, 0.75, 0.75, 0.5, 0.0, 0.75, 0.25, 0.25, 0.0, 0.25, 0.25, 0.5, -1.0, 0.5, -1.0, -0.25, 0.5, -0.75, 0.0, 0.75, -0.5, -0.25, -0.75, 0.5, -1.0, 0.25, -0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.5, -1.0, 0.0, -0.75, 0.75, -0.25, -0.5, 0.25, -0.5, -1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, -0.5, -0.25, -0.25, -0.25, 0.5, 0.75, 0.5, -1.0, 0.0, -0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, 0.0, ]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device30.queue.writeBuffer(buffer302, 0, array10, 0, array10.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    query400.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    command_encoder101.clearBuffer(buffer103);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.clearBuffer(buffer101);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    query400.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.clearBuffer(buffer300);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    command_encoder101.insertDebugMarker("mymarker");
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
    device40.pushErrorScope("validation");
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    device40.queue.writeTexture({ texture: texture400 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer403, 0, array9, 0, array9.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder301.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer103, 0, array8, 0, array8.length);
    
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    command_encoder101.clearBuffer(buffer103);
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    command_encoder101.clearBuffer(buffer101);
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.popDebugGroup();
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    command_encoder300.insertDebugMarker("mymarker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer103, 0, array9, 0, array9.length);
    compute_pass_encoder1000.popDebugGroup()
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer103, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    query300.destroy()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.pushErrorScope("out-of-memory");
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array10, 0, array10.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3010.setStencilReference(1);
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer109, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer109, 0);
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
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
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder3010.popDebugGroup();
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer406, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer406, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, ]);
}