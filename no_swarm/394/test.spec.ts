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
    const array0 = new Float32Array([0.5, -1.0, 1.0, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.5, -0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.75, -0.25, 0.5, -0.25, -0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -0.25, 0.0, -0.5, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.0, -0.5, 0.75, 0.75, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, -0.75, 0.75, 0.25, -0.5, -0.25, -0.75, -1.0, 1.0, -0.5, -0.75, -0.5, 0.0, 0.0, -0.5, -0.25, 0.0, 1.0, 1.0, 0.25, -1.0, -0.5, -0.75, -0.25, -0.5, 0.75, -1.0, 0.75, 0.75, 0.5, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.75, 0.25, 0.75, 0.5, -0.75, 0.25, ]);
    const array1 = new Float32Array([-0.25, 0.0, -0.25, 0.0, -0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, 1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 1.0, 0.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.25, 1.0, 0.75, 0.0, -0.75, 0.25, 0.75, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, -0.5, 1.0, 0.75, -1.0, 0.0, 1.0, -0.75, -0.75, -0.5, 0.0, -1.0, 0.5, -0.5, 0.5, 1.0, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, 0.75, 0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 0.75, 0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 0.0, -0.25, -0.25, -0.25, 1.0, -0.5, 1.0, 1.0, -0.75, 1.0, -0.5, ]);
    
    const array2 = new Float32Array([-0.75, 0.75, 0.5, 0.5, 0.0, 0.0, -0.5, -0.5, 1.0, -1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.25, 0.75, 0.0, -0.5, 1.0, 0.0, -0.75, 0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 0.0, 0.0, 0.0, -1.0, 0.0, 0.25, 1.0, -0.25, 0.5, -0.25, -0.5, 0.25, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -0.5, -0.5, -0.5, -0.5, 0.75, -0.5, -0.25, -0.25, 1.0, 1.0, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, 0.5, 0.75, 0.0, 0.25, 0.75, 0.0, -0.5, -0.75, 0.0, -0.25, -0.75, -0.5, -0.5, -0.25, 0.5, -0.25, ]);
    
    
    const array3 = new Float32Array([0.0, 0.75, -1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.0, -1.0, 1.0, 0.5, 0.0, 0.75, 0.25, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, -0.25, 0.5, 0.0, 0.5, 1.0, 0.75, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, -0.25, 0.75, -0.25, 0.25, 0.0, -0.5, 1.0, -0.5, 0.5, -1.0, -0.5, 0.75, 0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 0.0, -0.75, 0.75, -0.25, -1.0, -1.0, -0.5, -0.75, -1.0, 0.75, -0.5, -0.25, 0.0, 1.0, 1.0, -0.5, -0.75, 1.0, 0.0, -0.5, 0.75, 0.75, 0.25, -1.0, 0.5, -0.5, 0.75, 0.5, -0.5, 0.0, 0.75, 1.0, 0.5, 0.0, -0.5, 1.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array4 = new Float32Array([-1.0, 1.0, -0.5, 0.5, 1.0, 0.75, -1.0, 0.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, 0.75, -0.5, 1.0, 0.0, 0.75, -0.75, 1.0, 1.0, -0.5, -1.0, 0.5, -1.0, -1.0, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, -0.25, -0.5, -0.5, 0.25, 0.75, 1.0, -0.75, 0.0, 1.0, -0.5, 0.25, 0.5, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.0, -0.5, 0.25, -0.25, -0.75, -1.0, 0.5, -0.5, 0.0, -0.5, -0.5, -0.75, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.25, -0.25, 1.0, 0.5, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, -0.75, -1.0, 0.5, 0.75, 0.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    device20.pushErrorScope("internal");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const array5 = new Float32Array([1.0, -0.75, 1.0, 1.0, -1.0, 0.75, 0.5, 1.0, 0.5, 0.0, -1.0, 1.0, 0.25, 0.75, 0.0, -0.5, 0.0, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 0.25, 0.25, 1.0, -0.5, 0.25, -1.0, -0.5, 0.0, 0.0, 1.0, -0.75, 0.25, -0.25, 1.0, 0.75, 0.75, -0.25, 0.0, -0.75, -0.25, -0.5, -0.5, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, -0.25, 0.0, -0.5, 0.75, 0.25, 0.75, -0.75, 0.75, -1.0, 0.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.0, -0.25, -0.25, 0.0, -0.25, 0.75, -0.25, 0.25, 0.5, 0.0, -0.5, 1.0, -0.5, -0.75, 0.25, 0.5, -0.75, 1.0, -1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.75, 0.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer100 = command_encoder100.finish();
    
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
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture100.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    command_encoder101.insertDebugMarker("mymarker");
    const array6 = new Float32Array([1.0, -1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 1.0, 0.25, 0.5, 0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 1.0, -0.5, -0.25, 0.25, -1.0, -0.25, -0.75, 0.0, 0.75, -0.75, -0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 1.0, 0.5, -0.25, -0.75, -1.0, 0.75, -0.5, 0.0, -0.75, -0.5, -0.75, -0.5, 1.0, -0.75, -0.25, -0.25, 0.0, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, -0.25, 1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 0.5, 0.0, -0.25, -1.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.75, 0.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, -1.0, 1.0, -0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.5, -1.0, 0.5, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query101.destroy()
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device20.pushErrorScope("validation");
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.pushErrorScope("internal");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
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
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    device10.pushErrorScope("internal");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer302.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    buffer301.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture101.destroy();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    texture300.destroy();
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
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    
    
    
    query100.destroy()
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer200.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    device30.pushErrorScope("validation");
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    query100.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    query102.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    query200.destroy()
    const array7 = new Float32Array([0.5, -0.25, -0.5, 0.5, -0.25, 0.5, -1.0, -1.0, -0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -0.5, 0.25, 0.5, 0.25, 1.0, -0.5, -0.5, -1.0, -0.75, 0.0, 0.25, 0.0, -1.0, 0.5, -0.75, 0.25, -0.25, -0.25, 0.25, -1.0, -0.5, -0.75, 0.5, -0.75, 0.0, -1.0, -0.25, -0.75, -1.0, -0.5, 0.25, -1.0, 1.0, -0.75, 0.25, -1.0, -1.0, 1.0, -1.0, -0.25, -0.5, -0.5, 0.5, 0.5, 0.0, 0.25, -0.5, -0.5, -0.5, 1.0, -0.75, -0.25, 0.25, 0.5, -1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.75, 0.25, 0.5, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.25, -0.25, 0.25, 0.5, 0.25, -0.5, 0.0, ]);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture201.destroy();
    query100.destroy()
    
    query202.destroy()
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query103.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query102.destroy()
    query100.destroy()
    
    query104.destroy()
    
    query201.destroy()
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query201
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    query202.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer101.destroy()
    
    texture301.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    texture200.destroy();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const array8 = new Float32Array([0.0, 0.25, -0.5, 0.5, -1.0, 0.5, -0.5, -1.0, 0.0, -0.5, -1.0, 0.25, -0.5, -0.75, -1.0, 1.0, -0.75, 1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -0.5, -1.0, 0.25, -0.5, 1.0, 0.5, 0.5, 0.5, 0.25, -0.75, 1.0, -0.5, -0.25, -0.5, -0.75, 0.25, -1.0, 0.75, 0.25, 1.0, -0.5, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, 0.75, 0.5, -0.25, -0.75, 0.0, 0.0, 0.75, 0.75, -0.75, 0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 0.5, 0.75, 0.0, 0.5, -1.0, 0.0, -1.0, -0.25, -0.25, 0.0, -0.75, -0.75, 0.5, 0.25, 0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.75, 1.0, -0.5, 0.5, 0.75, 0.25, 0.0, -1.0, 0.25, -1.0, -0.5, -1.0, 0.0, 0.25, -0.75, ]);
    query105.destroy()
    buffer300.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const array9 = new Float32Array([-0.75, -0.25, -0.5, 0.25, 0.25, 0.75, -0.75, -0.5, 0.75, -0.5, 0.5, -0.25, 0.25, 0.0, 0.25, 0.0, 0.75, 0.75, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.0, 0.5, -1.0, 0.5, 0.25, 1.0, -0.75, -0.5, -0.75, -0.5, -0.25, -1.0, 1.0, 0.25, -0.5, 0.5, -1.0, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, -1.0, 0.75, -1.0, -0.75, -0.25, -1.0, 0.5, -0.25, -1.0, -1.0, 1.0, 0.75, -0.75, -0.75, 0.0, 0.25, -0.5, -0.25, -0.75, -0.5, -0.25, -0.25, 0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
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
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    render_pass_encoder2010.executeBundles([])
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
        occlusionQuerySet: query105
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setPipeline(render_pipeline104);
    query200.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture202 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    texture104.destroy();
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    texture302.destroy();
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const array10 = new Float32Array([0.75, 1.0, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, -0.5, 1.0, 0.0, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.25, -0.75, 0.75, -0.25, 0.5, -1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.25, 0.25, -0.75, -0.75, 0.5, -0.25, -0.5, -0.25, -0.25, -0.75, -0.25, 0.25, -0.75, 0.75, 1.0, -1.0, -0.25, 0.0, 0.5, -1.0, 1.0, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, -0.25, 0.25, -0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.25, -1.0, -1.0, -0.5, 0.5, 0.75, -0.75, 0.75, 0.25, -0.25, 0.5, 0.75, 0.0, -1.0, -0.75, 0.0, 0.25, 1.0, ]);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2020.executeBundles([])
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    texture202.destroy();
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1020.setStencilReference(1);
    buffer202.destroy()
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    device10.pushErrorScope("internal");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    render_bundle_encoder302.popDebugGroup();
    buffer303.destroy()
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array11 = new Float32Array([0.75, 1.0, -0.5, 0.0, 0.0, 0.75, 1.0, 0.25, -0.75, -0.75, 0.5, -0.25, -0.75, 1.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.75, 1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, -1.0, 0.75, 1.0, 0.5, -0.25, 0.25, -0.75, -0.75, 0.75, -1.0, -0.25, 0.25, -0.5, -0.75, 0.25, 0.0, 0.75, 0.75, 0.25, 0.75, -0.75, 0.0, 0.0, -0.25, -0.25, 0.5, -1.0, -0.5, 0.25, 0.25, -0.5, 0.25, 0.5, 0.0, 0.25, 0.5, -0.5, -1.0, 0.0, -1.0, 0.75, 0.75, 0.75, -0.25, 0.25, -1.0, -0.5, 1.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 0.5, 0.75, 0.0, -0.5, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    buffer205.destroy()
    
    texture106.destroy();
    query106.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder302.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query103.destroy()
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer103 = command_encoder103.finish();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    
    
    buffer102.destroy()
    
    const array12 = new Float32Array([1.0, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, 1.0, -0.5, 0.75, -0.75, -0.75, 0.25, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, -0.25, -0.25, -1.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.75, -0.25, -0.75, 0.5, 1.0, -1.0, 1.0, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, -0.25, 0.5, 0.5, -0.75, 0.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.75, 0.0, -0.5, -0.25, 0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, 0.25, 0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, 0.0, -0.25, -0.25, -1.0, 0.5, 0.75, 0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, 0.5, -0.25, ]);
    
    buffer103.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    texture102.destroy();
    render_pass_encoder2010.popDebugGroup();
    query204.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device10.queue.submit([command_buffer103, ]);
    
    query203.destroy()
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    texture105.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    query202.destroy()
    render_pass_encoder2010.popDebugGroup();
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.executeBundles([])
    
    render_pass_encoder2010.setStencilReference(1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.setPipeline(render_pipeline201);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    const command_buffer400 = command_encoder400.finish();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.end();
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    const command_buffer200 = command_encoder200.finish();
}