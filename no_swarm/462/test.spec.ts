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
    
    
    const array0 = new Float32Array([1.0, -0.75, 0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.5, 0.75, -0.75, -0.75, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 0.0, -1.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, 1.0, -0.25, -1.0, 1.0, 0.75, -0.5, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, 0.5, 1.0, -0.75, 1.0, 0.75, 1.0, 0.75, 0.0, -0.5, 0.5, -0.5, -1.0, 0.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.5, -0.25, 1.0, 0.25, 0.0, -1.0, 1.0, -0.25, 0.0, 1.0, -1.0, -0.5, 0.5, -0.75, 0.5, 0.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, 0.0, 0.0, 0.75, 0.75, -0.25, -0.75, 0.75, 0.75, 0.25, 0.25, ]);
    
    
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, -0.5, -0.5, -0.25, -1.0, -0.75, 0.25, 1.0, -0.5, -0.5, 0.25, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.75, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.25, 0.25, -0.75, -0.25, 0.5, 0.25, 0.75, 0.5, 1.0, 0.0, 0.75, 0.25, -0.5, 0.75, -0.75, -0.75, -0.25, -0.75, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.5, -0.5, 0.0, 0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 0.5, -0.75, 0.25, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.25, -0.5, 0.0, 0.0, -0.25, -0.75, 0.75, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, -1.0, 1.0, ]);
    
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([0.5, 0.25, 0.5, -1.0, 0.0, 1.0, -0.25, -1.0, -0.75, -0.25, 1.0, 0.75, -0.75, 1.0, -0.25, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, -0.75, 0.5, -0.75, 1.0, 0.75, 0.25, 0.5, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, -0.25, -0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 1.0, -0.5, 1.0, 1.0, -1.0, 0.25, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 0.0, 0.25, -0.25, 1.0, 1.0, 0.25, 1.0, -0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.75, 0.0, 0.0, 1.0, -1.0, -1.0, -0.75, -0.5, -0.5, 0.5, -0.75, -0.25, -0.5, 0.25, 0.0, -0.25, 1.0, ]);
    
    const array3 = new Float32Array([0.5, -1.0, -0.5, 0.75, -0.5, 0.0, -0.5, 0.5, 0.0, -1.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.5, 0.75, -1.0, 0.25, -0.75, -1.0, 0.75, 0.75, -1.0, 0.5, 0.25, -0.25, 0.0, 0.0, 1.0, -0.25, 0.0, -0.5, 1.0, 0.25, -1.0, 0.5, -0.75, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, -1.0, -1.0, 0.75, -1.0, -0.25, -0.5, 0.75, -1.0, -0.5, 1.0, 0.5, -0.75, 0.0, -1.0, 0.0, 1.0, 1.0, -0.75, 1.0, -0.5, 0.25, 0.5, -0.75, 1.0, -0.25, -0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, 0.75, 0.0, 0.25, 1.0, -0.25, 1.0, 1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array4 = new Float32Array([0.75, 0.5, -0.75, -1.0, 0.5, -0.5, 0.0, -0.5, 1.0, -1.0, 0.75, 0.25, 0.25, 1.0, -0.5, -0.75, 0.75, 1.0, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, -0.5, -0.5, -1.0, -0.25, -0.5, 0.75, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, 0.5, -0.75, 0.75, -0.25, 0.5, 0.75, 0.25, 0.0, 0.25, -0.5, -0.75, -0.5, 0.0, -0.5, 1.0, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, -0.75, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 1.0, 0.0, 1.0, -0.5, 0.5, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.0, -0.5, 1.0, 0.75, 0.75, 0.25, -1.0, 1.0, -0.75, 0.0, 0.25, -0.25, 1.0, -0.75, -0.5, 0.0, 0.25, 0.75, ]);
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array5 = new Float32Array([-1.0, -0.75, -1.0, 0.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.0, -0.5, -0.75, 0.5, -1.0, 0.0, -0.25, -0.5, -0.25, -0.5, -1.0, -1.0, -1.0, 0.75, 0.75, 0.0, -0.5, 1.0, -0.5, -0.75, 0.75, -0.75, -0.75, -0.5, -1.0, 0.75, -0.75, 0.75, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 1.0, 0.0, -0.25, 0.25, -0.75, -1.0, -0.25, 0.5, 0.25, 1.0, -1.0, 0.75, -0.25, 0.5, -1.0, -0.5, 0.5, 0.75, -0.75, 1.0, 0.0, 0.5, 0.5, 0.5, 1.0, -0.25, -0.5, 0.75, -0.5, 0.5, 0.25, -0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.75, 0.0, 0.25, 1.0, -0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.75, 0.0, -0.5, 0.25, 0.0, -1.0, -0.5, ]);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
    device20.destroy();
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    texture100.destroy();
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
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const array6 = new Float32Array([-0.5, -0.5, -0.25, 0.25, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, 0.75, -0.75, -0.5, 0.75, -0.25, 0.25, -0.5, 0.75, -1.0, -0.5, -1.0, 0.25, -0.75, -0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, -0.75, 0.5, -1.0, 0.75, -0.75, 0.0, 0.75, 0.25, -1.0, -1.0, -0.25, -1.0, 1.0, 0.25, 0.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.75, 0.5, 0.5, 0.5, 0.0, 0.75, -1.0, -0.75, 0.5, 0.25, 0.5, -1.0, 0.0, -0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, -0.75, 0.5, 1.0, 0.5, -0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, 1.0, 0.5, 0.0, 0.0, 0.0, 0.0, -0.25, -0.25, -0.75, -0.5, -0.75, ]);
    buffer100.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    compute_pass_encoder1000.popDebugGroup()
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.pushErrorScope("out-of-memory");
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer101.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.setPipeline(render_pipeline102);
    
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    query300.destroy()
    
    texture300.destroy();
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query101.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    command_encoder300.insertDebugMarker("mymarker");
    
    const array7 = new Float32Array([-0.75, -0.5, 0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 0.0, 0.0, -0.5, -0.5, -0.5, 1.0, 0.25, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, 0.25, -0.25, 0.25, -0.5, -0.25, -0.75, 0.5, -1.0, 0.0, 0.0, 0.75, 0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, 1.0, 0.5, -0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 0.5, 0.75, -1.0, 0.5, -1.0, 0.5, 0.5, 0.75, 0.5, 0.25, 1.0, 0.0, 1.0, 0.0, 0.25, 1.0, 0.75, 0.0, 0.75, 0.0, -0.75, -0.5, 0.0, 1.0, 1.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -0.75, -0.5, 0.5, -1.0, 0.25, -0.75, 1.0, ]);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    query102.destroy()
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    buffer300.destroy()
    texture102.destroy();
    
    
    query302.destroy()
    
    
    query300.destroy()
    
    
    
    query300.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query103.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query103.destroy()
    texture101.destroy();
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    query302.destroy()
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
        layout: render_pipeline102.getBindGroupLayout(0),
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
    device30.pushErrorScope("internal");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query301.destroy()
    device10.pushErrorScope("validation");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
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
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query302.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-1.0, 0.25, -0.25, 0.5, -1.0, 0.25, -0.25, 0.5, -0.75, -0.75, -0.5, 0.0, -0.25, -1.0, -0.75, -1.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, -0.5, 0.0, -0.5, -0.5, -0.25, 0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.0, -0.25, -0.25, 0.25, 0.75, -1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -0.25, -0.25, -1.0, 0.5, 1.0, 0.75, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 1.0, 0.25, -0.5, -0.5, -1.0, 0.25, -0.75, 0.5, 0.25, 1.0, 0.0, 0.25, 0.5, -0.75, 1.0, 0.0, -0.75, 0.5, -0.25, 1.0, -1.0, 0.25, -0.25, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, -0.75, -1.0, -1.0, -1.0, -0.75, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query304 = device30.createQuerySet({
        label: "query304",
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
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer103.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query304.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3000.setPipeline(render_pipeline300);
    buffer301.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    command_encoder102.pushDebugGroup("mygroupmarker")
    query101.destroy()
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer104.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    
    
    device10.queue.writeBuffer(buffer1010, 0, array7, 0, array7.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
    
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.popDebugGroup();
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer103,
        0
    )
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer1010.destroy()
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    query101.destroy()
    buffer105.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    buffer303.destroy()
    command_encoder102.insertDebugMarker("mymarker");
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    query303.destroy()
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    render_pass_encoder3000.popDebugGroup();
    
    
    render_bundle_encoder300.popDebugGroup();
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query104.destroy()
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    
    render_pass_encoder1030.setPipeline(render_pipeline104);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
    buffer302.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    buffer108.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const array9 = new Float32Array([0.75, -0.25, 0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, -0.25, -0.75, 0.5, 1.0, -1.0, 0.25, 1.0, 0.25, -0.25, 0.25, -1.0, 0.0, -1.0, 0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.25, -0.5, -0.25, -0.25, 0.5, 1.0, 0.5, 0.25, -0.5, -1.0, 0.25, -0.5, 0.5, 1.0, 1.0, 1.0, 1.0, -1.0, -0.25, 0.75, -1.0, 0.0, 0.5, -0.25, -1.0, 0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.75, -1.0, 1.0, 0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -0.5, 0.0, 0.0, -0.5, -0.75, -0.5, -1.0, 0.5, 1.0, 0.75, 0.5, -0.5, 0.5, -0.25, 0.75, -0.25, 0.25, -0.5, -0.25, 0.25, 0.0, -0.25, -0.75, -0.5, 0.0, 0.25, -1.0, ]);
    device50.destroy();
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group301);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query301.destroy()
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
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    buffer1012.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    query104.destroy()
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder101.popDebugGroup();
    
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler109 = device10.createSampler( { label: "sampler109" } );
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3000.setStencilReference(1);
    device60.destroy();
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const command_buffer700 = command_encoder700.finish();
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer1011.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler1010 = device10.createSampler( { label: "sampler1010" } );
    
    query100.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3010.setPipeline(render_pipeline302);
    texture103.destroy();
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    query305.destroy()
    
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    
    const array10 = new Float32Array([-1.0, 1.0, 1.0, 0.25, -1.0, -0.75, -0.75, -0.75, 0.5, 0.25, -0.25, 1.0, 0.5, -1.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.0, -0.25, 0.75, -0.25, -0.5, 1.0, 0.0, -0.5, 0.25, 0.25, 1.0, 1.0, 0.0, 0.75, 1.0, 0.5, 0.5, 1.0, 0.75, 1.0, 0.25, -0.75, 0.0, -0.5, -1.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.0, -0.5, -0.75, 0.5, 0.75, 0.5, 1.0, -0.25, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, -0.75, -0.25, 0.0, 0.0, -0.75, -0.25, 0.5, 1.0, -0.75, -0.75, -0.25, 1.0, -0.5, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, -0.25, 0.0, -0.25, -1.0, 1.0, -1.0, 0.5, -1.0, 1.0, 0.25, -0.25, 0.5, -0.5, 0.75, 0.0, -0.75, -1.0, ]);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query307.destroy()
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    query305.destroy()
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture104.destroy();
    
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.popDebugGroup()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    command_encoder102.popDebugGroup()
    const command_buffer100 = command_encoder100.finish();
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1021, 0);
    device10.queue.submit([command_buffer100, ]);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
}